// ---fake_divergence -g 5,75,1 -l 5,3,1
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


// Seed: 44

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint16_t  f0;
   uint64_t  f1;
   int32_t  f2;
   int8_t  f3;
   uint64_t  f4;
   int32_t  f5;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    volatile int32_t g_4;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8;
    VECTOR(int32_t, 16) g_9;
    int32_t g_14;
    volatile int32_t g_25;
    int32_t g_26[2];
    VECTOR(int8_t, 2) g_60;
    uint16_t g_66;
    int32_t *g_71;
    int32_t **g_70;
    int32_t g_75;
    uint32_t g_95;
    int64_t g_97;
    int8_t g_101;
    int32_t g_111;
    struct S0 g_115;
    struct S0 * volatile g_116;
    volatile uint64_t g_127;
    volatile uint32_t g_131[2];
    int32_t * volatile g_139;
    uint64_t g_145[10];
    int8_t g_165[2];
    int64_t g_192;
    volatile int16_t g_195;
    int32_t *g_221;
    uint16_t g_227;
    struct S0 g_282;
    int16_t *g_305;
    volatile VECTOR(uint8_t, 16) g_307;
    uint32_t g_330[5];
    volatile struct S0 g_346[5];
    VECTOR(int8_t, 16) g_348;
    volatile VECTOR(int32_t, 2) g_350;
    volatile struct S0 *g_352[2][10];
    struct S0 *g_355;
    struct S0 ** volatile g_354[9][8];
    struct S0 g_357[4][5];
    VECTOR(int16_t, 8) g_358;
    volatile VECTOR(uint16_t, 4) g_359;
    VECTOR(uint64_t, 4) g_365;
    VECTOR(int32_t, 16) g_369;
    VECTOR(uint16_t, 2) g_370;
    VECTOR(int8_t, 2) g_373;
    VECTOR(uint32_t, 4) g_383;
    volatile struct S0 g_425[3];
    VECTOR(uint16_t, 4) g_437;
    struct S0 g_439;
    volatile VECTOR(uint8_t, 4) g_440;
    VECTOR(uint64_t, 8) g_466;
    VECTOR(uint64_t, 8) g_468;
    VECTOR(uint64_t, 2) g_469;
    uint8_t g_473;
    VECTOR(int8_t, 4) g_506;
    volatile struct S0 g_522;
    int8_t *g_539;
    int8_t **g_538[6][10];
    int8_t *** volatile g_537;
    int64_t g_555;
    VECTOR(uint16_t, 8) g_592;
    VECTOR(int64_t, 16) g_614;
    volatile VECTOR(int64_t, 8) g_616;
    volatile VECTOR(int8_t, 4) g_623;
    volatile uint32_t g_646;
    volatile uint32_t *g_645;
    volatile uint32_t **g_644;
    uint32_t *g_651;
    uint32_t **g_650;
    uint32_t **g_652;
    VECTOR(int32_t, 16) g_660;
    VECTOR(uint8_t, 4) g_670;
    VECTOR(int8_t, 16) g_671;
    uint16_t g_679;
    uint32_t ***g_681;
    volatile VECTOR(int32_t, 16) g_706;
    VECTOR(int32_t, 2) g_707;
    volatile VECTOR(int32_t, 2) g_708;
    VECTOR(int64_t, 16) g_716;
    VECTOR(uint32_t, 16) g_727;
    uint8_t g_741;
    VECTOR(uint16_t, 8) g_745;
    volatile VECTOR(uint16_t, 4) g_746;
    volatile VECTOR(uint16_t, 16) g_747;
    VECTOR(uint16_t, 4) g_748;
    volatile VECTOR(uint16_t, 16) g_749;
    volatile VECTOR(uint16_t, 4) g_750;
    volatile VECTOR(int16_t, 8) g_752;
    VECTOR(int16_t, 2) g_753;
    volatile int32_t * volatile g_768;
    volatile int32_t * volatile *g_767;
    volatile int32_t * volatile * volatile * volatile g_766;
    volatile int32_t * volatile * volatile * volatile *g_765;
    volatile VECTOR(int64_t, 16) g_792;
    int32_t g_805;
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
int64_t  func_1(struct S1 * p_809);
int32_t ** func_30(int32_t * p_31, struct S1 * p_809);
int32_t * func_32(uint64_t  p_33, int64_t  p_34, uint64_t  p_35, struct S1 * p_809);
struct S0  func_38(int32_t ** p_39, struct S1 * p_809);
int32_t ** func_40(uint16_t  p_41, int32_t * p_42, uint64_t  p_43, int32_t * p_44, struct S1 * p_809);
int32_t * func_45(int32_t * p_46, uint32_t  p_47, struct S1 * p_809);
int16_t  func_52(int32_t  p_53, int32_t * p_54, uint16_t  p_55, int32_t  p_56, uint64_t  p_57, struct S1 * p_809);
uint32_t  func_61(int64_t  p_62, int32_t ** p_63, struct S1 * p_809);
int32_t ** func_68(int32_t ** p_69, struct S1 * p_809);
struct S0  func_80(int32_t ** p_81, uint64_t  p_82, struct S1 * p_809);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_809->g_9 p_809->g_75 p_809->g_95 p_809->g_60 p_809->g_101 p_809->g_70 p_809->g_66 p_809->g_111 p_809->g_115 p_809->g_116 p_809->g_127 p_809->g_131 p_809->g_14 p_809->g_139 p_809->g_145 p_809->g_71 p_809->g_26 p_809->g_165 p_809->g_97 p_809->g_221 p_809->g_227 p_809->g_6 p_809->g_282 p_809->g_425 p_809->g_348 p_809->g_5 p_809->g_439 p_809->g_369 p_809->g_346.f2 p_809->g_370 p_809->g_473 p_809->g_539 p_809->g_466 p_809->g_592 p_809->g_330 p_809->g_644 p_809->g_357.f1 p_809->g_383 p_809->g_346.f3 p_809->g_706 p_809->g_707 p_809->g_708 p_809->g_716 p_809->g_727 p_809->g_192 p_809->g_437 p_809->g_357.f5 p_809->g_2 p_809->g_555 p_809->g_745 p_809->g_746 p_809->g_747 p_809->g_748 p_809->g_749 p_809->g_750 p_809->g_752 p_809->g_753 p_809->g_537 p_809->g_538 p_809->g_681 p_809->g_650 p_809->g_651 p_809->g_765 p_809->g_767 p_809->g_768 p_809->g_766 p_809->g_792 p_809->g_357.f4 p_809->g_305 p_809->g_805
 * writes: p_809->g_9 p_809->g_70 p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_111 p_809->g_115 p_809->g_127 p_809->g_131 p_809->g_145 p_809->g_165 p_809->g_71 p_809->g_227 p_809->g_221 p_809->g_439.f4 p_809->g_466 p_809->g_650 p_809->g_652 p_809->g_679 p_809->g_681 p_809->g_282.f2 p_809->g_357.f5 p_809->g_330 p_809->g_192 p_809->g_370 p_809->g_555 p_809->g_358 p_809->g_741 p_809->g_768 p_809->g_357.f4
 */
int64_t  func_1(struct S1 * p_809)
{ /* block id: 4 */
    int32_t l_12 = 0L;
    int32_t l_15 = (-1L);
    int32_t l_20 = 0x0BD85027L;
    int32_t l_22 = 7L;
    int32_t l_23 = 4L;
    int32_t l_24 = 0x74864854L;
    uint8_t l_27 = 0xE2L;
    VECTOR(int32_t, 16) l_624 = (VECTOR(int32_t, 16))(0x5151538EL, (VECTOR(int32_t, 4))(0x5151538EL, (VECTOR(int32_t, 2))(0x5151538EL, 0x5C2DDAC8L), 0x5C2DDAC8L), 0x5C2DDAC8L, 0x5151538EL, 0x5C2DDAC8L, (VECTOR(int32_t, 2))(0x5151538EL, 0x5C2DDAC8L), (VECTOR(int32_t, 2))(0x5151538EL, 0x5C2DDAC8L), 0x5151538EL, 0x5C2DDAC8L, 0x5151538EL, 0x5C2DDAC8L);
    VECTOR(int16_t, 4) l_751 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L));
    uint32_t ***l_756 = &p_809->g_652;
    int32_t ***l_780[10] = {&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70,&p_809->g_70};
    int32_t ****l_779 = &l_780[7];
    uint16_t *l_781[6][1][8] = {{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}},{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}},{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}},{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}},{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}},{{(void*)0,&p_809->g_227,(void*)0,(void*)0,(void*)0,&p_809->g_227,(void*)0,(void*)0}}};
    int8_t **l_795 = &p_809->g_539;
    uint64_t *l_796 = &p_809->g_357[2][2].f4;
    int64_t *l_808 = &p_809->g_192;
    int i, j, k;
    for (p_809->g_9.sb = 0; (p_809->g_9.sb != (-10)); --p_809->g_9.sb)
    { /* block id: 7 */
        VECTOR(int32_t, 4) l_19 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-3L)), (-3L));
        VECTOR(uint64_t, 16) l_632 = (VECTOR(uint64_t, 16))(0xC1A3DC8BC0AF0BB6L, (VECTOR(uint64_t, 4))(0xC1A3DC8BC0AF0BB6L, (VECTOR(uint64_t, 2))(0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL), 0x7DCC3336CEA912FFL), 0x7DCC3336CEA912FFL, 0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL, (VECTOR(uint64_t, 2))(0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL), (VECTOR(uint64_t, 2))(0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL), 0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL, 0xC1A3DC8BC0AF0BB6L, 0x7DCC3336CEA912FFL);
        VECTOR(int8_t, 8) l_665 = (VECTOR(int8_t, 8))(0x53L, (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 0x4CL), 0x4CL), 0x4CL, 0x53L, 0x4CL);
        int8_t **l_674[8][2][1];
        uint32_t ***l_692[9] = {&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652,&p_809->g_652};
        VECTOR(int64_t, 2) l_696 = (VECTOR(int64_t, 2))(0x79B254838995D376L, 0x30347CBA72A96FEEL);
        VECTOR(int16_t, 2) l_715 = (VECTOR(int16_t, 2))((-1L), 4L);
        int32_t l_728 = (-2L);
        struct S0 **l_730 = &p_809->g_355;
        VECTOR(uint64_t, 8) l_742 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
        int32_t ***l_764[4];
        int32_t ****l_763 = &l_764[1];
        uint16_t *l_782 = &p_809->g_66;
        uint16_t *l_783 = &p_809->g_66;
        int i, j, k;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 1; k++)
                    l_674[i][j][k] = &p_809->g_539;
            }
        }
        for (i = 0; i < 4; i++)
            l_764[i] = &p_809->g_70;
        if (l_12)
        { /* block id: 8 */
            int32_t *l_13 = &p_809->g_14;
            int32_t *l_16 = &l_15;
            int32_t *l_17 = (void*)0;
            int32_t *l_18[2];
            int32_t l_21 = 0x36084EDCL;
            int32_t ***l_263 = &p_809->g_70;
            uint16_t *l_445[5][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint8_t l_446 = 255UL;
            int64_t *l_631[8] = {&p_809->g_192,&p_809->g_192,&p_809->g_192,&p_809->g_192,&p_809->g_192,&p_809->g_192,&p_809->g_192,&p_809->g_192};
            int i, j;
            for (i = 0; i < 2; i++)
                l_18[i] = &p_809->g_14;
            --l_27;
            (*l_263) = func_30(func_32(p_809->g_9.s0, (((safe_lshift_func_uint16_t_u_s(((FAKE_DIVERGE(p_809->global_2_offset, get_global_id(2), 10) || (func_38(((*l_263) = func_40(l_22, l_18[0], l_19.y, &p_809->g_14, p_809)), p_809) , ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_809->g_440.yz)), 252UL, ((VECTOR(uint8_t, 4))(0x16L, 1UL, 0xCDL, 250UL)), 0x9EL)).s1)) != (safe_lshift_func_int16_t_s_u(((l_446 = ((l_15 = ((safe_sub_func_uint16_t_u_u((((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x02D4L, 0x561FL)).yyxy)).ywyywxyz, (uint16_t)(p_809->g_365.w > 9L)))).s30, ((VECTOR(uint16_t, 2))(0UL))))).hi || FAKE_DIVERGE(p_809->global_0_offset, get_global_id(0), 10)), l_12)) , p_809->g_282.f1)) >= 1UL)) | (-7L)), 11))), p_809->g_369.s6)) == FAKE_DIVERGE(p_809->local_2_offset, get_local_id(2), 10)) | l_19.y), p_809->g_9.s3, p_809), p_809);
            p_809->g_221 = func_45(&l_15, (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(p_809->g_623.xzyy)).w, (((VECTOR(int16_t, 8))((((VECTOR(int32_t, 16))(l_624.s75d4dd7db41943e5)).sb , ((safe_lshift_func_int8_t_s_s(((((0x97L > (((p_809->g_614.s2 ^= (p_809->g_97 || (safe_sub_func_int8_t_s_s(((*p_809->g_539) = ((p_809->g_370.y = (l_19.z < (safe_mul_func_int8_t_s_s(1L, 0x1EL)))) ^ (p_809->g_365.x ^ 3L))), 0x60L)))) ^ p_809->g_365.z) && 0xD8205BB46A3EEEBBL)) && l_19.y) , p_809->g_614.sf) , (*p_809->g_539)), 7)) == l_632.s7)), ((VECTOR(int16_t, 4))(0L)), p_809->g_439.f5, 0x400DL, 1L)).s3 >= 9L))), p_809);
            return p_809->g_60.y;
        }
        else
        { /* block id: 257 */
            int32_t *l_633 = &p_809->g_357[2][2].f5;
            (*p_809->g_70) = l_633;
        }
        for (p_809->g_66 = 1; (p_809->g_66 > 24); p_809->g_66++)
        { /* block id: 262 */
            int8_t **l_675[7] = {&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539};
            int32_t l_676 = 0x483C4381L;
            uint32_t ***l_682 = &p_809->g_652;
            int32_t *l_689 = (void*)0;
            VECTOR(int8_t, 2) l_691 = (VECTOR(int8_t, 2))(0L, 0x55L);
            int i;
            for (p_809->g_439.f4 = (-5); (p_809->g_439.f4 >= 39); p_809->g_439.f4 = safe_add_func_int8_t_s_s(p_809->g_439.f4, 3))
            { /* block id: 265 */
                uint64_t *l_639 = (void*)0;
                uint32_t *l_649 = &p_809->g_330[3];
                uint32_t **l_648 = &l_649;
                uint32_t ***l_647[4] = {&l_648,&l_648,&l_648,&l_648};
                VECTOR(int32_t, 2) l_659 = (VECTOR(int32_t, 2))((-1L), 0x7CCD567DL);
                uint16_t *l_677 = (void*)0;
                uint16_t *l_678[1][4];
                uint32_t ****l_680 = (void*)0;
                struct S0 **l_732 = &p_809->g_355;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_678[i][j] = (void*)0;
                }
                (*p_809->g_70) = func_32(((safe_unary_minus_func_uint64_t_u((--p_809->g_466.s2))) || l_632.sb), p_809->g_5, (safe_mul_func_int16_t_s_s(((p_809->g_644 != (p_809->g_652 = (p_809->g_650 = (void*)0))) > ((safe_sub_func_int16_t_s_s((((l_632.s3 , (safe_sub_func_int64_t_s_s((((p_809->g_679 = (safe_rshift_func_int8_t_s_u((0x49020942L == ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(0x795B0AF3L, ((VECTOR(int32_t, 2))(l_659.yy)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))((-10L), 0x0279D3E8L, 0x483DE289L, 0x3D04BBD3L, ((VECTOR(int32_t, 2))(p_809->g_660.s84)), ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(1UL, 65534UL, GROUP_DIVERGE(2, 1), (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_665.s17)).lo, ((65535UL >= (safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(0x3FF7L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(0x983AL, 65527UL, 0UL, 0UL)))).hi)).xyyyyxyy)).s70)), (((VECTOR(uint8_t, 2))(p_809->g_670.yz)).lo && ((VECTOR(int8_t, 2))(p_809->g_671.sb2)).even), 1UL, 0x1617L, 1UL, 0UL)).s2, 11)) ^ l_19.z), (safe_sub_func_uint64_t_u_u(((l_24 = ((*p_809->g_539) = (l_674[2][0][0] != l_675[0]))) , GROUP_DIVERGE(1, 1)), 0x679BD0990BF20E14L))))) , l_676))), ((VECTOR(uint16_t, 2))(0xA0B8L)), 0x8BA8L, 65535UL)).s4, l_676)) , (-8L)), l_24, 0L, l_676, 0x6AD1F944L, 0L, 0x7409E265L, (-1L), 0x1175694BL, 0x2F079EF3L)).s22)), 0x2544A032L, (-7L), 0x50A790D9L)).s65, ((VECTOR(int32_t, 2))(6L)), ((VECTOR(int32_t, 2))((-2L)))))).even), p_809->g_357[2][2].f1))) != p_809->g_383.y) ^ l_676), (-7L)))) == 0x73D309EB500F6983L) && GROUP_DIVERGE(1, 1)), 1L)) & p_809->g_115.f1)), l_665.s6)), p_809);
                if (((p_809->g_681 = (void*)0) != l_682))
                { /* block id: 274 */
                    int64_t l_690 = 1L;
                    struct S0 **l_731 = (void*)0;
                    for (p_809->g_282.f2 = 0; (p_809->g_282.f2 < (-6)); p_809->g_282.f2--)
                    { /* block id: 277 */
                        uint32_t l_693 = 0x53EFEA06L;
                        int32_t l_703 = 0x13400090L;
                        int32_t l_729 = (-8L);
                        (**p_809->g_70) = ((VECTOR(int32_t, 4))(((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((void*)0 != l_689) != ((+(FAKE_DIVERGE(p_809->local_2_offset, get_local_id(2), 10) < 2UL)) == ((l_690 == (l_624.sc || ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 16))(l_691.xyyxxyxxxxxxxyxy)), (int8_t)(&p_809->g_644 != l_692[7]), (int8_t)((((void*)0 != (*p_809->g_70)) , l_693) & GROUP_DIVERGE(1, 1))))).s4e8e)), 3L, 0x1BL, 0x76L, 0x57L)).s7)) , p_809->g_346[0].f3))), 6)), l_659.x)) == p_809->g_466.s4), 0x39B7A6C1L, (-2L), 0x185031FBL)).w;
                        if (l_15)
                            break;
                        (*p_809->g_70) = func_32((safe_div_func_uint32_t_u_u(((((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(0x104D666A01C85F95L, 0x2F096CE789C5AFF3L)).xxyy, ((VECTOR(int64_t, 8))(l_696.xyyxyyxx)).hi))).y || ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL)).hi) , (safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_809->group_1_offset, get_group_id(1), 10), 0UL)), (--(**l_648)))), ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(p_809->g_706.sd6b418b9fd6b237f)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x738AC8DEL, 0x6CCE292FL)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(p_809->g_707.xyxx)).wzwzzxyw, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x0325B859L, 4L)))).xxyyxyxx))).s64)), ((VECTOR(int32_t, 2))(p_809->g_708.yx)).even, 0L, 0x4983E059L, (((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(1L, l_632.sa, 0x7761B97B0CF12100L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x6AE8A5964E862E6AL, (-1L))))), (safe_add_func_int64_t_s_s((l_27 >= 0x73L), ((VECTOR(uint64_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_715.yx)), 0L, (-1L))).w || p_809->g_127), ((VECTOR(uint64_t, 2))(0xDFDA7D74FDDE03E1L, 0xF2B7220D20798FCCL)), 0xEAD3E6433C8B7721L)).y)), (-1L), 0x606E8C68A1DB0B5AL)))), ((VECTOR(int64_t, 8))(p_809->g_716.se3725ab3))))).s2 ^ p_809->g_115.f5), (((((*p_809->g_71) = ((safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((p_809->g_370.y ^= (((safe_rshift_func_uint8_t_u_s(((p_809->g_192 ^= ((((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_809->g_727.s78c237e7)))).s5617257171231310)).s5d)).yyyxyxyxyxyyyyyx, ((VECTOR(uint32_t, 16))(0UL, (l_728 |= p_809->g_115.f5), l_659.x, 5UL, ((VECTOR(uint32_t, 2))(4UL)), 0xB100AA56L, FAKE_DIVERGE(p_809->local_0_offset, get_local_id(0), 10), FAKE_DIVERGE(p_809->global_0_offset, get_global_id(0), 10), ((VECTOR(uint32_t, 2))(8UL)), 0x7E4581EFL, 1UL, ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL)), ((VECTOR(uint32_t, 16))(0UL))))).sad46)).even, ((VECTOR(uint32_t, 2))(0xE610F502L))))).odd || 0x4681857AL) && l_690)) == p_809->g_14), 0)) , l_729) , GROUP_DIVERGE(2, 1))), p_809->g_439.f2)), 6)), 0L)), l_23)) || l_693)) & 9UL) & l_696.y) | p_809->g_369.sc))), 0x59D8L)) , l_730) != &p_809->g_352[0][5]), (-1L), ((VECTOR(int32_t, 2))((-1L))), 0x34938CA6L, ((VECTOR(int32_t, 4))(0x204AEA47L)))).s233c, (int32_t)(-7L), (int32_t)0L))), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 4))((-1L)))))))).lo)).s76, ((VECTOR(int32_t, 2))((-1L)))))).xxyxxyxyyxyxxyyx, ((VECTOR(int32_t, 16))((-1L)))))).sc))), (-7L))), l_690, p_809->g_437.w, p_809);
                        (**p_809->g_70) |= ((FAKE_DIVERGE(p_809->local_1_offset, get_local_id(1), 10) , l_731) == l_732);
                    }
                }
                else
                { /* block id: 288 */
                    (*p_809->g_71) = ((p_809->g_2 && ((void*)0 == &p_809->g_555)) && (l_23 = l_659.x));
                }
            }
            return l_691.x;
        }
        for (p_809->g_555 = 0; (p_809->g_555 != 19); p_809->g_555 = safe_add_func_int64_t_s_s(p_809->g_555, 1))
        { /* block id: 297 */
            int16_t l_735[5][5][8] = {{{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL}},{{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL}},{{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL}},{{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL}},{{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL},{0x3BF9L,3L,0x6CC3L,0x7B09L,4L,0x39E1L,(-1L),0x070AL}}};
            int16_t *l_738 = (void*)0;
            int16_t *l_739 = (void*)0;
            int16_t *l_740 = (void*)0;
            uint64_t *l_769 = (void*)0;
            uint64_t *l_770[3][8][7] = {{{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_809->g_145[1],&p_809->g_145[1],(void*)0,(void*)0,(void*)0,(void*)0}}};
            int i, j, k;
            l_23 ^= (+(l_728 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x28A300FAL, (-1L))).yxxxyyyx)).s51)).xxxy)).zwxzxyww)).s5));
            (**p_809->g_70) |= (((l_22 = FAKE_DIVERGE(p_809->group_1_offset, get_group_id(1), 10)) , p_809->g_330[2]) && (((p_809->g_358.s7 = l_735[3][2][5]) & (p_809->g_741 = (safe_lshift_func_uint8_t_u_s((l_735[3][2][5] > p_809->g_425[0].f1), 3)))) , (((VECTOR(uint64_t, 8))(l_742.s12352420)).s4 , 0UL)));
            if (l_735[2][4][0])
                break;
            (***p_809->g_765) = ((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 16))(p_809->g_745.s2206666735143340)).s8b, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_809->g_746.yxzxxwwywxzxyxyy)))))).s4792))).zzyxywyxxyywzwxz, ((VECTOR(uint16_t, 2))(p_809->g_747.sfe)).xyyxxxxyyxxyyyyy, ((VECTOR(uint16_t, 4))(p_809->g_748.xyxz)).ywyxzzzwyxywwyyz))))).s8750)).even))).xyxxxxyyyxxxyxyx)).odd, ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(FAKE_DIVERGE(p_809->global_1_offset, get_global_id(1), 10), ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(p_809->g_749.se7d3b6dfdccb7f90)).even, ((VECTOR(uint16_t, 4))(p_809->g_750.zwyw)).wwzwxxxw))), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(l_751.ywyw)).odd, ((VECTOR(int16_t, 8))(0x7AD1L, 0L, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(p_809->g_752.s2102760162267135)).s5d, ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_809->g_753.xxxyyxyy)))).even, (int16_t)(safe_rshift_func_int8_t_s_s((((***p_809->g_537) && (&p_809->g_652 == l_756)) < (safe_sub_func_int64_t_s_s(((&l_674[7][1][0] == (void*)0) && (safe_div_func_uint8_t_u_u(((((***p_809->g_681) ^ (safe_sub_func_int16_t_s_s((((p_809->g_145[0] = (l_763 != p_809->g_765)) | p_809->g_473) <= GROUP_DIVERGE(2, 1)), 0x658FL))) < (****l_763)) ^ 0x78177CD9L), (****l_763)))), l_624.sa))), l_23))))).odd))), 1L, ((VECTOR(int16_t, 2))(0x00F0L)), 0x05EBL)).s56))).xyxyxxyy)).s15, ((VECTOR(int16_t, 2))(0L))))).xxxy)), p_809->g_439.f4, 0xAD6EL, 0x468BL)).hi))).s5354202260451163, ((VECTOR(uint16_t, 16))(0x9B87L)), ((VECTOR(uint16_t, 16))(65535UL))))).odd, ((VECTOR(uint16_t, 8))(65530UL))))).s2376237312026337)).odd, ((VECTOR(uint16_t, 8))(0x621CL)))))))).s15)).xxxy)).wyxzyyxzxzyxwxwy, ((VECTOR(uint32_t, 16))(0xDC146ED6L))))).s1e49)).z, (**p_809->g_70))) , (*p_809->g_767));
        }
        (*p_809->g_139) = ((*p_809->g_71) = (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((((****l_763) | (&p_809->g_766 != l_779)) == ((((l_782 = l_781[5][0][3]) == l_783) == p_809->g_115.f2) > (safe_add_func_int16_t_s_s(0x60E8L, (safe_add_func_uint8_t_u_u(0UL, (safe_mul_func_int8_t_s_s((safe_add_func_uint8_t_u_u((((((VECTOR(int64_t, 4))(p_809->g_792.s9f60)).z > (safe_div_func_uint8_t_u_u((((l_795 != l_795) , 0x783295B8FE103544L) , p_809->g_66), (****l_763)))) && 5L) >= FAKE_DIVERGE(p_809->group_0_offset, get_group_id(0), 10)), p_809->g_165[0])), p_809->g_145[8])))))))) >= (-8L)), p_809->g_14, 65535UL, 0xBB37L, ((VECTOR(uint16_t, 4))(65533UL)), 65531UL, p_809->g_127, 0xC77FL, 65535UL, 0UL, 65535UL, 0x6519L, 1UL)).sa, 5L)), 7)), 10)), 0L)));
    }
    (***l_779) = func_32(((*l_796)++), p_809->g_792.s8, (0x5B1D8E88L && ((((l_796 == l_796) && (safe_add_func_uint64_t_u_u((l_781[5][0][3] != p_809->g_305), ((*l_808) &= ((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(p_809->g_473, p_809->g_805)), ((**l_795) = (((safe_sub_func_uint32_t_u_u(0xD9136E9DL, 0L)) != 3L) , (*p_809->g_539))))) || (-1L)))))) == p_809->g_357[2][2].f1) <= p_809->g_60.x)), p_809);
    return p_809->g_792.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_466 p_809->g_468 p_809->g_307 p_809->g_469 p_809->g_282.f5 p_809->g_346.f2 p_809->g_370 p_809->g_473 p_809->g_101 p_809->g_95 p_809->g_14 p_809->g_539 p_809->g_115.f3 p_809->g_537 p_809->g_538 p_809->g_592 p_809->g_145 p_809->g_330 p_809->g_614 p_809->g_97 p_809->g_616 p_809->g_383 p_809->g_139 p_809->g_26 p_809->g_369
 * writes: p_809->g_14 p_809->g_70 p_809->g_97 p_809->g_115.f2 p_809->g_115.f5
 */
int32_t ** func_30(int32_t * p_31, struct S1 * p_809)
{ /* block id: 176 */
    int32_t ***l_459[1][8][9] = {{{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_809->g_70,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t ****l_458 = &l_459[0][3][6];
    VECTOR(uint64_t, 4) l_467 = (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x78E9D8DC0A0023DBL), 0x78E9D8DC0A0023DBL);
    VECTOR(int32_t, 2) l_480 = (VECTOR(int32_t, 2))((-1L), (-1L));
    uint64_t *l_482 = &p_809->g_145[1];
    uint8_t l_494 = 0xAAL;
    VECTOR(uint64_t, 8) l_584 = (VECTOR(uint64_t, 8))(0x7FF71052814274D9L, (VECTOR(uint64_t, 4))(0x7FF71052814274D9L, (VECTOR(uint64_t, 2))(0x7FF71052814274D9L, 0xA7F56D5B8015D824L), 0xA7F56D5B8015D824L), 0xA7F56D5B8015D824L, 0x7FF71052814274D9L, 0xA7F56D5B8015D824L);
    VECTOR(uint64_t, 2) l_585 = (VECTOR(uint64_t, 2))(5UL, 0x99214D8211E40471L);
    int16_t l_594 = 0x320DL;
    int8_t l_599[7] = {(-1L),0x67L,(-1L),(-1L),0x67L,(-1L),(-1L)};
    VECTOR(int64_t, 16) l_617 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 8L), 8L), 8L, 1L, 8L, (VECTOR(int64_t, 2))(1L, 8L), (VECTOR(int64_t, 2))(1L, 8L), 1L, 8L, 1L, 8L);
    int i, j, k;
    if (((void*)0 != &p_809->g_139))
    { /* block id: 177 */
        VECTOR(int32_t, 4) l_463 = (VECTOR(int32_t, 4))(0x2F1370E1L, (VECTOR(int32_t, 2))(0x2F1370E1L, (-1L)), (-1L));
        uint8_t *l_472 = &p_809->g_473;
        int8_t *l_474[4];
        int64_t l_475 = 0x7A9C106E5E7271A2L;
        int32_t l_476 = 0x153B479FL;
        int i;
        for (i = 0; i < 4; i++)
            l_474[i] = &p_809->g_101;
        l_476 = (((safe_add_func_int32_t_s_s((((l_458 = (void*)0) == (void*)0) , (safe_unary_minus_func_int64_t_s(((~(((l_475 = (safe_div_func_int8_t_s_s((((VECTOR(int16_t, 2))(0x236AL, 6L)).odd | l_463.y), (safe_add_func_uint32_t_u_u((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 16))(p_809->g_466.s3407477167612023)).s39, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))(l_467.ywxwyzzx)), ((VECTOR(uint64_t, 2))(p_809->g_468.s52)).yyyxxxyx))).s74))))).yxxx)), GROUP_DIVERGE(2, 1), p_809->g_307.s5, 0x63DC20562A3BC412L, 0x6B5083C3E65C42B6L)).s04)), ((VECTOR(uint64_t, 8))(p_809->g_469.yxyxxyxy)).s37))).yyyyyxyxxyyxyyyx)).s1 || (((((l_463.x , l_463.w) < ((0L == (safe_sub_func_uint32_t_u_u(((void*)0 != l_472), GROUP_DIVERGE(0, 1)))) , l_463.z)) && p_809->g_282.f5) & l_463.y) & p_809->g_346[0].f2)), p_809->g_370.x))))) && p_809->g_473) && l_463.y)) != 0x6FA75744DADD26C4L)))), l_463.z)) <= p_809->g_101) & p_809->g_95);
    }
    else
    { /* block id: 181 */
        uint8_t l_513 = 0xFFL;
        int32_t **l_523 = &p_809->g_71;
        int32_t l_524 = 0x1B846716L;
        int32_t l_525 = 0x79E5F15BL;
        int32_t l_526[9][6][2] = {{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}},{{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L},{(-1L),0x25F98A76L}}};
        int8_t *l_536 = (void*)0;
        int8_t **l_535 = &l_536;
        uint32_t l_567 = 1UL;
        VECTOR(uint16_t, 4) l_579 = (VECTOR(uint16_t, 4))(0x426DL, (VECTOR(uint16_t, 2))(0x426DL, 0x6A7CL), 0x6A7CL);
        int32_t *****l_593[2][3][10] = {{{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458},{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458},{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458}},{{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458},{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458},{&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458,&l_458}}};
        int64_t *l_615 = &p_809->g_97;
        uint8_t l_618 = 255UL;
        int16_t l_619 = 0L;
        int32_t l_620 = 0L;
        int i, j, k;
        for (p_809->g_14 = (-13); (p_809->g_14 >= (-25)); p_809->g_14 = safe_sub_func_int64_t_s_s(p_809->g_14, 5))
        { /* block id: 184 */
            int8_t l_479 = (-6L);
            uint64_t *l_481 = (void*)0;
            uint64_t **l_483 = &l_482;
            uint32_t *l_486 = &p_809->g_330[3];
            uint32_t **l_487 = (void*)0;
            uint32_t **l_488 = &l_486;
            uint16_t *l_492 = &p_809->g_66;
            uint16_t *l_493[7] = {&p_809->g_227,&p_809->g_227,&p_809->g_227,&p_809->g_227,&p_809->g_227,&p_809->g_227,&p_809->g_227};
            int32_t l_498 = 1L;
            int32_t l_527 = 0x7250FC51L;
            int32_t l_528[3][1][1];
            uint32_t l_532 = 0x9E020927L;
            int32_t *l_544[1][8][7] = {{{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0},{&l_524,&p_809->g_439.f2,(void*)0,&p_809->g_282.f5,&l_525,&p_809->g_282.f5,(void*)0}}};
            uint32_t l_568 = 0x599F2F6EL;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_528[i][j][k] = 1L;
                }
            }
            l_479 ^= (-1L);
            p_809->g_70 = &p_31;
        }
        p_31 = (((safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((*p_809->g_539) == 0x33L), (((VECTOR(uint16_t, 4))(l_579.xyyy)).w >= (safe_sub_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((((VECTOR(uint64_t, 16))(0x35A66B2139EB6331L, 9UL, 18446744073709551615UL, 0x390690B03CA86C58L, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(0xBEABEF0DB3BD502FL, (&l_536 != (*p_809->g_537)), 18446744073709551615UL, 0x7862A466174766E9L)))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_584.s20)), ((VECTOR(uint64_t, 4))(l_585.yxxy)), 18446744073709551611UL, 6UL)))).s2 | p_809->g_466.s5), (safe_div_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_809->g_592.s42)).lo, FAKE_DIVERGE(p_809->group_1_offset, get_group_id(1), 10))) < 1L), ((((l_458 = &l_459[0][2][1]) == &l_459[0][7][4]) | ((*p_809->g_539) != l_594)) , p_809->g_466.s1))), p_809->g_592.s2)))), p_809->g_145[1]))))), (-1L))) >= 0x3CFD569EL) , (void*)0);
        l_620 = (p_809->g_115.f5 = (safe_div_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u(l_599[1], 5)) , (p_809->g_330[0] ^ (((VECTOR(int32_t, 4))((safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_u((&p_809->g_127 != (void*)0), (safe_mod_func_int16_t_s_s(0x3CC3L, (safe_add_func_int16_t_s_s(0x7C75L, ((safe_add_func_int64_t_s_s((safe_div_func_uint32_t_u_u(0x667E1405L, ((*p_809->g_139) = (((*l_615) &= ((VECTOR(int64_t, 16))(p_809->g_614.s84ac232febd23c63)).s9) || (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x30A0DD0C0A446466L, 0x46AD6DA8F0C9FC2DL)), (-4L), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_809->g_616.s04)))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-8L), (-1L))), ((VECTOR(int64_t, 2))(l_617.scd)), ((void*)0 == &p_31), p_809->g_383.y, 0x71A144D8A8EFF1A6L, 0x180DD0B37B986897L)).s64)), (-1L))).s7 <= l_618))))), p_809->g_26[1])) < l_619))))))) < p_809->g_614.s3), GROUP_DIVERGE(0, 1))), (-9L), 0x31491661L, 0x28C69798L)).z >= p_809->g_369.sc))), (*p_809->g_539))));
        return &p_809->g_221;
    }
    return &p_809->g_221;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_70 p_809->g_71 p_809->g_221
 * writes:
 */
int32_t * func_32(uint64_t  p_33, int64_t  p_34, uint64_t  p_35, struct S1 * p_809)
{ /* block id: 173 */
    int32_t *l_447 = &p_809->g_439.f2;
    int32_t *l_448 = (void*)0;
    int32_t *l_449 = (void*)0;
    int32_t l_450[8][6][5] = {{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}},{{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L},{0L,0x4D204F49L,0x2C576363L,0x01E34EDDL,0L}}};
    int32_t *l_451[10][9] = {{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_809->g_439.f2,&p_809->g_439.f5,&p_809->g_111,&p_809->g_439.f5,&p_809->g_439.f2,(void*)0,(void*)0}};
    int32_t l_452 = 0x4892A851L;
    uint8_t l_453[9] = {0xF5L,0xF5L,0xF5L,0xF5L,0xF5L,0xF5L,0xF5L,0xF5L,0xF5L};
    int i, j, k;
    l_453[1]--;
    return (*p_809->g_70);
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_6 p_809->g_115.f1 p_809->g_145 p_809->g_60 p_809->g_14 p_809->g_95 p_809->g_115.f3 p_809->g_115.f5 p_809->g_70 p_809->g_139 p_809->g_115.f2 p_809->g_282 p_809->g_221 p_809->g_425 p_809->g_437 p_809->g_165 p_809->g_111 p_809->g_348 p_809->g_5 p_809->g_439 p_809->g_71
 * writes: p_809->g_66 p_809->g_115.f5 p_809->g_221 p_809->g_71 p_809->g_115.f1
 */
struct S0  func_38(int32_t ** p_39, struct S1 * p_809)
{ /* block id: 105 */
    int32_t l_270[7][8] = {{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L},{0x39C28E87L,1L,2L,0x15392C4AL,2L,1L,0x39C28E87L,0x69BB4CB6L}};
    uint16_t *l_277 = &p_809->g_66;
    VECTOR(int16_t, 8) l_278 = (VECTOR(int16_t, 8))(0x6CFAL, (VECTOR(int16_t, 4))(0x6CFAL, (VECTOR(int16_t, 2))(0x6CFAL, 6L), 6L), 6L, 0x6CFAL, 6L);
    VECTOR(int16_t, 2) l_279 = (VECTOR(int16_t, 2))(7L, 1L);
    int32_t *l_280 = &p_809->g_115.f5;
    int32_t **l_281 = &p_809->g_71;
    VECTOR(uint64_t, 16) l_314 = (VECTOR(uint64_t, 16))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xC6D6E9268ECCA2D5L), 0xC6D6E9268ECCA2D5L), 0xC6D6E9268ECCA2D5L, 18446744073709551613UL, 0xC6D6E9268ECCA2D5L, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xC6D6E9268ECCA2D5L), (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xC6D6E9268ECCA2D5L), 18446744073709551613UL, 0xC6D6E9268ECCA2D5L, 18446744073709551613UL, 0xC6D6E9268ECCA2D5L);
    uint32_t l_335 = 4294967293UL;
    int16_t l_345 = 0x6A7EL;
    VECTOR(int16_t, 4) l_391 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), (-3L)), (-3L));
    int32_t l_399[5] = {0x5B35F985L,0x5B35F985L,0x5B35F985L,0x5B35F985L,0x5B35F985L};
    VECTOR(uint32_t, 2) l_426 = (VECTOR(uint32_t, 2))(7UL, 8UL);
    VECTOR(int16_t, 2) l_431 = (VECTOR(int16_t, 2))((-6L), 0x4E9BL);
    VECTOR(int16_t, 16) l_434 = (VECTOR(int16_t, 16))(0x2714L, (VECTOR(int16_t, 4))(0x2714L, (VECTOR(int16_t, 2))(0x2714L, (-1L)), (-1L)), (-1L), 0x2714L, (-1L), (VECTOR(int16_t, 2))(0x2714L, (-1L)), (VECTOR(int16_t, 2))(0x2714L, (-1L)), 0x2714L, (-1L), 0x2714L, (-1L));
    VECTOR(uint16_t, 16) l_438 = (VECTOR(uint16_t, 16))(0xFD90L, (VECTOR(uint16_t, 4))(0xFD90L, (VECTOR(uint16_t, 2))(0xFD90L, 65533UL), 65533UL), 65533UL, 0xFD90L, 65533UL, (VECTOR(uint16_t, 2))(0xFD90L, 65533UL), (VECTOR(uint16_t, 2))(0xFD90L, 65533UL), 0xFD90L, 65533UL, 0xFD90L, 65533UL);
    int i, j;
    (*l_280) ^= (safe_mod_func_int8_t_s_s((!((safe_lshift_func_int8_t_s_u((((p_809->g_6 & p_809->g_115.f1) , ((safe_div_func_uint8_t_u_u(p_809->g_145[1], l_270[3][7])) == (-3L))) != ((safe_rshift_func_uint16_t_u_u(l_270[3][7], (safe_rshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(0x967E6AB8L, ((((*l_277) = l_270[3][7]) ^ ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 2))(l_278.s42)), ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))(l_279.yxyx)).wzzxzyww, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))((-7L), (-7L), (+(((!((VECTOR(int32_t, 16))(0x41EEBF1BL, (-8L), ((VECTOR(int32_t, 2))(0L, 0x73716DEDL)), (0xCFFAL == 0x3DCFL), ((VECTOR(int32_t, 4))(0x2D6D6285L)), (-7L), l_278.s0, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))((-1L))), 0L)).sc) & 0x54922CB8L) > 0xF277L)), p_809->g_60.y, p_809->g_14, ((VECTOR(int16_t, 4))(1L)), 0x086AL, 0x3356L, (-7L), ((VECTOR(int16_t, 2))(0x62D9L)), 0x49A2L, 0x5CEAL)).s92a1)).yzxyxzzzxzwywwyw)).sfe1b)).wzxyxxzw))).s25))), (uint16_t)p_809->g_95, (uint16_t)0x6FF9L))).lo) , l_279.y))), 14)))) == p_809->g_115.f3)), GROUP_DIVERGE(0, 1))) , l_278.s3)), l_278.s4));
    (*l_281) = ((*p_809->g_70) = (void*)0);
lbl_420:
    if ((*p_809->g_139))
    { /* block id: 110 */
        return p_809->g_282;
    }
    else
    { /* block id: 112 */
        uint32_t l_289 = 0x38F734D9L;
        uint64_t *l_299 = &p_809->g_145[1];
        VECTOR(uint8_t, 2) l_306 = (VECTOR(uint8_t, 2))(0xC9L, 0UL);
        int64_t l_308 = 0x715C61B0C0A89FBFL;
        int32_t l_334 = 0x6FAAFD4BL;
        int16_t l_336 = (-10L);
        int32_t l_351 = 0x0C4A002CL;
        VECTOR(uint64_t, 2) l_386 = (VECTOR(uint64_t, 2))(0xA836D34C05A10D9DL, 6UL);
        int32_t l_405 = (-9L);
        int32_t l_407 = (-1L);
        int32_t l_410 = 0x5EE50C0EL;
        int32_t *l_414 = &p_809->g_115.f5;
        int32_t *l_415 = &p_809->g_282.f5;
        int32_t *l_416[5][4] = {{(void*)0,&p_809->g_357[2][2].f2,&p_809->g_115.f2,&l_399[4]},{(void*)0,&p_809->g_357[2][2].f2,&p_809->g_115.f2,&l_399[4]},{(void*)0,&p_809->g_357[2][2].f2,&p_809->g_115.f2,&l_399[4]},{(void*)0,&p_809->g_357[2][2].f2,&p_809->g_115.f2,&l_399[4]},{(void*)0,&p_809->g_357[2][2].f2,&p_809->g_115.f2,&l_399[4]}};
        uint64_t l_417 = 18446744073709551614UL;
        int i, j;
        (*l_281) = (*p_39);
        if (p_809->g_282.f4)
            goto lbl_420;
        for (p_809->g_115.f5 = 29; (p_809->g_115.f5 < (-29)); p_809->g_115.f5 = safe_sub_func_int32_t_s_s(p_809->g_115.f5, 1))
        { /* block id: 116 */
            int8_t *l_292 = &p_809->g_101;
            VECTOR(int64_t, 2) l_302 = (VECTOR(int64_t, 2))((-9L), 0x30A5ECD7F034A106L);
            int32_t ***l_318 = (void*)0;
            VECTOR(int8_t, 2) l_390 = (VECTOR(int8_t, 2))(0x2CL, 0x18L);
            int32_t l_398 = 0x5276F746L;
            int32_t l_400 = (-1L);
            int32_t l_404[8] = {9L,9L,9L,9L,9L,9L,9L,9L};
            int i;
            (1 + 1);
        }
        l_417++;
    }
    (*l_280) = (safe_mul_func_uint16_t_u_u(((*l_277) = (safe_mod_func_uint64_t_u_u((((((*l_280) || (p_809->g_425[0] , ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_426.xxxy)), (safe_div_func_uint16_t_u_u(0UL, (safe_mod_func_int16_t_s_s((!((VECTOR(int16_t, 16))(l_431.xxyyyyyxxxyyyxyx)).s4), ((VECTOR(uint16_t, 16))((safe_lshift_func_int8_t_s_u((*l_280), 4)), 0UL, 0x98A4L, 65535UL, ((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_434.s9bb4)))).xxwzxwzy)).hi))), 0x97C7L, 0xEAE4L, (((*l_280) == (*l_280)) ^ (safe_sub_func_int8_t_s_s((((((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 16))(p_809->g_437.xzyxzyzwwzyzyxxy)).s4a, (uint16_t)((p_809->g_115.f1 |= (0xA665D2036AAA67C8L <= (-9L))) , 0x4EA1L)))).xxyx, ((VECTOR(uint16_t, 4))(4UL))))))).xzyywxzz, (uint16_t)p_809->g_165[1], (uint16_t)65528UL))).s7 != 3L) <= l_438.s1) ^ p_809->g_282.f2), p_809->g_111))), 0x0AB1L, 0x351BL, 0xD861L, 0xFA6CL, 0x30E2L)).sf)))), 0xB7E1D37EL, 1UL, 0x020244C1L)).s6)) <= p_809->g_348.s4) , p_809->g_5) == (*l_280)), 0x42B0E42C6CCA28B9L))), 65535UL));
    return p_809->g_439;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_60 p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_70 p_809->g_9 p_809->g_111 p_809->g_115 p_809->g_116 p_809->g_127 p_809->g_131 p_809->g_139 p_809->g_145 p_809->g_71 p_809->g_26 p_809->g_165 p_809->g_97 p_809->g_7 p_809->g_221 p_809->g_227
 * writes: p_809->g_70 p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_111 p_809->g_115 p_809->g_127 p_809->g_131 p_809->g_145 p_809->g_165 p_809->g_71 p_809->g_26 p_809->g_192 p_809->g_227
 */
int32_t ** func_40(uint16_t  p_41, int32_t * p_42, uint64_t  p_43, int32_t * p_44, struct S1 * p_809)
{ /* block id: 10 */
    int32_t *l_49 = (void*)0;
    int32_t **l_48 = &l_49;
    int8_t *l_240 = (void*)0;
    int32_t *l_241 = (void*)0;
    int32_t *l_242 = &p_809->g_14;
    int32_t *l_243 = &p_809->g_115.f2;
    int32_t l_244 = 3L;
    int32_t *l_245 = &p_809->g_111;
    int32_t *l_246 = &p_809->g_115.f5;
    int32_t l_247 = (-2L);
    int32_t *l_248 = (void*)0;
    int32_t *l_249 = &p_809->g_115.f5;
    int32_t *l_250 = &p_809->g_75;
    int32_t *l_251 = &p_809->g_14;
    int32_t *l_252 = &p_809->g_111;
    int32_t *l_253 = &p_809->g_115.f5;
    int32_t l_254 = 0x1AC0BC28L;
    int32_t *l_255 = &l_254;
    int32_t *l_256 = (void*)0;
    int32_t *l_257 = &p_809->g_14;
    int32_t *l_258 = &l_244;
    int32_t *l_259[10];
    uint32_t l_260 = 0xD6011E4AL;
    int i;
    for (i = 0; i < 10; i++)
        l_259[i] = (void*)0;
    (*l_48) = func_45(&p_809->g_14, (l_48 != &p_44), p_809);
    (*p_42) |= (l_240 != (void*)0);
    l_260++;
    return &p_809->g_221;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_60 p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_70 p_809->g_9 p_809->g_111 p_809->g_115 p_809->g_116 p_809->g_127 p_809->g_131 p_809->g_139 p_809->g_145 p_809->g_71 p_809->g_26 p_809->g_165 p_809->g_97 p_809->g_7 p_809->g_221 p_809->g_227
 * writes: p_809->g_70 p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_111 p_809->g_115 p_809->g_127 p_809->g_131 p_809->g_145 p_809->g_165 p_809->g_71 p_809->g_26 p_809->g_192 p_809->g_227
 */
int32_t * func_45(int32_t * p_46, uint32_t  p_47, struct S1 * p_809)
{ /* block id: 11 */
    int32_t l_64 = 1L;
    uint16_t *l_65[7][8] = {{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66},{&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66,&p_809->g_66}};
    int32_t l_67 = 0x1DD571B4L;
    VECTOR(int64_t, 16) l_206 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x073FBF91241E13D4L), 0x073FBF91241E13D4L), 0x073FBF91241E13D4L, 1L, 0x073FBF91241E13D4L, (VECTOR(int64_t, 2))(1L, 0x073FBF91241E13D4L), (VECTOR(int64_t, 2))(1L, 0x073FBF91241E13D4L), 1L, 0x073FBF91241E13D4L, 1L, 0x073FBF91241E13D4L);
    VECTOR(int64_t, 2) l_207 = (VECTOR(int64_t, 2))((-2L), 7L);
    uint32_t l_208 = 0xEC7BEB2BL;
    int32_t l_217 = (-9L);
    int32_t *l_218 = (void*)0;
    int32_t *l_219 = (void*)0;
    int32_t *l_220 = &l_217;
    int32_t *l_230[2][8][6] = {{{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75}},{{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75},{&p_809->g_75,&p_809->g_75,&l_67,&l_67,&p_809->g_75,&p_809->g_75}}};
    uint16_t l_231 = 0UL;
    int64_t *l_234 = &p_809->g_192;
    uint32_t l_235 = 0xF3DFD6F5L;
    int32_t *l_239 = &p_809->g_75;
    int i, j, k;
    if ((l_231 = (safe_add_func_int16_t_s_s(func_52(((*l_220) = (safe_mul_func_uint16_t_u_u((((VECTOR(int8_t, 4))(p_809->g_60.yxxx)).x != ((func_61(((l_67 = l_64) , 0x552FFABE4BCA0F96L), func_68((p_809->g_70 = &p_46), p_809), p_809) ^ ((p_47 >= (p_47 && ((safe_lshift_func_uint16_t_u_s(l_64, 15)) ^ ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 2))(0L, (-10L))).yyxxyyyx, ((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))((-9L), ((VECTOR(int64_t, 2))(l_206.sbf)), 0L)).xyyzxywywzzyzwxy, ((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(l_207.yxxxyyxx)).s02, ((VECTOR(int64_t, 4))(1L, 0x7B209ACC29EC63CFL, 0x35DFBDC08B3C05E5L, 1L)).even, ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))((((((--l_208) <= (safe_mod_func_uint64_t_u_u((((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))((safe_add_func_uint16_t_u_u((safe_add_func_int32_t_s_s(((l_65[5][3] == (void*)0) != p_809->g_9.s4), GROUP_DIVERGE(2, 1))), l_207.y)), 0xA7639554L, ((VECTOR(uint32_t, 2))(4294967291UL)), 6UL, p_809->g_9.sf, 0xD92CA548L, ((VECTOR(uint32_t, 4))(0x017DD661L)), l_64, 4294967295UL, ((VECTOR(uint32_t, 2))(0x9306F493L)), 0x1A88FA0AL)).lo, ((VECTOR(uint32_t, 8))(0xE1F7FC17L)), ((VECTOR(uint32_t, 8))(4294967294UL))))).s0747210333751003))).s2 && p_809->g_60.x), p_809->g_9.s4))) || 0x0D20E8FBL) , p_809->g_60.x) , 0x15851E5C6F841FF8L), ((VECTOR(int64_t, 2))(0x672A85B3E65E92AEL)), ((VECTOR(int64_t, 4))(0x65D71448ED9A8A87L)), (-1L))), ((VECTOR(int64_t, 8))((-6L)))))).s36))).xxxy, ((VECTOR(int64_t, 4))(0x4D99A783E0FBC3B8L)), ((VECTOR(int64_t, 4))(0x70E9028292101502L))))).odd)).yxxy, ((VECTOR(int64_t, 4))(0x42A752D06EF46315L)), ((VECTOR(int64_t, 4))(0x2C66DAE0F2169EFBL))))).zwyxwxyzwzwwzxww))).even))).odd)).w))) ^ 0x5590934EL)) , l_206.sf)), l_217))), p_809->g_221, l_206.s9, l_207.x, p_809->g_60.x, p_809), 0x16A5L))))
    { /* block id: 85 */
        l_230[0][5][3] = (p_47 , ((*p_809->g_70) = (*p_809->g_70)));
    }
    else
    { /* block id: 88 */
        uint8_t l_232[10][5] = {{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L},{0x9BL,0x9BL,0xDBL,255UL,0x35L}};
        int64_t *l_233 = &p_809->g_192;
        int i, j;
        if (((*p_809->g_139) &= (p_47 ^ l_232[5][4])))
        { /* block id: 90 */
            uint32_t l_236 = 0x3BB352B3L;
            l_235 = (l_233 == l_234);
            --l_236;
            (*p_809->g_70) = &l_67;
        }
        else
        { /* block id: 94 */
            return p_46;
        }
        (**p_809->g_70) |= 0x12D92A50L;
    }
    return l_239;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_227
 * writes: p_809->g_227 p_809->g_14
 */
int16_t  func_52(int32_t  p_53, int32_t * p_54, uint16_t  p_55, int32_t  p_56, uint64_t  p_57, struct S1 * p_809)
{ /* block id: 80 */
    int32_t *l_222 = &p_809->g_14;
    int32_t *l_223 = &p_809->g_14;
    int32_t l_224 = 0L;
    int32_t *l_225 = &l_224;
    int32_t *l_226[7][7][4] = {{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}},{{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14},{&p_809->g_115.f5,&p_809->g_115.f2,&p_809->g_115.f2,&p_809->g_14}}};
    int i, j, k;
    p_809->g_227--;
    (*l_222) = (p_56 || GROUP_DIVERGE(0, 1));
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_115.f5 p_809->g_145 p_809->g_95 p_809->g_60 p_809->g_101 p_809->g_71 p_809->g_70 p_809->g_9 p_809->g_66 p_809->g_111 p_809->g_115 p_809->g_26 p_809->g_165 p_809->g_131 p_809->g_97 p_809->g_7 p_809->g_75 p_809->g_139
 * writes: p_809->g_115.f5 p_809->g_145 p_809->g_95 p_809->g_101 p_809->g_111 p_809->g_165 p_809->g_71 p_809->g_26 p_809->g_192 p_809->g_115.f2
 */
uint32_t  func_61(int64_t  p_62, int32_t ** p_63, struct S1 * p_809)
{ /* block id: 54 */
    int32_t **l_148[5];
    VECTOR(uint16_t, 4) l_151 = (VECTOR(uint16_t, 4))(0xEF6EL, (VECTOR(uint16_t, 2))(0xEF6EL, 0x73ACL), 0x73ACL);
    VECTOR(uint32_t, 4) l_156 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL);
    int8_t *l_190 = &p_809->g_101;
    uint16_t l_201[9] = {0x7730L,0x7730L,0x7730L,0x7730L,0x7730L,0x7730L,0x7730L,0x7730L,0x7730L};
    int i;
    for (i = 0; i < 5; i++)
        l_148[i] = &p_809->g_71;
    for (p_809->g_115.f5 = 0; (p_809->g_115.f5 >= (-24)); p_809->g_115.f5--)
    { /* block id: 57 */
        uint64_t *l_144 = &p_809->g_145[1];
        VECTOR(uint32_t, 2) l_154 = (VECTOR(uint32_t, 2))(4294967295UL, 0x48F12570L);
        VECTOR(uint32_t, 16) l_155 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
        VECTOR(uint32_t, 4) l_157 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 6UL), 6UL);
        int16_t *l_164[1][6];
        uint16_t l_166[3][10] = {{65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL},{65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL},{65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL,1UL,65535UL,65535UL}};
        int32_t l_167 = 0L;
        int32_t l_194[5][2];
        uint8_t l_196[10] = {0x90L,0x90L,0x90L,0x90L,0x90L,0x90L,0x90L,0x90L,0x90L,0x90L};
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_164[i][j] = (void*)0;
        }
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 2; j++)
                l_194[i][j] = (-3L);
        }
        if ((((((((0xD706CFD441EE8A5DL || ((*l_144)--)) , func_80(l_148[4], p_62, p_809)) , (((p_809->g_115.f0 >= (((safe_rshift_func_int8_t_s_s((((VECTOR(uint16_t, 16))(l_151.xwwzxwzzxzyxwxwz)).s7 & ((l_167 = (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(9UL, 0x10C0C629L)).yxxyyyyxyyxyyyyy)).hi, ((VECTOR(uint32_t, 16))(l_154.yxyyyyyyyyxxxyyy)).even, ((VECTOR(uint32_t, 8))(l_155.s7b370a5d))))), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_156.yxwwyzzxyyzwzwxy)).s35)).xxyyyyyy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_157.xwxzwxyw)).s5112341767171257)).lo))).s5, ((((safe_lshift_func_uint16_t_u_s(((p_809->g_9.sd > (safe_sub_func_uint16_t_u_u((p_809->g_26[0] <= (p_809->g_165[1] &= (safe_sub_func_int8_t_s_s((p_809->g_115.f1 ^ p_809->g_9.s2), l_157.x)))), p_62))) == 0UL), p_809->g_115.f4)) > l_166[1][4]) , p_62) <= p_809->g_60.x)))) , p_809->g_145[3])), 2)) ^ 0x788FL) , 0x3B82BABF4834D8CAL)) == 0x2AB16F6DL) , p_809->g_131[1])) > p_809->g_115.f2) != 0L) != p_809->g_97) == 4L))
        { /* block id: 61 */
            int32_t *l_170[1][3];
            int32_t *l_191 = &p_809->g_26[0];
            uint64_t *l_193 = &p_809->g_145[5];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_170[i][j] = (void*)0;
            }
            p_809->g_115.f2 ^= (safe_div_func_uint16_t_u_u(((((*p_63) = (*p_809->g_70)) == l_170[0][1]) | 0x77L), (safe_add_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(((safe_unary_minus_func_int16_t_s((safe_sub_func_int32_t_s_s((p_809->g_145[1] == ((safe_mod_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s(0x7A2BBC16L, ((p_809->g_115.f3 , ((safe_div_func_int64_t_s_s((((safe_div_func_int16_t_s_s((safe_add_func_int32_t_s_s((l_167 |= 1L), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((safe_rshift_func_uint8_t_u_s(p_62, 2)) == (((((FAKE_DIVERGE(p_809->global_1_offset, get_global_id(1), 10) , (p_809->g_192 = ((*l_191) = (+(l_190 != &p_809->g_165[0]))))) , 6L) , 1UL) > p_809->g_115.f3) , p_809->g_7)), p_62, 0UL, 0x3D3E7146L)), 1UL, p_809->g_165[1], 4294967290UL, 0x6DA3648DL)).s2)), p_62)) ^ p_809->g_115.f1) || 255UL), p_62)) , (void*)0)) != l_193))) < p_62), l_155.sc)) , p_809->g_26[1])), p_809->g_75)))) && (-3L)), p_62)), p_809->g_9.s9))));
            (*p_63) = (void*)0;
            l_196[7]--;
        }
        else
        { /* block id: 69 */
            int8_t l_199 = 7L;
            int32_t l_200[5] = {(-9L),(-9L),(-9L),(-9L),(-9L)};
            int i;
            (*p_63) = (*p_63);
            l_201[7]--;
        }
        l_194[2][1] ^= ((*p_809->g_139) = p_62);
        if ((*p_809->g_139))
            break;
    }
    return p_809->g_111;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_60 p_809->g_101 p_809->g_70 p_809->g_9 p_809->g_111 p_809->g_115 p_809->g_116 p_809->g_127 p_809->g_131 p_809->g_139 l_15
 * writes: p_809->g_14 p_809->g_75 p_809->g_66 p_809->g_95 p_809->g_101 p_809->g_111 p_809->g_115 p_809->g_127 p_809->g_131
 */
int32_t ** func_68(int32_t ** p_69, struct S1 * p_809)
{ /* block id: 14 */
    VECTOR(uint64_t, 8) l_83 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
    int32_t l_126[3][10][4] = {{{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L}},{{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L}},{{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L},{0x0A464987L,(-7L),(-1L),0x7F3C1E06L}}};
    VECTOR(int8_t, 4) l_138 = (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, 0x70L), 0x70L);
    VECTOR(uint8_t, 8) l_140 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x3DL), 0x3DL), 0x3DL, 255UL, 0x3DL);
    VECTOR(uint8_t, 8) l_141 = (VECTOR(uint8_t, 8))(0x36L, (VECTOR(uint8_t, 4))(0x36L, (VECTOR(uint8_t, 2))(0x36L, 254UL), 254UL), 254UL, 0x36L, 254UL);
    int i, j, k;
    for (p_809->g_14 = 23; (p_809->g_14 <= 9); p_809->g_14 = safe_sub_func_int64_t_s_s(p_809->g_14, 6))
    { /* block id: 17 */
        int32_t *l_74 = &p_809->g_75;
        int32_t l_121 = (-1L);
        VECTOR(int32_t, 2) l_122 = (VECTOR(int32_t, 2))((-8L), 0L);
        int i;
        (*l_74) &= (-1L);
        for (p_809->g_66 = 0; (p_809->g_66 == 23); p_809->g_66 = safe_add_func_uint64_t_u_u(p_809->g_66, 6))
        { /* block id: 21 */
            uint32_t l_90 = 0x8F1B1E9EL;
            int32_t l_123 = 0x05974949L;
            int32_t l_124 = 0x66343A15L;
            int32_t l_125[9][2][6] = {{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}},{{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L},{0x116A6519L,0x412C06D4L,(-4L),0L,0x677A089CL,0L}}};
            VECTOR(int16_t, 2) l_130 = (VECTOR(int16_t, 2))((-1L), 0x1B97L);
            int i, j, k;
            for (p_809->g_75 = 7; (p_809->g_75 != (-15)); --p_809->g_75)
            { /* block id: 24 */
                uint64_t *l_84 = (void*)0;
                uint64_t *l_85 = (void*)0;
                uint64_t *l_86 = (void*)0;
                uint64_t *l_87 = (void*)0;
                uint64_t *l_88 = (void*)0;
                uint64_t *l_89[2][5][7];
                int32_t l_119[7][2][1] = {{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}},{{(-10L)},{(-10L)}}};
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 5; j++)
                    {
                        for (k = 0; k < 7; k++)
                            l_89[i][j][k] = (void*)0;
                    }
                }
                (*p_809->g_116) = func_80(p_69, (l_90 = ((VECTOR(uint64_t, 4))(l_83.s1270)).y), p_809);
                for (p_809->g_115.f3 = 17; (p_809->g_115.f3 < 14); --p_809->g_115.f3)
                { /* block id: 41 */
                    int32_t *l_120[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_120[i] = &p_809->g_111;
                    p_809->g_127--;
                    p_809->g_131[0]--;
                }
            }
            if ((**p_69))
                continue;
            return &p_809->g_71;
        }
    }
    (*p_809->g_70) = (void*)0;
    (*p_809->g_139) |= (p_809->g_66 && (safe_rshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s(l_126[2][6][0], GROUP_DIVERGE(1, 1))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_138.wzxz)).hi)).xyxy)).x)));
    (*p_809->g_139) |= (l_126[2][6][0] || ((0xB4L != ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 2))(l_140.s33)), ((VECTOR(uint8_t, 4))(l_141.s0463)).lo))).lo) == l_126[2][5][0]));
    return &p_809->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_809->g_95 p_809->g_60 p_809->g_101 p_809->g_70 p_809->g_9 p_809->g_66 p_809->g_111 p_809->g_115 p_46 p_809->g_71 p_809->g_221
 * writes: p_809->g_95 p_809->g_101 p_809->g_111
 */
struct S0  func_80(int32_t ** p_81, uint64_t  p_82, struct S1 * p_809)
{ /* block id: 26 */
    uint16_t l_93 = 0xFCACL;
    int32_t l_98[2][1];
    int32_t l_99 = 1L;
    VECTOR(int32_t, 16) l_112 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    int32_t *l_113 = (void*)0;
    int32_t *l_114 = &p_809->g_111;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_98[i][j] = 0x6F6B910FL;
    }
    for (p_82 = 0; (p_82 >= 49); p_82 = safe_add_func_int16_t_s_s(p_82, 5))
    { /* block id: 29 */
        uint64_t l_94 = 18446744073709551609UL;
        int64_t *l_96[9][1][2] = {{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}},{{&p_809->g_97,&p_809->g_97}}};
        int8_t *l_100 = &p_809->g_101;
        int32_t *l_110 = &p_809->g_111;
        int i, j, k;
        (*l_110) ^= (((*l_100) &= (((p_82 , l_93) , (l_98[0][0] = (p_809->g_95 |= l_94))) | (l_99 &= p_809->g_60.y))) | (((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(0x3AL, ((((*p_81) != (*p_809->g_70)) && (((-7L) <= ((((safe_lshift_func_uint16_t_u_s(p_809->g_9.sb, 5)) != 0UL) , FAKE_DIVERGE(p_809->group_2_offset, get_group_id(2), 10)) == l_93)) >= p_82)) & p_809->g_66))), 0x42L)) ^ 0x4D67D5F2590C119CL) & p_82));
    }
    (*l_114) &= ((VECTOR(int32_t, 2))(l_112.s10)).hi;
    return p_809->g_115;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S1 c_810;
    struct S1* p_809 = &c_810;
    struct S1 c_811 = {
        6L, // p_809->g_2
        (-8L), // p_809->g_3
        0x22B16580L, // p_809->g_4
        (-2L), // p_809->g_5
        (-1L), // p_809->g_6
        5L, // p_809->g_7
        (-8L), // p_809->g_8
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x6DEDB5CAL), 0x6DEDB5CAL), 0x6DEDB5CAL, (-1L), 0x6DEDB5CAL, (VECTOR(int32_t, 2))((-1L), 0x6DEDB5CAL), (VECTOR(int32_t, 2))((-1L), 0x6DEDB5CAL), (-1L), 0x6DEDB5CAL, (-1L), 0x6DEDB5CAL), // p_809->g_9
        1L, // p_809->g_14
        (-5L), // p_809->g_25
        {0x139C0105L,0x139C0105L}, // p_809->g_26
        (VECTOR(int8_t, 2))(6L, 0x0EL), // p_809->g_60
        0UL, // p_809->g_66
        (void*)0, // p_809->g_71
        &p_809->g_71, // p_809->g_70
        8L, // p_809->g_75
        0xECCDF337L, // p_809->g_95
        0x2330C13F5ED5A8D4L, // p_809->g_97
        (-3L), // p_809->g_101
        0x416D4618L, // p_809->g_111
        {65535UL,18446744073709551608UL,-1L,0L,0xE2787FF9E38BD601L,0x0ADD5270L}, // p_809->g_115
        &p_809->g_115, // p_809->g_116
        0x349C081A072CE3EAL, // p_809->g_127
        {4294967295UL,4294967295UL}, // p_809->g_131
        &p_809->g_115.f2, // p_809->g_139
        {0x9950EBD88DAB5425L,0x9F213F65977C5290L,4UL,0x9F213F65977C5290L,0x9950EBD88DAB5425L,0x9950EBD88DAB5425L,0x9F213F65977C5290L,4UL,0x9F213F65977C5290L,0x9950EBD88DAB5425L}, // p_809->g_145
        {(-3L),(-3L)}, // p_809->g_165
        0x5FE2882719CDBA80L, // p_809->g_192
        2L, // p_809->g_195
        (void*)0, // p_809->g_221
        4UL, // p_809->g_227
        {0xE888L,0x3D818842DB29C9EDL,0x2678C517L,0x2DL,18446744073709551606UL,0L}, // p_809->g_282
        (void*)0, // p_809->g_305
        (VECTOR(uint8_t, 16))(0x3FL, (VECTOR(uint8_t, 4))(0x3FL, (VECTOR(uint8_t, 2))(0x3FL, 0UL), 0UL), 0UL, 0x3FL, 0UL, (VECTOR(uint8_t, 2))(0x3FL, 0UL), (VECTOR(uint8_t, 2))(0x3FL, 0UL), 0x3FL, 0UL, 0x3FL, 0UL), // p_809->g_307
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_809->g_330
        {{1UL,0x58630AA0883D9349L,-3L,0x53L,0xA405CFC0919BC364L,0x128EF829L},{1UL,0x58630AA0883D9349L,-3L,0x53L,0xA405CFC0919BC364L,0x128EF829L},{1UL,0x58630AA0883D9349L,-3L,0x53L,0xA405CFC0919BC364L,0x128EF829L},{1UL,0x58630AA0883D9349L,-3L,0x53L,0xA405CFC0919BC364L,0x128EF829L},{1UL,0x58630AA0883D9349L,-3L,0x53L,0xA405CFC0919BC364L,0x128EF829L}}, // p_809->g_346
        (VECTOR(int8_t, 16))(0x19L, (VECTOR(int8_t, 4))(0x19L, (VECTOR(int8_t, 2))(0x19L, 0x7EL), 0x7EL), 0x7EL, 0x19L, 0x7EL, (VECTOR(int8_t, 2))(0x19L, 0x7EL), (VECTOR(int8_t, 2))(0x19L, 0x7EL), 0x19L, 0x7EL, 0x19L, 0x7EL), // p_809->g_348
        (VECTOR(int32_t, 2))((-6L), 9L), // p_809->g_350
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_809->g_352
        &p_809->g_282, // p_809->g_355
        {{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355},{(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355,(void*)0,(void*)0,&p_809->g_355}}, // p_809->g_354
        {{{0UL,0x58D435CDE2B95946L,0L,-7L,0x9A01ED204EB19E16L,0L},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L},{8UL,8UL,-7L,0x28L,0xB614299B8E3C385CL,0L},{0x5863L,1UL,5L,0x36L,18446744073709551615UL,0x6FEB249FL},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L}},{{0UL,0x58D435CDE2B95946L,0L,-7L,0x9A01ED204EB19E16L,0L},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L},{8UL,8UL,-7L,0x28L,0xB614299B8E3C385CL,0L},{0x5863L,1UL,5L,0x36L,18446744073709551615UL,0x6FEB249FL},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L}},{{0UL,0x58D435CDE2B95946L,0L,-7L,0x9A01ED204EB19E16L,0L},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L},{8UL,8UL,-7L,0x28L,0xB614299B8E3C385CL,0L},{0x5863L,1UL,5L,0x36L,18446744073709551615UL,0x6FEB249FL},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L}},{{0UL,0x58D435CDE2B95946L,0L,-7L,0x9A01ED204EB19E16L,0L},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L},{8UL,8UL,-7L,0x28L,0xB614299B8E3C385CL,0L},{0x5863L,1UL,5L,0x36L,18446744073709551615UL,0x6FEB249FL},{0UL,0x006623E423A54D17L,0x15FC4E59L,0x39L,0x143396881C86CE5EL,0L}}}, // p_809->g_357
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_809->g_358
        (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 8UL), 8UL), // p_809->g_359
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x26FC89DAF2E9ECC7L), 0x26FC89DAF2E9ECC7L), // p_809->g_365
        (VECTOR(int32_t, 16))(0x0393F36CL, (VECTOR(int32_t, 4))(0x0393F36CL, (VECTOR(int32_t, 2))(0x0393F36CL, 0x5B8F5E76L), 0x5B8F5E76L), 0x5B8F5E76L, 0x0393F36CL, 0x5B8F5E76L, (VECTOR(int32_t, 2))(0x0393F36CL, 0x5B8F5E76L), (VECTOR(int32_t, 2))(0x0393F36CL, 0x5B8F5E76L), 0x0393F36CL, 0x5B8F5E76L, 0x0393F36CL, 0x5B8F5E76L), // p_809->g_369
        (VECTOR(uint16_t, 2))(0UL, 0xD4B3L), // p_809->g_370
        (VECTOR(int8_t, 2))(0x1BL, 1L), // p_809->g_373
        (VECTOR(uint32_t, 4))(0xE96BA91CL, (VECTOR(uint32_t, 2))(0xE96BA91CL, 0x9BA08714L), 0x9BA08714L), // p_809->g_383
        {{0xCAD0L,0xF956F3C9FF2C28D0L,0L,4L,0UL,1L},{0xCAD0L,0xF956F3C9FF2C28D0L,0L,4L,0UL,1L},{0xCAD0L,0xF956F3C9FF2C28D0L,0L,4L,0UL,1L}}, // p_809->g_425
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), // p_809->g_437
        {0x1595L,0x60FBD32B743EF446L,0x2F3CC06DL,9L,4UL,-1L}, // p_809->g_439
        (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 255UL), 255UL), // p_809->g_440
        (VECTOR(uint64_t, 8))(0x976B42602F746172L, (VECTOR(uint64_t, 4))(0x976B42602F746172L, (VECTOR(uint64_t, 2))(0x976B42602F746172L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x976B42602F746172L, 18446744073709551615UL), // p_809->g_466
        (VECTOR(uint64_t, 8))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 1UL), 1UL), 1UL, 18446744073709551611UL, 1UL), // p_809->g_468
        (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), // p_809->g_469
        0UL, // p_809->g_473
        (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x2CL), 0x2CL), // p_809->g_506
        {0xF7A4L,0x266FEA11EED2B5AAL,-4L,-1L,18446744073709551610UL,-10L}, // p_809->g_522
        &p_809->g_115.f3, // p_809->g_539
        {{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539},{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539},{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539},{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539},{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539},{&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539,&p_809->g_539}}, // p_809->g_538
        &p_809->g_538[5][9], // p_809->g_537
        8L, // p_809->g_555
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL), // p_809->g_592
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3588CCDD4F02BFF3L), 0x3588CCDD4F02BFF3L), 0x3588CCDD4F02BFF3L, 0L, 0x3588CCDD4F02BFF3L, (VECTOR(int64_t, 2))(0L, 0x3588CCDD4F02BFF3L), (VECTOR(int64_t, 2))(0L, 0x3588CCDD4F02BFF3L), 0L, 0x3588CCDD4F02BFF3L, 0L, 0x3588CCDD4F02BFF3L), // p_809->g_614
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L)), // p_809->g_616
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3DL), 0x3DL), // p_809->g_623
        0x0CE0866CL, // p_809->g_646
        &p_809->g_646, // p_809->g_645
        &p_809->g_645, // p_809->g_644
        &p_809->g_330[3], // p_809->g_651
        &p_809->g_651, // p_809->g_650
        &p_809->g_651, // p_809->g_652
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7915584CL), 0x7915584CL), 0x7915584CL, (-1L), 0x7915584CL, (VECTOR(int32_t, 2))((-1L), 0x7915584CL), (VECTOR(int32_t, 2))((-1L), 0x7915584CL), (-1L), 0x7915584CL, (-1L), 0x7915584CL), // p_809->g_660
        (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 255UL), 255UL), // p_809->g_670
        (VECTOR(int8_t, 16))(0x33L, (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, (-4L)), (-4L)), (-4L), 0x33L, (-4L), (VECTOR(int8_t, 2))(0x33L, (-4L)), (VECTOR(int8_t, 2))(0x33L, (-4L)), 0x33L, (-4L), 0x33L, (-4L)), // p_809->g_671
        0x98C8L, // p_809->g_679
        &p_809->g_650, // p_809->g_681
        (VECTOR(int32_t, 16))(0x4DBF9C89L, (VECTOR(int32_t, 4))(0x4DBF9C89L, (VECTOR(int32_t, 2))(0x4DBF9C89L, 9L), 9L), 9L, 0x4DBF9C89L, 9L, (VECTOR(int32_t, 2))(0x4DBF9C89L, 9L), (VECTOR(int32_t, 2))(0x4DBF9C89L, 9L), 0x4DBF9C89L, 9L, 0x4DBF9C89L, 9L), // p_809->g_706
        (VECTOR(int32_t, 2))(4L, 0x0F3584BCL), // p_809->g_707
        (VECTOR(int32_t, 2))(6L, 0x3C56DAC6L), // p_809->g_708
        (VECTOR(int64_t, 16))(0x694D73C7520C4B12L, (VECTOR(int64_t, 4))(0x694D73C7520C4B12L, (VECTOR(int64_t, 2))(0x694D73C7520C4B12L, 0x03B5EA0287070F96L), 0x03B5EA0287070F96L), 0x03B5EA0287070F96L, 0x694D73C7520C4B12L, 0x03B5EA0287070F96L, (VECTOR(int64_t, 2))(0x694D73C7520C4B12L, 0x03B5EA0287070F96L), (VECTOR(int64_t, 2))(0x694D73C7520C4B12L, 0x03B5EA0287070F96L), 0x694D73C7520C4B12L, 0x03B5EA0287070F96L, 0x694D73C7520C4B12L, 0x03B5EA0287070F96L), // p_809->g_716
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL), // p_809->g_727
        0x2CL, // p_809->g_741
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL), // p_809->g_745
        (VECTOR(uint16_t, 4))(0x9639L, (VECTOR(uint16_t, 2))(0x9639L, 0xA1EDL), 0xA1EDL), // p_809->g_746
        (VECTOR(uint16_t, 16))(0xB24BL, (VECTOR(uint16_t, 4))(0xB24BL, (VECTOR(uint16_t, 2))(0xB24BL, 5UL), 5UL), 5UL, 0xB24BL, 5UL, (VECTOR(uint16_t, 2))(0xB24BL, 5UL), (VECTOR(uint16_t, 2))(0xB24BL, 5UL), 0xB24BL, 5UL, 0xB24BL, 5UL), // p_809->g_747
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x5AF5L), 0x5AF5L), // p_809->g_748
        (VECTOR(uint16_t, 16))(0xFD58L, (VECTOR(uint16_t, 4))(0xFD58L, (VECTOR(uint16_t, 2))(0xFD58L, 0x1643L), 0x1643L), 0x1643L, 0xFD58L, 0x1643L, (VECTOR(uint16_t, 2))(0xFD58L, 0x1643L), (VECTOR(uint16_t, 2))(0xFD58L, 0x1643L), 0xFD58L, 0x1643L, 0xFD58L, 0x1643L), // p_809->g_749
        (VECTOR(uint16_t, 4))(0x1864L, (VECTOR(uint16_t, 2))(0x1864L, 1UL), 1UL), // p_809->g_750
        (VECTOR(int16_t, 8))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, (-2L)), (-2L)), (-2L), 8L, (-2L)), // p_809->g_752
        (VECTOR(int16_t, 2))(0x20C0L, 1L), // p_809->g_753
        (void*)0, // p_809->g_768
        &p_809->g_768, // p_809->g_767
        &p_809->g_767, // p_809->g_766
        &p_809->g_766, // p_809->g_765
        (VECTOR(int64_t, 16))(0x052A9424D1FE1397L, (VECTOR(int64_t, 4))(0x052A9424D1FE1397L, (VECTOR(int64_t, 2))(0x052A9424D1FE1397L, 0L), 0L), 0L, 0x052A9424D1FE1397L, 0L, (VECTOR(int64_t, 2))(0x052A9424D1FE1397L, 0L), (VECTOR(int64_t, 2))(0x052A9424D1FE1397L, 0L), 0x052A9424D1FE1397L, 0L, 0x052A9424D1FE1397L, 0L), // p_809->g_792
        0x0B717F5FL, // p_809->g_805
        sequence_input[get_global_id(0)], // p_809->global_0_offset
        sequence_input[get_global_id(1)], // p_809->global_1_offset
        sequence_input[get_global_id(2)], // p_809->global_2_offset
        sequence_input[get_local_id(0)], // p_809->local_0_offset
        sequence_input[get_local_id(1)], // p_809->local_1_offset
        sequence_input[get_local_id(2)], // p_809->local_2_offset
        sequence_input[get_group_id(0)], // p_809->group_0_offset
        sequence_input[get_group_id(1)], // p_809->group_1_offset
        sequence_input[get_group_id(2)], // p_809->group_2_offset
    };
    c_810 = c_811;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_809);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_809->g_2, "p_809->g_2", print_hash_value);
    transparent_crc(p_809->g_3, "p_809->g_3", print_hash_value);
    transparent_crc(p_809->g_4, "p_809->g_4", print_hash_value);
    transparent_crc(p_809->g_5, "p_809->g_5", print_hash_value);
    transparent_crc(p_809->g_6, "p_809->g_6", print_hash_value);
    transparent_crc(p_809->g_7, "p_809->g_7", print_hash_value);
    transparent_crc(p_809->g_8, "p_809->g_8", print_hash_value);
    transparent_crc(p_809->g_9.s0, "p_809->g_9.s0", print_hash_value);
    transparent_crc(p_809->g_9.s1, "p_809->g_9.s1", print_hash_value);
    transparent_crc(p_809->g_9.s2, "p_809->g_9.s2", print_hash_value);
    transparent_crc(p_809->g_9.s3, "p_809->g_9.s3", print_hash_value);
    transparent_crc(p_809->g_9.s4, "p_809->g_9.s4", print_hash_value);
    transparent_crc(p_809->g_9.s5, "p_809->g_9.s5", print_hash_value);
    transparent_crc(p_809->g_9.s6, "p_809->g_9.s6", print_hash_value);
    transparent_crc(p_809->g_9.s7, "p_809->g_9.s7", print_hash_value);
    transparent_crc(p_809->g_9.s8, "p_809->g_9.s8", print_hash_value);
    transparent_crc(p_809->g_9.s9, "p_809->g_9.s9", print_hash_value);
    transparent_crc(p_809->g_9.sa, "p_809->g_9.sa", print_hash_value);
    transparent_crc(p_809->g_9.sb, "p_809->g_9.sb", print_hash_value);
    transparent_crc(p_809->g_9.sc, "p_809->g_9.sc", print_hash_value);
    transparent_crc(p_809->g_9.sd, "p_809->g_9.sd", print_hash_value);
    transparent_crc(p_809->g_9.se, "p_809->g_9.se", print_hash_value);
    transparent_crc(p_809->g_9.sf, "p_809->g_9.sf", print_hash_value);
    transparent_crc(p_809->g_14, "p_809->g_14", print_hash_value);
    transparent_crc(p_809->g_25, "p_809->g_25", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_809->g_26[i], "p_809->g_26[i]", print_hash_value);

    }
    transparent_crc(p_809->g_60.x, "p_809->g_60.x", print_hash_value);
    transparent_crc(p_809->g_60.y, "p_809->g_60.y", print_hash_value);
    transparent_crc(p_809->g_66, "p_809->g_66", print_hash_value);
    transparent_crc(p_809->g_75, "p_809->g_75", print_hash_value);
    transparent_crc(p_809->g_95, "p_809->g_95", print_hash_value);
    transparent_crc(p_809->g_97, "p_809->g_97", print_hash_value);
    transparent_crc(p_809->g_101, "p_809->g_101", print_hash_value);
    transparent_crc(p_809->g_111, "p_809->g_111", print_hash_value);
    transparent_crc(p_809->g_115.f0, "p_809->g_115.f0", print_hash_value);
    transparent_crc(p_809->g_115.f1, "p_809->g_115.f1", print_hash_value);
    transparent_crc(p_809->g_115.f2, "p_809->g_115.f2", print_hash_value);
    transparent_crc(p_809->g_115.f3, "p_809->g_115.f3", print_hash_value);
    transparent_crc(p_809->g_115.f4, "p_809->g_115.f4", print_hash_value);
    transparent_crc(p_809->g_115.f5, "p_809->g_115.f5", print_hash_value);
    transparent_crc(p_809->g_127, "p_809->g_127", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_809->g_131[i], "p_809->g_131[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_809->g_145[i], "p_809->g_145[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_809->g_165[i], "p_809->g_165[i]", print_hash_value);

    }
    transparent_crc(p_809->g_192, "p_809->g_192", print_hash_value);
    transparent_crc(p_809->g_195, "p_809->g_195", print_hash_value);
    transparent_crc(p_809->g_227, "p_809->g_227", print_hash_value);
    transparent_crc(p_809->g_282.f0, "p_809->g_282.f0", print_hash_value);
    transparent_crc(p_809->g_282.f1, "p_809->g_282.f1", print_hash_value);
    transparent_crc(p_809->g_282.f2, "p_809->g_282.f2", print_hash_value);
    transparent_crc(p_809->g_282.f3, "p_809->g_282.f3", print_hash_value);
    transparent_crc(p_809->g_282.f4, "p_809->g_282.f4", print_hash_value);
    transparent_crc(p_809->g_282.f5, "p_809->g_282.f5", print_hash_value);
    transparent_crc(p_809->g_307.s0, "p_809->g_307.s0", print_hash_value);
    transparent_crc(p_809->g_307.s1, "p_809->g_307.s1", print_hash_value);
    transparent_crc(p_809->g_307.s2, "p_809->g_307.s2", print_hash_value);
    transparent_crc(p_809->g_307.s3, "p_809->g_307.s3", print_hash_value);
    transparent_crc(p_809->g_307.s4, "p_809->g_307.s4", print_hash_value);
    transparent_crc(p_809->g_307.s5, "p_809->g_307.s5", print_hash_value);
    transparent_crc(p_809->g_307.s6, "p_809->g_307.s6", print_hash_value);
    transparent_crc(p_809->g_307.s7, "p_809->g_307.s7", print_hash_value);
    transparent_crc(p_809->g_307.s8, "p_809->g_307.s8", print_hash_value);
    transparent_crc(p_809->g_307.s9, "p_809->g_307.s9", print_hash_value);
    transparent_crc(p_809->g_307.sa, "p_809->g_307.sa", print_hash_value);
    transparent_crc(p_809->g_307.sb, "p_809->g_307.sb", print_hash_value);
    transparent_crc(p_809->g_307.sc, "p_809->g_307.sc", print_hash_value);
    transparent_crc(p_809->g_307.sd, "p_809->g_307.sd", print_hash_value);
    transparent_crc(p_809->g_307.se, "p_809->g_307.se", print_hash_value);
    transparent_crc(p_809->g_307.sf, "p_809->g_307.sf", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_809->g_330[i], "p_809->g_330[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_809->g_346[i].f0, "p_809->g_346[i].f0", print_hash_value);
        transparent_crc(p_809->g_346[i].f1, "p_809->g_346[i].f1", print_hash_value);
        transparent_crc(p_809->g_346[i].f2, "p_809->g_346[i].f2", print_hash_value);
        transparent_crc(p_809->g_346[i].f3, "p_809->g_346[i].f3", print_hash_value);
        transparent_crc(p_809->g_346[i].f4, "p_809->g_346[i].f4", print_hash_value);
        transparent_crc(p_809->g_346[i].f5, "p_809->g_346[i].f5", print_hash_value);

    }
    transparent_crc(p_809->g_348.s0, "p_809->g_348.s0", print_hash_value);
    transparent_crc(p_809->g_348.s1, "p_809->g_348.s1", print_hash_value);
    transparent_crc(p_809->g_348.s2, "p_809->g_348.s2", print_hash_value);
    transparent_crc(p_809->g_348.s3, "p_809->g_348.s3", print_hash_value);
    transparent_crc(p_809->g_348.s4, "p_809->g_348.s4", print_hash_value);
    transparent_crc(p_809->g_348.s5, "p_809->g_348.s5", print_hash_value);
    transparent_crc(p_809->g_348.s6, "p_809->g_348.s6", print_hash_value);
    transparent_crc(p_809->g_348.s7, "p_809->g_348.s7", print_hash_value);
    transparent_crc(p_809->g_348.s8, "p_809->g_348.s8", print_hash_value);
    transparent_crc(p_809->g_348.s9, "p_809->g_348.s9", print_hash_value);
    transparent_crc(p_809->g_348.sa, "p_809->g_348.sa", print_hash_value);
    transparent_crc(p_809->g_348.sb, "p_809->g_348.sb", print_hash_value);
    transparent_crc(p_809->g_348.sc, "p_809->g_348.sc", print_hash_value);
    transparent_crc(p_809->g_348.sd, "p_809->g_348.sd", print_hash_value);
    transparent_crc(p_809->g_348.se, "p_809->g_348.se", print_hash_value);
    transparent_crc(p_809->g_348.sf, "p_809->g_348.sf", print_hash_value);
    transparent_crc(p_809->g_350.x, "p_809->g_350.x", print_hash_value);
    transparent_crc(p_809->g_350.y, "p_809->g_350.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_809->g_357[i][j].f0, "p_809->g_357[i][j].f0", print_hash_value);
            transparent_crc(p_809->g_357[i][j].f1, "p_809->g_357[i][j].f1", print_hash_value);
            transparent_crc(p_809->g_357[i][j].f2, "p_809->g_357[i][j].f2", print_hash_value);
            transparent_crc(p_809->g_357[i][j].f3, "p_809->g_357[i][j].f3", print_hash_value);
            transparent_crc(p_809->g_357[i][j].f4, "p_809->g_357[i][j].f4", print_hash_value);
            transparent_crc(p_809->g_357[i][j].f5, "p_809->g_357[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_809->g_358.s0, "p_809->g_358.s0", print_hash_value);
    transparent_crc(p_809->g_358.s1, "p_809->g_358.s1", print_hash_value);
    transparent_crc(p_809->g_358.s2, "p_809->g_358.s2", print_hash_value);
    transparent_crc(p_809->g_358.s3, "p_809->g_358.s3", print_hash_value);
    transparent_crc(p_809->g_358.s4, "p_809->g_358.s4", print_hash_value);
    transparent_crc(p_809->g_358.s5, "p_809->g_358.s5", print_hash_value);
    transparent_crc(p_809->g_358.s6, "p_809->g_358.s6", print_hash_value);
    transparent_crc(p_809->g_358.s7, "p_809->g_358.s7", print_hash_value);
    transparent_crc(p_809->g_359.x, "p_809->g_359.x", print_hash_value);
    transparent_crc(p_809->g_359.y, "p_809->g_359.y", print_hash_value);
    transparent_crc(p_809->g_359.z, "p_809->g_359.z", print_hash_value);
    transparent_crc(p_809->g_359.w, "p_809->g_359.w", print_hash_value);
    transparent_crc(p_809->g_365.x, "p_809->g_365.x", print_hash_value);
    transparent_crc(p_809->g_365.y, "p_809->g_365.y", print_hash_value);
    transparent_crc(p_809->g_365.z, "p_809->g_365.z", print_hash_value);
    transparent_crc(p_809->g_365.w, "p_809->g_365.w", print_hash_value);
    transparent_crc(p_809->g_369.s0, "p_809->g_369.s0", print_hash_value);
    transparent_crc(p_809->g_369.s1, "p_809->g_369.s1", print_hash_value);
    transparent_crc(p_809->g_369.s2, "p_809->g_369.s2", print_hash_value);
    transparent_crc(p_809->g_369.s3, "p_809->g_369.s3", print_hash_value);
    transparent_crc(p_809->g_369.s4, "p_809->g_369.s4", print_hash_value);
    transparent_crc(p_809->g_369.s5, "p_809->g_369.s5", print_hash_value);
    transparent_crc(p_809->g_369.s6, "p_809->g_369.s6", print_hash_value);
    transparent_crc(p_809->g_369.s7, "p_809->g_369.s7", print_hash_value);
    transparent_crc(p_809->g_369.s8, "p_809->g_369.s8", print_hash_value);
    transparent_crc(p_809->g_369.s9, "p_809->g_369.s9", print_hash_value);
    transparent_crc(p_809->g_369.sa, "p_809->g_369.sa", print_hash_value);
    transparent_crc(p_809->g_369.sb, "p_809->g_369.sb", print_hash_value);
    transparent_crc(p_809->g_369.sc, "p_809->g_369.sc", print_hash_value);
    transparent_crc(p_809->g_369.sd, "p_809->g_369.sd", print_hash_value);
    transparent_crc(p_809->g_369.se, "p_809->g_369.se", print_hash_value);
    transparent_crc(p_809->g_369.sf, "p_809->g_369.sf", print_hash_value);
    transparent_crc(p_809->g_370.x, "p_809->g_370.x", print_hash_value);
    transparent_crc(p_809->g_370.y, "p_809->g_370.y", print_hash_value);
    transparent_crc(p_809->g_373.x, "p_809->g_373.x", print_hash_value);
    transparent_crc(p_809->g_373.y, "p_809->g_373.y", print_hash_value);
    transparent_crc(p_809->g_383.x, "p_809->g_383.x", print_hash_value);
    transparent_crc(p_809->g_383.y, "p_809->g_383.y", print_hash_value);
    transparent_crc(p_809->g_383.z, "p_809->g_383.z", print_hash_value);
    transparent_crc(p_809->g_383.w, "p_809->g_383.w", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_809->g_425[i].f0, "p_809->g_425[i].f0", print_hash_value);
        transparent_crc(p_809->g_425[i].f1, "p_809->g_425[i].f1", print_hash_value);
        transparent_crc(p_809->g_425[i].f2, "p_809->g_425[i].f2", print_hash_value);
        transparent_crc(p_809->g_425[i].f3, "p_809->g_425[i].f3", print_hash_value);
        transparent_crc(p_809->g_425[i].f4, "p_809->g_425[i].f4", print_hash_value);
        transparent_crc(p_809->g_425[i].f5, "p_809->g_425[i].f5", print_hash_value);

    }
    transparent_crc(p_809->g_437.x, "p_809->g_437.x", print_hash_value);
    transparent_crc(p_809->g_437.y, "p_809->g_437.y", print_hash_value);
    transparent_crc(p_809->g_437.z, "p_809->g_437.z", print_hash_value);
    transparent_crc(p_809->g_437.w, "p_809->g_437.w", print_hash_value);
    transparent_crc(p_809->g_439.f0, "p_809->g_439.f0", print_hash_value);
    transparent_crc(p_809->g_439.f1, "p_809->g_439.f1", print_hash_value);
    transparent_crc(p_809->g_439.f2, "p_809->g_439.f2", print_hash_value);
    transparent_crc(p_809->g_439.f3, "p_809->g_439.f3", print_hash_value);
    transparent_crc(p_809->g_439.f4, "p_809->g_439.f4", print_hash_value);
    transparent_crc(p_809->g_439.f5, "p_809->g_439.f5", print_hash_value);
    transparent_crc(p_809->g_440.x, "p_809->g_440.x", print_hash_value);
    transparent_crc(p_809->g_440.y, "p_809->g_440.y", print_hash_value);
    transparent_crc(p_809->g_440.z, "p_809->g_440.z", print_hash_value);
    transparent_crc(p_809->g_440.w, "p_809->g_440.w", print_hash_value);
    transparent_crc(p_809->g_466.s0, "p_809->g_466.s0", print_hash_value);
    transparent_crc(p_809->g_466.s1, "p_809->g_466.s1", print_hash_value);
    transparent_crc(p_809->g_466.s2, "p_809->g_466.s2", print_hash_value);
    transparent_crc(p_809->g_466.s3, "p_809->g_466.s3", print_hash_value);
    transparent_crc(p_809->g_466.s4, "p_809->g_466.s4", print_hash_value);
    transparent_crc(p_809->g_466.s5, "p_809->g_466.s5", print_hash_value);
    transparent_crc(p_809->g_466.s6, "p_809->g_466.s6", print_hash_value);
    transparent_crc(p_809->g_466.s7, "p_809->g_466.s7", print_hash_value);
    transparent_crc(p_809->g_468.s0, "p_809->g_468.s0", print_hash_value);
    transparent_crc(p_809->g_468.s1, "p_809->g_468.s1", print_hash_value);
    transparent_crc(p_809->g_468.s2, "p_809->g_468.s2", print_hash_value);
    transparent_crc(p_809->g_468.s3, "p_809->g_468.s3", print_hash_value);
    transparent_crc(p_809->g_468.s4, "p_809->g_468.s4", print_hash_value);
    transparent_crc(p_809->g_468.s5, "p_809->g_468.s5", print_hash_value);
    transparent_crc(p_809->g_468.s6, "p_809->g_468.s6", print_hash_value);
    transparent_crc(p_809->g_468.s7, "p_809->g_468.s7", print_hash_value);
    transparent_crc(p_809->g_469.x, "p_809->g_469.x", print_hash_value);
    transparent_crc(p_809->g_469.y, "p_809->g_469.y", print_hash_value);
    transparent_crc(p_809->g_473, "p_809->g_473", print_hash_value);
    transparent_crc(p_809->g_506.x, "p_809->g_506.x", print_hash_value);
    transparent_crc(p_809->g_506.y, "p_809->g_506.y", print_hash_value);
    transparent_crc(p_809->g_506.z, "p_809->g_506.z", print_hash_value);
    transparent_crc(p_809->g_506.w, "p_809->g_506.w", print_hash_value);
    transparent_crc(p_809->g_522.f0, "p_809->g_522.f0", print_hash_value);
    transparent_crc(p_809->g_522.f1, "p_809->g_522.f1", print_hash_value);
    transparent_crc(p_809->g_522.f2, "p_809->g_522.f2", print_hash_value);
    transparent_crc(p_809->g_522.f3, "p_809->g_522.f3", print_hash_value);
    transparent_crc(p_809->g_522.f4, "p_809->g_522.f4", print_hash_value);
    transparent_crc(p_809->g_522.f5, "p_809->g_522.f5", print_hash_value);
    transparent_crc(p_809->g_555, "p_809->g_555", print_hash_value);
    transparent_crc(p_809->g_592.s0, "p_809->g_592.s0", print_hash_value);
    transparent_crc(p_809->g_592.s1, "p_809->g_592.s1", print_hash_value);
    transparent_crc(p_809->g_592.s2, "p_809->g_592.s2", print_hash_value);
    transparent_crc(p_809->g_592.s3, "p_809->g_592.s3", print_hash_value);
    transparent_crc(p_809->g_592.s4, "p_809->g_592.s4", print_hash_value);
    transparent_crc(p_809->g_592.s5, "p_809->g_592.s5", print_hash_value);
    transparent_crc(p_809->g_592.s6, "p_809->g_592.s6", print_hash_value);
    transparent_crc(p_809->g_592.s7, "p_809->g_592.s7", print_hash_value);
    transparent_crc(p_809->g_614.s0, "p_809->g_614.s0", print_hash_value);
    transparent_crc(p_809->g_614.s1, "p_809->g_614.s1", print_hash_value);
    transparent_crc(p_809->g_614.s2, "p_809->g_614.s2", print_hash_value);
    transparent_crc(p_809->g_614.s3, "p_809->g_614.s3", print_hash_value);
    transparent_crc(p_809->g_614.s4, "p_809->g_614.s4", print_hash_value);
    transparent_crc(p_809->g_614.s5, "p_809->g_614.s5", print_hash_value);
    transparent_crc(p_809->g_614.s6, "p_809->g_614.s6", print_hash_value);
    transparent_crc(p_809->g_614.s7, "p_809->g_614.s7", print_hash_value);
    transparent_crc(p_809->g_614.s8, "p_809->g_614.s8", print_hash_value);
    transparent_crc(p_809->g_614.s9, "p_809->g_614.s9", print_hash_value);
    transparent_crc(p_809->g_614.sa, "p_809->g_614.sa", print_hash_value);
    transparent_crc(p_809->g_614.sb, "p_809->g_614.sb", print_hash_value);
    transparent_crc(p_809->g_614.sc, "p_809->g_614.sc", print_hash_value);
    transparent_crc(p_809->g_614.sd, "p_809->g_614.sd", print_hash_value);
    transparent_crc(p_809->g_614.se, "p_809->g_614.se", print_hash_value);
    transparent_crc(p_809->g_614.sf, "p_809->g_614.sf", print_hash_value);
    transparent_crc(p_809->g_616.s0, "p_809->g_616.s0", print_hash_value);
    transparent_crc(p_809->g_616.s1, "p_809->g_616.s1", print_hash_value);
    transparent_crc(p_809->g_616.s2, "p_809->g_616.s2", print_hash_value);
    transparent_crc(p_809->g_616.s3, "p_809->g_616.s3", print_hash_value);
    transparent_crc(p_809->g_616.s4, "p_809->g_616.s4", print_hash_value);
    transparent_crc(p_809->g_616.s5, "p_809->g_616.s5", print_hash_value);
    transparent_crc(p_809->g_616.s6, "p_809->g_616.s6", print_hash_value);
    transparent_crc(p_809->g_616.s7, "p_809->g_616.s7", print_hash_value);
    transparent_crc(p_809->g_623.x, "p_809->g_623.x", print_hash_value);
    transparent_crc(p_809->g_623.y, "p_809->g_623.y", print_hash_value);
    transparent_crc(p_809->g_623.z, "p_809->g_623.z", print_hash_value);
    transparent_crc(p_809->g_623.w, "p_809->g_623.w", print_hash_value);
    transparent_crc(p_809->g_646, "p_809->g_646", print_hash_value);
    transparent_crc(p_809->g_660.s0, "p_809->g_660.s0", print_hash_value);
    transparent_crc(p_809->g_660.s1, "p_809->g_660.s1", print_hash_value);
    transparent_crc(p_809->g_660.s2, "p_809->g_660.s2", print_hash_value);
    transparent_crc(p_809->g_660.s3, "p_809->g_660.s3", print_hash_value);
    transparent_crc(p_809->g_660.s4, "p_809->g_660.s4", print_hash_value);
    transparent_crc(p_809->g_660.s5, "p_809->g_660.s5", print_hash_value);
    transparent_crc(p_809->g_660.s6, "p_809->g_660.s6", print_hash_value);
    transparent_crc(p_809->g_660.s7, "p_809->g_660.s7", print_hash_value);
    transparent_crc(p_809->g_660.s8, "p_809->g_660.s8", print_hash_value);
    transparent_crc(p_809->g_660.s9, "p_809->g_660.s9", print_hash_value);
    transparent_crc(p_809->g_660.sa, "p_809->g_660.sa", print_hash_value);
    transparent_crc(p_809->g_660.sb, "p_809->g_660.sb", print_hash_value);
    transparent_crc(p_809->g_660.sc, "p_809->g_660.sc", print_hash_value);
    transparent_crc(p_809->g_660.sd, "p_809->g_660.sd", print_hash_value);
    transparent_crc(p_809->g_660.se, "p_809->g_660.se", print_hash_value);
    transparent_crc(p_809->g_660.sf, "p_809->g_660.sf", print_hash_value);
    transparent_crc(p_809->g_670.x, "p_809->g_670.x", print_hash_value);
    transparent_crc(p_809->g_670.y, "p_809->g_670.y", print_hash_value);
    transparent_crc(p_809->g_670.z, "p_809->g_670.z", print_hash_value);
    transparent_crc(p_809->g_670.w, "p_809->g_670.w", print_hash_value);
    transparent_crc(p_809->g_671.s0, "p_809->g_671.s0", print_hash_value);
    transparent_crc(p_809->g_671.s1, "p_809->g_671.s1", print_hash_value);
    transparent_crc(p_809->g_671.s2, "p_809->g_671.s2", print_hash_value);
    transparent_crc(p_809->g_671.s3, "p_809->g_671.s3", print_hash_value);
    transparent_crc(p_809->g_671.s4, "p_809->g_671.s4", print_hash_value);
    transparent_crc(p_809->g_671.s5, "p_809->g_671.s5", print_hash_value);
    transparent_crc(p_809->g_671.s6, "p_809->g_671.s6", print_hash_value);
    transparent_crc(p_809->g_671.s7, "p_809->g_671.s7", print_hash_value);
    transparent_crc(p_809->g_671.s8, "p_809->g_671.s8", print_hash_value);
    transparent_crc(p_809->g_671.s9, "p_809->g_671.s9", print_hash_value);
    transparent_crc(p_809->g_671.sa, "p_809->g_671.sa", print_hash_value);
    transparent_crc(p_809->g_671.sb, "p_809->g_671.sb", print_hash_value);
    transparent_crc(p_809->g_671.sc, "p_809->g_671.sc", print_hash_value);
    transparent_crc(p_809->g_671.sd, "p_809->g_671.sd", print_hash_value);
    transparent_crc(p_809->g_671.se, "p_809->g_671.se", print_hash_value);
    transparent_crc(p_809->g_671.sf, "p_809->g_671.sf", print_hash_value);
    transparent_crc(p_809->g_679, "p_809->g_679", print_hash_value);
    transparent_crc(p_809->g_706.s0, "p_809->g_706.s0", print_hash_value);
    transparent_crc(p_809->g_706.s1, "p_809->g_706.s1", print_hash_value);
    transparent_crc(p_809->g_706.s2, "p_809->g_706.s2", print_hash_value);
    transparent_crc(p_809->g_706.s3, "p_809->g_706.s3", print_hash_value);
    transparent_crc(p_809->g_706.s4, "p_809->g_706.s4", print_hash_value);
    transparent_crc(p_809->g_706.s5, "p_809->g_706.s5", print_hash_value);
    transparent_crc(p_809->g_706.s6, "p_809->g_706.s6", print_hash_value);
    transparent_crc(p_809->g_706.s7, "p_809->g_706.s7", print_hash_value);
    transparent_crc(p_809->g_706.s8, "p_809->g_706.s8", print_hash_value);
    transparent_crc(p_809->g_706.s9, "p_809->g_706.s9", print_hash_value);
    transparent_crc(p_809->g_706.sa, "p_809->g_706.sa", print_hash_value);
    transparent_crc(p_809->g_706.sb, "p_809->g_706.sb", print_hash_value);
    transparent_crc(p_809->g_706.sc, "p_809->g_706.sc", print_hash_value);
    transparent_crc(p_809->g_706.sd, "p_809->g_706.sd", print_hash_value);
    transparent_crc(p_809->g_706.se, "p_809->g_706.se", print_hash_value);
    transparent_crc(p_809->g_706.sf, "p_809->g_706.sf", print_hash_value);
    transparent_crc(p_809->g_707.x, "p_809->g_707.x", print_hash_value);
    transparent_crc(p_809->g_707.y, "p_809->g_707.y", print_hash_value);
    transparent_crc(p_809->g_708.x, "p_809->g_708.x", print_hash_value);
    transparent_crc(p_809->g_708.y, "p_809->g_708.y", print_hash_value);
    transparent_crc(p_809->g_716.s0, "p_809->g_716.s0", print_hash_value);
    transparent_crc(p_809->g_716.s1, "p_809->g_716.s1", print_hash_value);
    transparent_crc(p_809->g_716.s2, "p_809->g_716.s2", print_hash_value);
    transparent_crc(p_809->g_716.s3, "p_809->g_716.s3", print_hash_value);
    transparent_crc(p_809->g_716.s4, "p_809->g_716.s4", print_hash_value);
    transparent_crc(p_809->g_716.s5, "p_809->g_716.s5", print_hash_value);
    transparent_crc(p_809->g_716.s6, "p_809->g_716.s6", print_hash_value);
    transparent_crc(p_809->g_716.s7, "p_809->g_716.s7", print_hash_value);
    transparent_crc(p_809->g_716.s8, "p_809->g_716.s8", print_hash_value);
    transparent_crc(p_809->g_716.s9, "p_809->g_716.s9", print_hash_value);
    transparent_crc(p_809->g_716.sa, "p_809->g_716.sa", print_hash_value);
    transparent_crc(p_809->g_716.sb, "p_809->g_716.sb", print_hash_value);
    transparent_crc(p_809->g_716.sc, "p_809->g_716.sc", print_hash_value);
    transparent_crc(p_809->g_716.sd, "p_809->g_716.sd", print_hash_value);
    transparent_crc(p_809->g_716.se, "p_809->g_716.se", print_hash_value);
    transparent_crc(p_809->g_716.sf, "p_809->g_716.sf", print_hash_value);
    transparent_crc(p_809->g_727.s0, "p_809->g_727.s0", print_hash_value);
    transparent_crc(p_809->g_727.s1, "p_809->g_727.s1", print_hash_value);
    transparent_crc(p_809->g_727.s2, "p_809->g_727.s2", print_hash_value);
    transparent_crc(p_809->g_727.s3, "p_809->g_727.s3", print_hash_value);
    transparent_crc(p_809->g_727.s4, "p_809->g_727.s4", print_hash_value);
    transparent_crc(p_809->g_727.s5, "p_809->g_727.s5", print_hash_value);
    transparent_crc(p_809->g_727.s6, "p_809->g_727.s6", print_hash_value);
    transparent_crc(p_809->g_727.s7, "p_809->g_727.s7", print_hash_value);
    transparent_crc(p_809->g_727.s8, "p_809->g_727.s8", print_hash_value);
    transparent_crc(p_809->g_727.s9, "p_809->g_727.s9", print_hash_value);
    transparent_crc(p_809->g_727.sa, "p_809->g_727.sa", print_hash_value);
    transparent_crc(p_809->g_727.sb, "p_809->g_727.sb", print_hash_value);
    transparent_crc(p_809->g_727.sc, "p_809->g_727.sc", print_hash_value);
    transparent_crc(p_809->g_727.sd, "p_809->g_727.sd", print_hash_value);
    transparent_crc(p_809->g_727.se, "p_809->g_727.se", print_hash_value);
    transparent_crc(p_809->g_727.sf, "p_809->g_727.sf", print_hash_value);
    transparent_crc(p_809->g_741, "p_809->g_741", print_hash_value);
    transparent_crc(p_809->g_745.s0, "p_809->g_745.s0", print_hash_value);
    transparent_crc(p_809->g_745.s1, "p_809->g_745.s1", print_hash_value);
    transparent_crc(p_809->g_745.s2, "p_809->g_745.s2", print_hash_value);
    transparent_crc(p_809->g_745.s3, "p_809->g_745.s3", print_hash_value);
    transparent_crc(p_809->g_745.s4, "p_809->g_745.s4", print_hash_value);
    transparent_crc(p_809->g_745.s5, "p_809->g_745.s5", print_hash_value);
    transparent_crc(p_809->g_745.s6, "p_809->g_745.s6", print_hash_value);
    transparent_crc(p_809->g_745.s7, "p_809->g_745.s7", print_hash_value);
    transparent_crc(p_809->g_746.x, "p_809->g_746.x", print_hash_value);
    transparent_crc(p_809->g_746.y, "p_809->g_746.y", print_hash_value);
    transparent_crc(p_809->g_746.z, "p_809->g_746.z", print_hash_value);
    transparent_crc(p_809->g_746.w, "p_809->g_746.w", print_hash_value);
    transparent_crc(p_809->g_747.s0, "p_809->g_747.s0", print_hash_value);
    transparent_crc(p_809->g_747.s1, "p_809->g_747.s1", print_hash_value);
    transparent_crc(p_809->g_747.s2, "p_809->g_747.s2", print_hash_value);
    transparent_crc(p_809->g_747.s3, "p_809->g_747.s3", print_hash_value);
    transparent_crc(p_809->g_747.s4, "p_809->g_747.s4", print_hash_value);
    transparent_crc(p_809->g_747.s5, "p_809->g_747.s5", print_hash_value);
    transparent_crc(p_809->g_747.s6, "p_809->g_747.s6", print_hash_value);
    transparent_crc(p_809->g_747.s7, "p_809->g_747.s7", print_hash_value);
    transparent_crc(p_809->g_747.s8, "p_809->g_747.s8", print_hash_value);
    transparent_crc(p_809->g_747.s9, "p_809->g_747.s9", print_hash_value);
    transparent_crc(p_809->g_747.sa, "p_809->g_747.sa", print_hash_value);
    transparent_crc(p_809->g_747.sb, "p_809->g_747.sb", print_hash_value);
    transparent_crc(p_809->g_747.sc, "p_809->g_747.sc", print_hash_value);
    transparent_crc(p_809->g_747.sd, "p_809->g_747.sd", print_hash_value);
    transparent_crc(p_809->g_747.se, "p_809->g_747.se", print_hash_value);
    transparent_crc(p_809->g_747.sf, "p_809->g_747.sf", print_hash_value);
    transparent_crc(p_809->g_748.x, "p_809->g_748.x", print_hash_value);
    transparent_crc(p_809->g_748.y, "p_809->g_748.y", print_hash_value);
    transparent_crc(p_809->g_748.z, "p_809->g_748.z", print_hash_value);
    transparent_crc(p_809->g_748.w, "p_809->g_748.w", print_hash_value);
    transparent_crc(p_809->g_749.s0, "p_809->g_749.s0", print_hash_value);
    transparent_crc(p_809->g_749.s1, "p_809->g_749.s1", print_hash_value);
    transparent_crc(p_809->g_749.s2, "p_809->g_749.s2", print_hash_value);
    transparent_crc(p_809->g_749.s3, "p_809->g_749.s3", print_hash_value);
    transparent_crc(p_809->g_749.s4, "p_809->g_749.s4", print_hash_value);
    transparent_crc(p_809->g_749.s5, "p_809->g_749.s5", print_hash_value);
    transparent_crc(p_809->g_749.s6, "p_809->g_749.s6", print_hash_value);
    transparent_crc(p_809->g_749.s7, "p_809->g_749.s7", print_hash_value);
    transparent_crc(p_809->g_749.s8, "p_809->g_749.s8", print_hash_value);
    transparent_crc(p_809->g_749.s9, "p_809->g_749.s9", print_hash_value);
    transparent_crc(p_809->g_749.sa, "p_809->g_749.sa", print_hash_value);
    transparent_crc(p_809->g_749.sb, "p_809->g_749.sb", print_hash_value);
    transparent_crc(p_809->g_749.sc, "p_809->g_749.sc", print_hash_value);
    transparent_crc(p_809->g_749.sd, "p_809->g_749.sd", print_hash_value);
    transparent_crc(p_809->g_749.se, "p_809->g_749.se", print_hash_value);
    transparent_crc(p_809->g_749.sf, "p_809->g_749.sf", print_hash_value);
    transparent_crc(p_809->g_750.x, "p_809->g_750.x", print_hash_value);
    transparent_crc(p_809->g_750.y, "p_809->g_750.y", print_hash_value);
    transparent_crc(p_809->g_750.z, "p_809->g_750.z", print_hash_value);
    transparent_crc(p_809->g_750.w, "p_809->g_750.w", print_hash_value);
    transparent_crc(p_809->g_752.s0, "p_809->g_752.s0", print_hash_value);
    transparent_crc(p_809->g_752.s1, "p_809->g_752.s1", print_hash_value);
    transparent_crc(p_809->g_752.s2, "p_809->g_752.s2", print_hash_value);
    transparent_crc(p_809->g_752.s3, "p_809->g_752.s3", print_hash_value);
    transparent_crc(p_809->g_752.s4, "p_809->g_752.s4", print_hash_value);
    transparent_crc(p_809->g_752.s5, "p_809->g_752.s5", print_hash_value);
    transparent_crc(p_809->g_752.s6, "p_809->g_752.s6", print_hash_value);
    transparent_crc(p_809->g_752.s7, "p_809->g_752.s7", print_hash_value);
    transparent_crc(p_809->g_753.x, "p_809->g_753.x", print_hash_value);
    transparent_crc(p_809->g_753.y, "p_809->g_753.y", print_hash_value);
    transparent_crc(p_809->g_792.s0, "p_809->g_792.s0", print_hash_value);
    transparent_crc(p_809->g_792.s1, "p_809->g_792.s1", print_hash_value);
    transparent_crc(p_809->g_792.s2, "p_809->g_792.s2", print_hash_value);
    transparent_crc(p_809->g_792.s3, "p_809->g_792.s3", print_hash_value);
    transparent_crc(p_809->g_792.s4, "p_809->g_792.s4", print_hash_value);
    transparent_crc(p_809->g_792.s5, "p_809->g_792.s5", print_hash_value);
    transparent_crc(p_809->g_792.s6, "p_809->g_792.s6", print_hash_value);
    transparent_crc(p_809->g_792.s7, "p_809->g_792.s7", print_hash_value);
    transparent_crc(p_809->g_792.s8, "p_809->g_792.s8", print_hash_value);
    transparent_crc(p_809->g_792.s9, "p_809->g_792.s9", print_hash_value);
    transparent_crc(p_809->g_792.sa, "p_809->g_792.sa", print_hash_value);
    transparent_crc(p_809->g_792.sb, "p_809->g_792.sb", print_hash_value);
    transparent_crc(p_809->g_792.sc, "p_809->g_792.sc", print_hash_value);
    transparent_crc(p_809->g_792.sd, "p_809->g_792.sd", print_hash_value);
    transparent_crc(p_809->g_792.se, "p_809->g_792.se", print_hash_value);
    transparent_crc(p_809->g_792.sf, "p_809->g_792.sf", print_hash_value);
    transparent_crc(p_809->g_805, "p_809->g_805", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
