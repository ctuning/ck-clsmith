// ---fake_divergence -g 72,69,1 -l 1,3,1
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


// Seed: 119

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_4;
    int32_t g_9;
    int32_t * volatile g_10;
    int32_t g_11;
    VECTOR(int16_t, 2) g_16;
    uint32_t g_75;
    int8_t g_89;
    VECTOR(uint64_t, 4) g_97;
    VECTOR(int8_t, 2) g_100;
    int32_t * volatile g_108;
    int32_t g_110[3][1][4];
    uint32_t *g_127;
    volatile uint32_t *g_129;
    volatile uint32_t **g_128;
    volatile VECTOR(uint8_t, 4) g_151;
    uint8_t g_162[2][1][6];
    VECTOR(int32_t, 8) g_167;
    VECTOR(int32_t, 2) g_169;
    VECTOR(uint64_t, 8) g_170;
    volatile VECTOR(uint64_t, 8) g_174;
    VECTOR(uint64_t, 8) g_175;
    VECTOR(uint64_t, 8) g_177;
    int64_t g_179;
    volatile VECTOR(uint16_t, 2) g_199;
    uint8_t g_208;
    uint8_t g_210;
    uint64_t *g_219;
    volatile uint64_t *g_221;
    int8_t *g_237;
    int8_t **g_236[8];
    VECTOR(int32_t, 2) g_242;
    int32_t *g_251[2];
    int32_t ** volatile g_250;
    uint16_t g_299;
    volatile int16_t g_335;
    volatile int16_t * volatile g_334[7][4];
    int32_t g_337;
    int32_t g_364;
    int32_t ** volatile g_368;
    volatile uint32_t g_394;
    VECTOR(int32_t, 8) g_404;
    volatile VECTOR(uint64_t, 16) g_423;
    int32_t ** volatile g_434;
    uint32_t *g_449;
    volatile VECTOR(int32_t, 8) g_453;
    int16_t g_476;
    int16_t g_478;
    int16_t g_505;
    volatile VECTOR(uint8_t, 2) g_554;
    VECTOR(uint64_t, 8) g_556;
    uint32_t **g_579[8];
    uint32_t ***g_578;
    uint32_t **** volatile g_577;
    uint64_t g_585[2];
    uint64_t g_600;
    volatile VECTOR(uint32_t, 8) g_612;
    VECTOR(uint16_t, 4) g_613;
    volatile VECTOR(uint16_t, 2) g_614;
    volatile VECTOR(uint32_t, 16) g_615;
    volatile VECTOR(uint32_t, 4) g_616;
    VECTOR(int8_t, 2) g_674;
    int8_t *** volatile g_685[8][10][3];
    VECTOR(int8_t, 2) g_719;
    int32_t * volatile g_744;
    int32_t * volatile g_748[5][8][6];
    VECTOR(uint16_t, 2) g_760;
    VECTOR(uint32_t, 16) g_766;
    VECTOR(uint16_t, 8) g_768;
    VECTOR(uint16_t, 2) g_769;
    uint16_t g_782[5][3][10];
    uint32_t g_783;
    VECTOR(uint64_t, 2) g_807;
    volatile VECTOR(uint32_t, 2) g_810;
    uint32_t ****g_817;
    int32_t ** volatile g_822;
    int32_t ** volatile g_825;
    uint32_t g_850;
    VECTOR(uint8_t, 16) g_893;
    volatile int8_t g_907;
    int32_t ** volatile g_917;
    uint16_t *g_930;
    uint16_t **g_929;
    VECTOR(uint32_t, 16) g_940;
    volatile VECTOR(uint32_t, 8) g_941;
    uint32_t **g_961;
    VECTOR(int64_t, 8) g_970;
    volatile VECTOR(int64_t, 8) g_971;
    volatile uint8_t g_1032[9];
    VECTOR(int8_t, 2) g_1036;
    VECTOR(uint8_t, 2) g_1044;
    int32_t ** volatile g_1052;
    int32_t ** volatile g_1053;
    volatile VECTOR(uint16_t, 2) g_1062;
    volatile VECTOR(uint16_t, 16) g_1064;
    volatile VECTOR(uint16_t, 8) g_1066;
    VECTOR(int16_t, 4) g_1067;
    int64_t g_1098[5];
    VECTOR(uint32_t, 2) g_1119;
    VECTOR(uint8_t, 2) g_1132;
    volatile uint32_t g_1151[4][5][3];
    int32_t ** volatile g_1153[5][4][5];
    VECTOR(int16_t, 2) g_1158;
    VECTOR(int32_t, 8) g_1182;
    volatile VECTOR(int32_t, 2) g_1183;
    VECTOR(int8_t, 16) g_1204;
    int16_t *g_1225;
    int64_t *g_1232[10][7][3];
    int64_t **g_1231[6];
    volatile VECTOR(uint32_t, 16) g_1252;
    volatile VECTOR(uint32_t, 4) g_1253;
    volatile VECTOR(int64_t, 8) g_1273;
    VECTOR(int32_t, 16) g_1311;
    VECTOR(int32_t, 16) g_1312;
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
int32_t  func_1(struct S0 * p_1351);
int32_t  func_5(int64_t  p_6, struct S0 * p_1351);
int32_t  func_19(uint32_t * p_20, uint32_t * p_21, struct S0 * p_1351);
uint32_t * func_23(uint32_t  p_24, uint32_t * p_25, uint64_t  p_26, int32_t  p_27, uint16_t  p_28, struct S0 * p_1351);
int8_t  func_32(int32_t * p_33, int32_t * p_34, int32_t * p_35, int64_t  p_36, struct S0 * p_1351);
int32_t * func_41(int32_t * p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, struct S0 * p_1351);
int32_t * func_46(int32_t  p_47, struct S0 * p_1351);
int32_t  func_55(int8_t  p_56, uint32_t  p_57, uint64_t  p_58, int32_t  p_59, struct S0 * p_1351);
int32_t  func_60(int32_t * p_61, int32_t  p_62, struct S0 * p_1351);
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int8_t  p_66, struct S0 * p_1351);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1351->g_9 p_1351->g_11 p_1351->g_16 p_1351->g_75 p_1351->g_97 p_1351->g_89 p_1351->g_128 p_1351->g_110 p_1351->g_162 p_1351->g_100 p_1351->g_219 p_1351->g_221 p_1351->g_174 p_1351->g_236 p_1351->g_127 p_1351->g_250 p_1351->g_179 p_1351->g_175 p_1351->g_199 p_1351->g_167 p_1351->g_299 p_1351->g_170 p_1351->g_334 p_1351->g_364 p_1351->g_251 p_1351->g_242 p_1351->g_169 p_1351->g_394 p_1351->g_404 p_1351->g_600 p_1351->g_612 p_1351->g_613 p_1351->g_614 p_1351->g_615 p_1351->g_616 p_1351->g_478 p_1351->g_674 p_1351->g_556 p_1351->g_585 p_1351->g_577 p_1351->g_578 p_1351->g_579 p_1351->g_719 p_1351->g_129 p_1351->g_744 p_1351->g_554 p_1351->g_760 p_1351->g_766 p_1351->g_768 p_1351->g_769 p_1351->g_505 p_1351->g_4 p_1351->g_782 p_1351->g_822 p_1351->g_825 p_1351->g_210 p_1351->g_850 p_1351->g_476 p_1351->g_893 p_1351->g_337 p_1351->g_434 p_1351->g_917 p_1351->g_940 p_1351->g_941 p_1351->g_783 p_1351->g_970 p_1351->g_971 p_1351->g_907 p_1351->g_1032 p_1351->g_807 p_1351->g_1036 p_1351->g_1044 p_1351->g_1053 p_1351->g_1062 p_1351->g_1064 p_1351->g_1066 p_1351->g_1067 p_1351->g_1098 p_1351->g_1119 p_1351->g_1158 p_1351->g_1182 p_1351->g_1183 p_1351->g_930 p_1351->g_453 p_1351->g_810 p_1351->g_1204 p_1351->g_1231 p_1351->g_423 p_1351->g_1252 p_1351->g_1253 p_1351->g_151 p_1351->g_1273 p_1351->g_1311 p_1351->g_1312 p_1351->g_208 p_1351->g_1132 p_1351->g_237 p_1351->g_1225
 * writes: p_1351->g_4 p_1351->g_9 p_1351->g_11 p_1351->g_89 p_1351->g_110 p_1351->g_75 p_1351->g_127 p_1351->g_162 p_1351->g_100 p_1351->g_208 p_1351->g_219 p_1351->g_108 p_1351->g_236 p_1351->g_251 p_1351->g_179 p_1351->g_16 p_1351->g_210 p_1351->g_299 p_1351->g_237 p_1351->g_337 p_1351->g_364 p_1351->g_478 p_1351->g_613 p_1351->g_579 p_1351->g_476 p_1351->g_505 p_1351->g_783 p_1351->g_817 p_1351->g_929 p_1351->g_782 p_1351->g_807 p_1351->g_1044 p_1351->g_600 p_1351->g_769 p_1351->g_930 p_1351->g_1225 p_1351->g_850 p_1351->g_170
 */
int32_t  func_1(struct S0 * p_1351)
{ /* block id: 4 */
    uint64_t l_2 = 0x0693E9323D1BCA9DL;
    uint32_t *l_3 = &p_1351->g_4;
    int32_t l_771 = 0x11D1FC95L;
    int32_t l_797 = 0x26A1EB3FL;
    int32_t l_798 = 0x6BBFE9E9L;
    uint32_t ****l_818 = &p_1351->g_578;
    int16_t l_838 = 0x1EE5L;
    int8_t l_844 = 0L;
    VECTOR(int32_t, 2) l_854 = (VECTOR(int32_t, 2))(0x2BE49F76L, 7L);
    VECTOR(uint64_t, 2) l_863 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x460B477CC0DB0E30L);
    uint64_t l_870 = 1UL;
    int64_t *l_881 = (void*)0;
    VECTOR(uint64_t, 16) l_939 = (VECTOR(uint64_t, 16))(0x994C9B36CD628C44L, (VECTOR(uint64_t, 4))(0x994C9B36CD628C44L, (VECTOR(uint64_t, 2))(0x994C9B36CD628C44L, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 0x994C9B36CD628C44L, 18446744073709551612UL, (VECTOR(uint64_t, 2))(0x994C9B36CD628C44L, 18446744073709551612UL), (VECTOR(uint64_t, 2))(0x994C9B36CD628C44L, 18446744073709551612UL), 0x994C9B36CD628C44L, 18446744073709551612UL, 0x994C9B36CD628C44L, 18446744073709551612UL);
    int32_t l_997 = 0x63FF1A3AL;
    int32_t *l_1043 = (void*)0;
    int32_t l_1087 = 1L;
    uint16_t *l_1186 = (void*)0;
    int32_t *l_1195 = &p_1351->g_9;
    int8_t **l_1235 = &p_1351->g_237;
    int64_t ***l_1298[7];
    int64_t ****l_1297 = &l_1298[0];
    VECTOR(int32_t, 4) l_1310 = (VECTOR(int32_t, 4))(0x46637033L, (VECTOR(int32_t, 2))(0x46637033L, (-3L)), (-3L));
    uint16_t l_1343 = 0x0A87L;
    int8_t l_1344 = 0x7FL;
    int32_t *l_1345[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t l_1346 = (-1L);
    int32_t l_1347 = 1L;
    uint64_t l_1348 = 0UL;
    int i;
    for (i = 0; i < 7; i++)
        l_1298[i] = (void*)0;
    if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(0x71BF506EL, 0x30CEAFD9L)), (int32_t)(((*l_3) = l_2) | ((void*)0 == l_3))))))).even)
    { /* block id: 6 */
        int64_t l_729 = 0x412390085ABEF0E2L;
        int32_t l_742 = 0x595AE978L;
        VECTOR(int16_t, 4) l_761 = (VECTOR(int16_t, 4))(0x2BBDL, (VECTOR(int16_t, 2))(0x2BBDL, 0x4843L), 0x4843L);
        int32_t *l_824 = &l_797;
        int32_t l_901[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int16_t l_904 = (-4L);
        int64_t **l_916[2][3][2];
        int64_t ***l_915[9] = {&l_916[1][1][0],&l_916[0][2][0],&l_916[1][1][0],&l_916[1][1][0],&l_916[0][2][0],&l_916[1][1][0],&l_916[1][1][0],&l_916[0][2][0],&l_916[1][1][0]};
        VECTOR(int64_t, 4) l_969 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-6L)), (-6L));
        uint16_t **l_988 = &p_1351->g_930;
        uint32_t ****l_1013 = &p_1351->g_578;
        int64_t l_1015 = 0x705AE0159FE9A335L;
        uint64_t *l_1022 = (void*)0;
        VECTOR(int64_t, 2) l_1023 = (VECTOR(int64_t, 2))(0x78E8E165DC3BCFF4L, 6L);
        VECTOR(uint32_t, 4) l_1024 = (VECTOR(uint32_t, 4))(0xABBC2F18L, (VECTOR(uint32_t, 2))(0xABBC2F18L, 0x0BFCFA2EL), 0x0BFCFA2EL);
        int32_t *l_1027 = &l_997;
        VECTOR(int8_t, 16) l_1028 = (VECTOR(int8_t, 16))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 0x3BL), 0x3BL), 0x3BL, 0x6CL, 0x3BL, (VECTOR(int8_t, 2))(0x6CL, 0x3BL), (VECTOR(int8_t, 2))(0x6CL, 0x3BL), 0x6CL, 0x3BL, 0x6CL, 0x3BL);
        uint64_t *l_1033 = (void*)0;
        int8_t *l_1037 = &p_1351->g_89;
        uint32_t l_1047 = 7UL;
        VECTOR(uint16_t, 4) l_1065 = (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 65534UL), 65534UL);
        uint64_t l_1194 = 0x30BB234551C9A5B9L;
        int8_t ***l_1197[7][5] = {{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]},{&p_1351->g_236[1],&p_1351->g_236[7],&p_1351->g_236[2],&p_1351->g_236[0],&p_1351->g_236[0]}};
        int8_t l_1216 = 0x19L;
        VECTOR(int32_t, 4) l_1267 = (VECTOR(int32_t, 4))(0x240AB7ADL, (VECTOR(int32_t, 2))(0x240AB7ADL, 8L), 8L);
        uint32_t l_1268 = 0x2679C349L;
        uint8_t l_1269 = 0x2AL;
        uint32_t *l_1270 = &p_1351->g_850;
        uint16_t l_1296 = 65535UL;
        uint16_t l_1301[3][4] = {{0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL}};
        uint32_t **l_1309 = &p_1351->g_449;
        VECTOR(int32_t, 8) l_1322 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x42EB6804L), 0x42EB6804L), 0x42EB6804L, 0L, 0x42EB6804L);
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
            {
                for (k = 0; k < 2; k++)
                    l_916[i][j][k] = &l_881;
            }
        }
        if (func_5(((void*)0 != &p_1351->g_4), p_1351))
        { /* block id: 314 */
            uint8_t l_740 = 255UL;
            int32_t *l_751 = (void*)0;
            uint32_t ****l_816 = &p_1351->g_578;
            int32_t l_821 = (-1L);
            if (l_729)
            { /* block id: 315 */
                uint32_t l_730[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_730[i] = 0xF802F134L;
                return l_730[1];
            }
            else
            { /* block id: 317 */
                int32_t l_739 = 0x3274D903L;
                int8_t *l_741 = (void*)0;
                uint64_t *l_743 = (void*)0;
                VECTOR(uint16_t, 8) l_767 = (VECTOR(uint16_t, 8))(0x5466L, (VECTOR(uint16_t, 4))(0x5466L, (VECTOR(uint16_t, 2))(0x5466L, 3UL), 3UL), 3UL, 0x5466L, 3UL);
                int64_t l_770 = (-1L);
                VECTOR(int32_t, 16) l_777 = (VECTOR(int32_t, 16))(0x474F95B2L, (VECTOR(int32_t, 4))(0x474F95B2L, (VECTOR(int32_t, 2))(0x474F95B2L, 5L), 5L), 5L, 0x474F95B2L, 5L, (VECTOR(int32_t, 2))(0x474F95B2L, 5L), (VECTOR(int32_t, 2))(0x474F95B2L, 5L), 0x474F95B2L, 5L, 0x474F95B2L, 5L);
                int16_t l_796 = 0L;
                int i;
                if (((l_742 ^= (safe_mod_func_int64_t_s_s(0x3189F8C6990EC943L, (p_1351->g_394 || (safe_sub_func_int64_t_s_s((((safe_mul_func_int16_t_s_s((((void*)0 == (*p_1351->g_128)) || 0x63BFL), l_729)) & 0xA0C210954C056C86L) < ((safe_mod_func_int8_t_s_s((l_739 >= 0x677C8095741363A3L), l_740)) <= GROUP_DIVERGE(2, 1))), l_740)))))) && 0L))
                { /* block id: 319 */
                    int16_t l_747 = 4L;
                    (*p_1351->g_744) = ((void*)0 != l_743);
                    for (p_1351->g_75 = (-2); (p_1351->g_75 >= 35); ++p_1351->g_75)
                    { /* block id: 323 */
                        int32_t *l_749 = &p_1351->g_110[0][0][3];
                        int32_t **l_750[1];
                        int32_t l_772 = 0x00887225L;
                        int16_t *l_773 = &p_1351->g_505;
                        int64_t *l_776 = &l_729;
                        int64_t **l_775 = &l_776;
                        int64_t ***l_774 = &l_775;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_750[i] = &p_1351->g_251[1];
                        (*l_749) = l_747;
                        if (l_739)
                            break;
                        l_751 = &l_742;
                        l_777.s5 = (safe_mul_func_uint16_t_u_u(7UL, (p_1351->g_554.y != (safe_sub_func_int64_t_s_s(l_2, (l_771 = (((safe_lshift_func_int16_t_s_s(((*l_773) = (FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10) || (safe_sub_func_uint8_t_u_u(((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_1351->g_760.xxxy)).wzwwwwwy)).s2 & ((VECTOR(int16_t, 2))(l_761.yx)).odd) | ((*l_3) &= ((l_747 <= ((safe_mul_func_uint16_t_u_u(((*l_751) = ((((+0x63985F2BEA2B8882L) >= 0xB56A9AC57609CE05L) | (safe_add_func_uint16_t_u_u((((VECTOR(uint32_t, 2))(p_1351->g_766.s89)).hi , ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(l_767.s46601462)), ((VECTOR(uint16_t, 2))(p_1351->g_768.s27)).yxxxyxyy))).s6), ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(p_1351->g_769.yxxxyyyy)).even, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))((&p_1351->g_299 == &p_1351->g_299), 0xD32AL, ((VECTOR(uint16_t, 2))(0x45D8L)), GROUP_DIVERGE(2, 1), 0xC39CL, 2UL, 0x4B7AL, ((VECTOR(uint16_t, 4))(1UL)), FAKE_DIVERGE(p_1351->local_1_offset, get_local_id(1), 10), p_1351->g_242.x, 0x46ADL, 0xB532L)).s6f30)).xxzxwxxwyzxyyxzz, (uint16_t)l_770, (uint16_t)FAKE_DIVERGE(p_1351->global_1_offset, get_global_id(1), 10)))).sdba2, ((VECTOR(uint16_t, 4))(65534UL)), ((VECTOR(uint16_t, 4))(65531UL))))).wxyyxzxx, ((VECTOR(uint16_t, 8))(0xEABBL))))).s32)).xyxyxxxx, ((VECTOR(uint16_t, 8))(8UL))))), (uint16_t)0x22E5L, (uint16_t)p_1351->g_478))).s57, ((VECTOR(uint16_t, 2))(0x056EL))))).yxyyyyyyyxyyxxxy)).even)).s21, ((VECTOR(uint16_t, 2))(0xD6A6L))))).yxxx))).z))) || l_771)), p_1351->g_505)) >= 0UL)) , l_767.s6))), l_772)))), 9)) , (void*)0) != l_774)))))));
                    }
                }
                else
                { /* block id: 333 */
                    return l_777.s6;
                }
                for (l_770 = 29; (l_770 < 6); l_770 = safe_sub_func_int64_t_s_s(l_770, 6))
                { /* block id: 338 */
                    uint32_t l_791[1][4][4] = {{{0xD8C9211FL,0xCE1BB2B2L,0xD8C9211FL,0xD8C9211FL},{0xD8C9211FL,0xCE1BB2B2L,0xD8C9211FL,0xD8C9211FL},{0xD8C9211FL,0xCE1BB2B2L,0xD8C9211FL,0xD8C9211FL},{0xD8C9211FL,0xCE1BB2B2L,0xD8C9211FL,0xD8C9211FL}}};
                    int64_t *l_815 = &l_729;
                    int32_t *l_819 = (void*)0;
                    int32_t *l_820 = &l_797;
                    int i, j, k;
                    for (p_1351->g_9 = (-18); (p_1351->g_9 < 1); p_1351->g_9++)
                    { /* block id: 341 */
                        int64_t *l_788[1];
                        int32_t **l_799 = &p_1351->g_251[1];
                        uint16_t **l_802 = (void*)0;
                        int8_t *l_805 = (void*)0;
                        int8_t *l_806 = &p_1351->g_89;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_788[i] = (void*)0;
                        (*l_799) = func_23((p_1351->g_783 = p_1351->g_782[3][0][5]), func_46(((safe_mod_func_int64_t_s_s((l_771 |= (safe_add_func_uint16_t_u_u(0UL, p_1351->g_616.y))), (safe_sub_func_uint16_t_u_u(l_791[0][3][0], ((safe_mod_func_uint8_t_u_u((((p_1351->g_782[4][0][2] >= (safe_sub_func_uint64_t_u_u((l_741 != (void*)0), l_796))) > ((((VECTOR(uint64_t, 2))(2UL, 0xA451F31048DF74CDL)).odd && ((VECTOR(int64_t, 4))(8L, ((VECTOR(int64_t, 2))((-8L), 0x7C64F443685A05D7L)), 0L)).z) & ((l_797 , 2L) || l_2))) == l_2), p_1351->g_175.s6)) , l_798))))) >= 0L), p_1351), l_791[0][1][3], p_1351->g_299, p_1351->g_760.y, p_1351);
                        l_777.s0 = ((p_1351->g_219 != (void*)0) , (((safe_add_func_uint32_t_u_u(((*l_3) ^= (l_802 == (void*)0)), (0x2843L || (safe_mul_func_int8_t_s_s((((*l_806) = 0x10L) || (((VECTOR(uint64_t, 2))(7UL, 0UL)).odd || 0x2052153A0C1F5395L)), GROUP_DIVERGE(1, 1)))))) || l_791[0][0][3]) & ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(p_1351->g_807.xxyyyxxx)))), (uint64_t)GROUP_DIVERGE(2, 1)))).s0));
                        if (l_796)
                            continue;
                        (*l_799) = (*p_1351->g_250);
                    }
                    l_821 = ((*l_820) = (!(((*l_815) &= (safe_lshift_func_int8_t_s_s((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(0x6898137AL, ((VECTOR(uint32_t, 4))(p_1351->g_810.yyyy)), 0x42A23CACL, 0xC8DCFEBAL, 5UL)).lo)).z == (safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(l_770, l_2)), (((void*)0 != &p_1351->g_251[0]) , (-10L))))), 7))) & ((p_1351->g_817 = l_816) == l_818))));
                }
                (*p_1351->g_822) = (*p_1351->g_250);
                l_777.s5 = (safe_unary_minus_func_uint32_t_u(0x8C90239FL));
            }
        }
        else
        { /* block id: 359 */
            VECTOR(int16_t, 2) l_832 = (VECTOR(int16_t, 2))((-6L), 0x2899L);
            int32_t l_834[4][9][7] = {{{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L}},{{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L}},{{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L}},{{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L},{0x3E09E7B2L,1L,(-1L),0x13C5249EL,1L,1L,0x50E73808L}}};
            int32_t l_846 = 0x41A9D0CEL;
            int16_t l_903 = 0x48DFL;
            int32_t l_974 = 0x0663D7BDL;
            VECTOR(uint64_t, 4) l_1009 = (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 18446744073709551615UL), 18446744073709551615UL);
            uint32_t ****l_1014 = &p_1351->g_578;
            int i, j, k;
lbl_849:
            l_824 = &l_771;
            (*p_1351->g_825) = &l_742;
            if ((p_1351->g_210 , 9L))
            { /* block id: 362 */
                int16_t *l_833 = (void*)0;
                int8_t *l_841 = &p_1351->g_89;
                int32_t l_845 = 0x267BDBA3L;
                uint16_t l_871 = 4UL;
                int32_t l_905 = 9L;
                int32_t l_906[4];
                uint32_t **l_957 = &l_3;
                int8_t l_966 = 0x08L;
                int8_t l_993[7][4][4] = {{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}},{{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L},{(-9L),0x6FL,0L,1L}}};
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_906[i] = 0x66F1C3EAL;
                if (((safe_rshift_func_uint16_t_u_s(((!(*l_824)) >= ((safe_lshift_func_int8_t_s_s((safe_div_func_int16_t_s_s((+((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(l_832.yyyxyxyy)).s6550054655001624))).se), (l_834[0][4][4] = l_832.y))), (safe_unary_minus_func_int32_t_s((safe_rshift_func_int8_t_s_u(l_838, (safe_rshift_func_int8_t_s_u(((*l_841) = (*l_824)), ((safe_lshift_func_uint8_t_u_s(p_1351->g_760.x, l_844)) && l_845))))))))) | (-2L))), (p_1351->g_16.y = (l_838 >= l_844)))) , l_846))
                { /* block id: 366 */
                    int32_t *l_851 = &l_834[2][7][2];
                    int64_t *l_880 = &p_1351->g_179;
                    uint32_t ***l_885 = &p_1351->g_579[5];
                    int32_t l_902 = 0x52D0E484L;
                    uint64_t l_908 = 0x3EA7314B30D92875L;
                    for (l_742 = 7; (l_742 > (-17)); l_742 = safe_sub_func_uint64_t_u_u(l_742, 4))
                    { /* block id: 369 */
                        if (l_846)
                            goto lbl_849;
                        return p_1351->g_850;
                    }
                    (*p_1351->g_822) = (l_845 , l_851);
                    for (l_798 = 11; (l_798 < (-11)); l_798 = safe_sub_func_int8_t_s_s(l_798, 6))
                    { /* block id: 376 */
                        int8_t l_859[5];
                        uint32_t ***l_860[9] = {(void*)0,&p_1351->g_579[2],(void*)0,(void*)0,&p_1351->g_579[2],(void*)0,(void*)0,&p_1351->g_579[2],(void*)0};
                        VECTOR(int8_t, 4) l_864 = (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 5L), 5L);
                        int32_t l_869[1];
                        int64_t **l_882 = &l_881;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_859[i] = 0x32L;
                        for (i = 0; i < 1; i++)
                            l_869[i] = 0x0F889BFAL;
                        l_871 ^= ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(l_854.xxxx)).xyzwzxwyxwywyzxw, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x708DA3DBL, (safe_lshift_func_int8_t_s_u((((safe_add_func_uint64_t_u_u(((void*)0 == &p_1351->g_578), l_859[2])) <= (((l_860[7] != (void*)0) , (safe_sub_func_uint8_t_u_u((((VECTOR(int8_t, 4))((p_1351->g_110[0][0][0] < ((VECTOR(uint64_t, 2))(l_863.xx)).lo), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_864.ywyx)).hi)), (-4L))).w >= ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(0x2CL, 0xD7L)).xxxx, (uint8_t)(safe_mul_func_int16_t_s_s((((*l_824) <= (safe_mod_func_int8_t_s_s((*l_851), 0x0CL))) , (*l_851)), l_846)), (uint8_t)p_1351->g_404.s3))).zxzwxyxz, (uint8_t)1UL))).s1), l_869[0]))) ^ l_870)) <= l_864.z), l_846)), 0L, (*p_1351->g_744), 0x6C64F369L, 0x6C1F442DL, 0x1CFC37BEL, 0x42A6FDFDL)).s42)), 0x67D14293L, 0x78736F05L)).odd))))).xxyxxxxxyxxyxxyy, ((VECTOR(int32_t, 16))(1L))))).sf;
                        l_854.x |= ((*p_1351->g_822) != ((safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((((*l_824) = (safe_sub_func_int32_t_s_s((safe_add_func_int64_t_s_s((l_880 != (p_1351->g_476 , ((*l_882) = l_881))), ((*l_880) = 0L))), (((((safe_lshift_func_int16_t_s_u((l_885 == ((((((safe_mod_func_uint16_t_u_u(p_1351->g_9, 1UL)) > (-1L)) , l_859[2]) < l_798) , (*l_851)) , (*l_818))), p_1351->g_613.y)) , FAKE_DIVERGE(p_1351->global_2_offset, get_global_id(2), 10)) >= 0x72CF4CD6FFFA50D7L) & (*l_824)) == 255UL)))) && l_846), l_845)), 0x2CAE945406EDE336L)) , &p_1351->g_9));
                        if (l_846)
                            continue;
                    }
                    for (l_846 = 0; (l_846 == (-24)); l_846--)
                    { /* block id: 386 */
                        int64_t l_890 = 0x4F0249EFF8BC5D48L;
                        int32_t l_894[4] = {(-1L),(-1L),(-1L),(-1L)};
                        int32_t *l_895 = &p_1351->g_110[0][0][3];
                        int32_t *l_896 = &p_1351->g_110[0][0][3];
                        int32_t *l_897 = &l_894[1];
                        int32_t *l_898 = &l_742;
                        int32_t *l_899 = &l_771;
                        int32_t *l_900[9][6] = {{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_894[2],(void*)0,(void*)0}};
                        int i, j;
                        if (l_890)
                            break;
                        l_894[2] = (safe_sub_func_int8_t_s_s(2L, ((*l_841) = ((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(p_1351->g_893.s9af069f6)))).s5 || p_1351->g_337) > l_845))));
                        ++l_908;
                    }
                }
                else
                { /* block id: 392 */
                    uint16_t *l_924 = &p_1351->g_782[1][0][9];
                    uint16_t **l_923 = &l_924;
                    uint16_t ***l_925 = (void*)0;
                    uint16_t ***l_926 = (void*)0;
                    uint16_t ***l_927 = (void*)0;
                    uint16_t ***l_928[7][4][9];
                    uint32_t *l_942 = &p_1351->g_783;
                    int32_t l_945 = 1L;
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 9; k++)
                                l_928[i][j][k] = (void*)0;
                        }
                    }
                    for (l_904 = 0; (l_904 < 0); l_904 = safe_add_func_uint32_t_u_u(l_904, 9))
                    { /* block id: 395 */
                        (*l_824) = (safe_add_func_uint32_t_u_u(0UL, ((void*)0 != l_915[7])));
                        l_797 ^= l_832.x;
                        (*p_1351->g_917) = (*p_1351->g_434);
                    }
                    l_945 &= ((p_1351->g_221 == ((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(((*l_841) ^= (((p_1351->g_16.x = (safe_unary_minus_func_uint64_t_u(0x466B92C48EACCCD0L))) || ((p_1351->g_929 = l_923) == (void*)0)) , (safe_lshift_func_uint16_t_u_s(((**l_923) = (safe_lshift_func_int16_t_s_u(0x083BL, 5))), 13)))), ((l_871 != ((safe_mod_func_uint64_t_u_u(((1L | (((!(safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(l_939.s9c)).even, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(p_1351->g_940.s1a5a5ead862ddcf6)).odd)).lo, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))(p_1351->g_941.s3725)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((*l_942) ^= FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10)), 4294967289UL, (*l_824), ((((safe_add_func_uint32_t_u_u((l_2 & l_871), l_832.x)) != (*p_1351->g_744)) > l_798) & l_834[3][4][5]), p_1351->g_242.y, 0UL, 0x2A5B9907L, 4294967293UL)))).lo))).zyxwzywxzxwxzwzw)).scc86))).y))) >= p_1351->g_613.y) , l_2)) && (*l_824)), p_1351->g_769.x)) <= 0xBF3305CD90299961L)) ^ 255UL))) >= p_1351->g_169.y), l_798)) , p_1351->g_221)) <= 4294967288UL);
                }
                for (p_1351->g_210 = 10; (p_1351->g_210 == 31); ++p_1351->g_210)
                { /* block id: 409 */
                    uint64_t *l_954 = &p_1351->g_585[1];
                    uint32_t ***l_958 = (void*)0;
                    uint32_t **l_960[7] = {&p_1351->g_449,&p_1351->g_449,&p_1351->g_449,&p_1351->g_449,&p_1351->g_449,&p_1351->g_449,&p_1351->g_449};
                    uint32_t ***l_959[4] = {&l_960[6],&l_960[6],&l_960[6],&l_960[6]};
                    int32_t *l_967 = (void*)0;
                    int32_t *l_968 = (void*)0;
                    uint32_t *l_983 = (void*)0;
                    uint32_t *l_984 = &p_1351->g_783;
                    uint16_t **l_987 = &p_1351->g_930;
                    int32_t *l_996 = &l_901[7];
                    int i;
                    l_834[2][8][5] &= (((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 4))((safe_add_func_uint32_t_u_u((*l_824), (((*l_824) || (((((safe_lshift_func_uint16_t_u_u((*l_824), 11)) >= ((l_863.x , (*l_824)) && (safe_sub_func_uint8_t_u_u(((((*l_954) ^= l_832.y) , ((safe_sub_func_uint32_t_u_u((((*p_1351->g_578) = l_957) != (p_1351->g_961 = (void*)0)), (((+(p_1351->g_208 = (((safe_lshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u(((l_903 >= l_966) != l_939.s1), l_906[1])), l_854.x)) >= 0x6BL) && l_906[2]))) ^ l_905) != GROUP_DIVERGE(2, 1)))) , p_1351->g_556.s4)) && p_1351->g_478), 5L)))) & l_966) , l_846) >= (*p_1351->g_744))) , l_798))), 0x5AL, (-5L), 0L)).hi))).even & l_845);
                    if (l_966)
                        break;
                    (*l_824) = ((*l_824) & (*l_824));
                    (*l_824) = (((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(l_969.zwyxyzxwxxwzywwx)).s9a6c)).yywwzzyyyxxywzyw)))).s72, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(p_1351->g_970.s7316)).zwzyzzzz, ((VECTOR(int64_t, 8))(0x1A6CA73AB2B0A11AL, 0L, ((VECTOR(int64_t, 2))(p_1351->g_971.s43)).odd, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 2))((-2L), (-1L))).xyyyxxyxyyyxxxyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((safe_sub_func_uint32_t_u_u(l_974, (safe_rshift_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((*l_984)++) , l_987) != l_988), (safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((l_993[2][2][0] || ((VECTOR(int32_t, 4))((-4L), (0UL < (l_834[0][4][4] = l_974)), 0x22067C3BL, 6L)).y), (safe_mul_func_uint16_t_u_u((+((((*l_996) |= (*l_824)) == (1UL | l_863.x)) , p_1351->g_907)), 8UL)))), 3)))), l_993[2][2][0])), 0x36L)), 11)))) <= l_993[2][2][0]), 1L, l_771, l_997, ((VECTOR(int64_t, 4))(6L)), 4L, 0x58039DD24BF7DAB2L, ((VECTOR(int64_t, 4))(1L)), (-1L), 0x4D1D6F591CDC14ADL)).sdb)))), 0x01600D7B45773D21L, 0x6D118D60DB695957L)).yzwzyxzwxywyywzw))).lo)).hi))), 6L))))).s55)).yyxyxyxx)).s4650464443432315)).sea61)).hi))), ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(0L))))).yyyy, ((VECTOR(int64_t, 4))(0x483585A4DBD2972EL))))).y || p_1351->g_674.y);
                }
            }
            else
            { /* block id: 422 */
                VECTOR(int32_t, 2) l_1006 = (VECTOR(int32_t, 2))(9L, 0x5D32B06BL);
                int64_t *l_1010 = (void*)0;
                uint32_t *l_1016 = &p_1351->g_4;
                int32_t **l_1017 = &p_1351->g_251[1];
                int i;
                (*l_1017) = ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((p_1351->g_614.y , (*l_824)), (*l_824))), (safe_add_func_int8_t_s_s(l_2, l_1006.y)))), FAKE_DIVERGE(p_1351->local_2_offset, get_local_id(2), 10))) , func_63((((safe_mod_func_int16_t_s_s(((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_1009.zywz)).ywyyxzyxzyyxywxw)).sc , l_1010) != (((((safe_div_func_int16_t_s_s((p_1351->g_242.y , (l_1013 == l_1014)), (*l_824))) != (*l_824)) <= l_1015) , GROUP_DIVERGE(0, 1)) , l_1010)), (-1L))) && 0x084EL) == 0x9187A4E7A7A418DAL), l_1016, l_1006.x, p_1351));
            }
        }
        (*l_824) = (safe_mul_func_uint8_t_u_u((((void*)0 == &l_870) != (safe_add_func_uint64_t_u_u((~(l_854.y &= (*l_824))), ((l_798 , ((VECTOR(int64_t, 4))(l_1023.xxyx)).x) < (l_1024.y && (((safe_mul_func_int8_t_s_s((((*l_1027) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x0359482FL, 0x04510E1BL)), 0x3FC23F83L, 0x2A5DB3E7L)).w) , 1L), (p_1351->g_394 || ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(l_1028.sd8c8da43)).s34, ((VECTOR(int8_t, 16))(0x2AL, (safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 16))((p_1351->g_893.s5 && l_838), 0x58E74C4EL, ((VECTOR(int32_t, 4))(0x5C21538BL)), (*l_824), 0x3A3415B3L, 0x313CE897L, ((VECTOR(int32_t, 4))((-1L))), l_844, 0x4F4896E5L, (-1L))).s4)), 0x36L, 0x50L, 0x6FL, 1L, ((VECTOR(int8_t, 8))(0L)), 0x60L, (-1L))).s42))).hi))) != p_1351->g_97.w) | 1L)))))), l_870));
        l_854.y = (((safe_mod_func_uint64_t_u_u((p_1351->g_807.y |= (~p_1351->g_1032[7])), (safe_mul_func_int8_t_s_s((-2L), ((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 16))(p_1351->g_1036.yyxyxxyxxxxyyyyx))))).s0)))) , (void*)0) != (void*)0);
        if (((void*)0 == l_1037))
        { /* block id: 431 */
            uint16_t l_1042 = 1UL;
            VECTOR(int32_t, 16) l_1050 = (VECTOR(int32_t, 16))(0x2C93B6B4L, (VECTOR(int32_t, 4))(0x2C93B6B4L, (VECTOR(int32_t, 2))(0x2C93B6B4L, (-6L)), (-6L)), (-6L), 0x2C93B6B4L, (-6L), (VECTOR(int32_t, 2))(0x2C93B6B4L, (-6L)), (VECTOR(int32_t, 2))(0x2C93B6B4L, (-6L)), 0x2C93B6B4L, (-6L), 0x2C93B6B4L, (-6L));
            int64_t l_1075 = 1L;
            uint16_t l_1083 = 1UL;
            int16_t *l_1116[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t l_1164[9][10][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
            int32_t **l_1167 = &p_1351->g_251[0];
            int i, j, k;
            (*l_1027) |= ((safe_sub_func_int8_t_s_s(((!(safe_lshift_func_int16_t_s_u((l_1042 | (&p_1351->g_10 == (void*)0)), 2))) && ((void*)0 == l_1043)), (p_1351->g_1044.y = ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(p_1351->g_1044.xx)), (safe_add_func_uint16_t_u_u(l_1047, (((VECTOR(uint64_t, 2))(0xB6B77C9C1671E953L, 18446744073709551611UL)).lo < ((((*l_3) |= 4294967287UL) , ((*l_824) > l_1042)) != l_1042)))), ((VECTOR(uint8_t, 4))(1UL)), 255UL, GROUP_DIVERGE(0, 1), l_1042, p_1351->g_210, 1UL, ((VECTOR(uint8_t, 2))(0xE6L)), 0x35L, 0x95L)).se1)).yyyxxyxyyyxyxxyy, ((VECTOR(uint8_t, 16))(1UL))))).s8))) || l_1042);
lbl_1166:
            if (((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10), ((void*)0 != &p_1351->g_179))) , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_1050.s18c991d07aba835d)))).s2))
            { /* block id: 435 */
                int32_t *l_1051 = (void*)0;
                (*p_1351->g_1053) = l_1051;
                for (l_729 = 0; (l_729 == 26); l_729++)
                { /* block id: 439 */
                    uint32_t l_1056[10] = {0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL,0xB8BE01FAL};
                    int i;
                    if (l_1056[0])
                        break;
                    if (l_797)
                        goto lbl_1166;
                }
            }
            else
            { /* block id: 442 */
                uint32_t l_1068 = 0UL;
                uint8_t *l_1073 = (void*)0;
                int32_t l_1082 = 0L;
                int32_t l_1088 = (-7L);
                uint64_t l_1089[3][4][8] = {{{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L}},{{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L}},{{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L},{18446744073709551615UL,0x709AD8A5B2E4CD84L,0x08069EDCC2613C25L,0x025541B7BDC1929EL,1UL,18446744073709551615UL,0x025541B7BDC1929EL,0x80E47FB9636A5807L}}};
                uint32_t l_1105[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1105[i] = 4294967286UL;
                for (l_771 = 0; (l_771 != 5); ++l_771)
                { /* block id: 445 */
                    uint32_t *l_1061 = &p_1351->g_783;
                    VECTOR(uint16_t, 8) l_1063 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x7014L), 0x7014L), 0x7014L, 1UL, 0x7014L);
                    int16_t *l_1074[5] = {&p_1351->g_478,&p_1351->g_478,&p_1351->g_478,&p_1351->g_478,&p_1351->g_478};
                    int32_t l_1086[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1086[i] = 0L;
                    if (((safe_div_func_uint64_t_u_u(((void*)0 != l_1061), (+(l_1042 , (l_1050.s0 = ((l_1037 != &l_844) ^ ((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(p_1351->g_1062.yy)).xyyyxyxx, ((VECTOR(uint16_t, 2))(0UL, 0xBDAFL)).xxxxyxyy))).lo, ((VECTOR(uint16_t, 2))(l_1063.s50)).xxyy))).yxxwzxwyzxzyyyxw, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_1351->g_1064.s8fa2a14f)).s20))))).yyxxyxxyyxyyxyyx))))).sc3, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 16))(l_1065.xyzxyzzwxxwzzyyz)).sc301, ((VECTOR(uint16_t, 4))(p_1351->g_1066.s5506)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(3L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(0x736AL, 1L)), ((VECTOR(int16_t, 4))(p_1351->g_1067.xwxw)).hi))))), (-1L))).odd, ((VECTOR(int16_t, 4))((p_1351->g_16.y |= (((l_1068 ^ 0x1FFC1BF5L) & (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((GROUP_DIVERGE(2, 1) && ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))((FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10) == ((safe_mod_func_int32_t_s_s((&p_1351->g_208 == l_1073), 0x743F04D4L)) ^ 7L)), (-1L), 0x7AA6L, 0x24B2L)).lo, ((VECTOR(int16_t, 2))(1L))))), l_1068, 0x2335L, 1L, (*l_824), ((VECTOR(int16_t, 8))(0x05EDL)), (-5L), (-8L))).s8f94)).y) , FAKE_DIVERGE(p_1351->local_0_offset, get_local_id(0), 10)), ((VECTOR(uint8_t, 2))(0x51L)), 250UL)).zzwyxxwxyzwyywxw)).s1, l_1068))) && 0x1634CF2DFD807D98L)), 0x0EFFL, 0x0EC6L, (-1L))).hi))), ((VECTOR(uint16_t, 4))(4UL)), 0xDDCFL, l_1075, l_1075, l_1063.s2, 65528UL, 65528UL, 0UL, (*l_1027), 0x0F99L, 0xAB37L)).sb87c))), 0x1BAAL, (*l_1027), 1UL, 0xEECFL)).s03, ((VECTOR(uint16_t, 2))(0xCDB0L)))))))))).odd ^ 0x2743L) == 0x20L))))))) , l_854.x))
                    { /* block id: 448 */
                        int32_t *l_1076 = &l_901[4];
                        int32_t *l_1077 = (void*)0;
                        int32_t *l_1078 = &l_901[1];
                        int32_t *l_1079 = &l_901[1];
                        int32_t *l_1080 = (void*)0;
                        int32_t *l_1081[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        l_1083--;
                        l_1089[2][3][6]++;
                        return l_1089[0][2][6];
                    }
                    else
                    { /* block id: 452 */
                        l_1088 = (safe_mod_func_uint32_t_u_u(l_1068, (safe_add_func_uint32_t_u_u(l_1050.s4, 0x4F460DD1L))));
                        if (l_844)
                            goto lbl_1166;
                    }
                    for (p_1351->g_299 = 20; (p_1351->g_299 < 37); p_1351->g_299 = safe_add_func_int32_t_s_s(p_1351->g_299, 8))
                    { /* block id: 457 */
                        (*l_1027) |= l_1089[2][3][6];
                        (*l_1027) ^= 0x3C5D3D54L;
                        if (p_1351->g_1098[3])
                            break;
                    }
                }
                for (p_1351->g_179 = 9; (p_1351->g_179 < 7); p_1351->g_179 = safe_sub_func_int16_t_s_s(p_1351->g_179, 1))
                { /* block id: 465 */
                    for (l_844 = (-19); (l_844 < (-20)); --l_844)
                    { /* block id: 468 */
                        (*l_824) &= 0x2ECA6D7EL;
                        l_771 = 0L;
                    }
                }
                for (l_1083 = 7; (l_1083 > 30); l_1083 = safe_add_func_int16_t_s_s(l_1083, 7))
                { /* block id: 475 */
                    if (l_1075)
                        break;
                }
                if (l_1105[1])
                { /* block id: 478 */
                    VECTOR(uint16_t, 8) l_1112 = (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 7UL), 7UL), 7UL, 7UL, 7UL);
                    int16_t *l_1118[6][2][2] = {{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}},{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}},{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}},{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}},{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}},{{&p_1351->g_476,&p_1351->g_476},{&p_1351->g_476,&p_1351->g_476}}};
                    int i, j, k;
                    for (p_1351->g_299 = 14; (p_1351->g_299 != 49); p_1351->g_299++)
                    { /* block id: 481 */
                        uint16_t *l_1113 = (void*)0;
                        uint16_t *l_1114 = &l_1042;
                        int32_t l_1115 = 0x0F6784E6L;
                        int16_t **l_1117[7][1] = {{&l_1116[3]},{&l_1116[3]},{&l_1116[3]},{&l_1116[3]},{&l_1116[3]},{&l_1116[3]},{&l_1116[3]}};
                        int i, j;
                        (*l_824) = ((*l_1027) = (safe_div_func_uint32_t_u_u((*l_824), ((+((safe_lshift_func_uint16_t_u_s(((*l_1114) = ((VECTOR(uint16_t, 4))(l_1112.s0215)).y), 8)) >= (((((((((((l_1115 , l_1116[3]) == (l_1118[0][1][1] = (void*)0)) <= l_1112.s2) != ((((GROUP_DIVERGE(2, 1) , 0xAD9B12DD8DF990D0L) > 0x58DF5AC254F63D38L) | l_1115) != ((*l_3) = ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(p_1351->g_1119.yy)))).hi))) > ((*l_1027) != GROUP_DIVERGE(1, 1))) < (*l_1027)) ^ p_1351->g_783) != p_1351->g_199.x) != p_1351->g_782[1][2][7]) & p_1351->g_169.y) && 0x82C54C7AE875CD83L))) & l_1050.s4))));
                    }
                }
                else
                { /* block id: 488 */
                    uint64_t l_1124 = 18446744073709551607UL;
                    VECTOR(int8_t, 8) l_1135 = (VECTOR(int8_t, 8))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x58L), 0x58L), 0x58L, 7L, 0x58L);
                    int32_t *l_1152 = &l_901[4];
                    int32_t **l_1165 = &p_1351->g_251[1];
                    int i;
                    for (p_1351->g_505 = (-13); (p_1351->g_505 > (-7)); p_1351->g_505++)
                    { /* block id: 491 */
                        int32_t l_1125 = 5L;
                        int32_t l_1150 = 0x14EC75E3L;
                        int32_t **l_1154 = &l_1043;
                        VECTOR(int8_t, 16) l_1157 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x06L), 0x06L), 0x06L, (-5L), 0x06L, (VECTOR(int8_t, 2))((-5L), 0x06L), (VECTOR(int8_t, 2))((-5L), 0x06L), (-5L), 0x06L, (-5L), 0x06L);
                        uint64_t *l_1159[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        (*l_1027) = (safe_sub_func_int32_t_s_s((l_1124 & l_1125), (FAKE_DIVERGE(p_1351->group_0_offset, get_group_id(0), 10) < ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x12L, ((*l_1037) ^= ((safe_lshift_func_int8_t_s_s(0x57L, 2)) >= 0xD6A1E8BFL)), (safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(l_1075, ((VECTOR(uint8_t, 2))(p_1351->g_1132.xy)).even)), (((safe_rshift_func_int16_t_s_u((*l_1027), 13)) >= ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1135.s11)), (-6L), 1L)).yxwyxxww, (int8_t)(safe_mul_func_int16_t_s_s(((4L != ((safe_sub_func_uint16_t_u_u((safe_div_func_int32_t_s_s((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((4294967295UL | FAKE_DIVERGE(p_1351->local_2_offset, get_local_id(2), 10)), ((((safe_rshift_func_uint16_t_u_u(((l_1150 = ((safe_add_func_uint8_t_u_u(l_1083, 0x63L)) < l_1050.s2)) < 0x51827700CFFA097AL), GROUP_DIVERGE(0, 1))) ^ l_1042) , l_1150) <= (*l_824)))), p_1351->g_1032[6])), l_1082)), l_1125)) , l_1150)) && p_1351->g_782[3][0][5]), p_1351->g_556.s7))))).s5) | l_1125))), p_1351->g_1151[3][3][0], (-1L), 0x34L, 7L, 0x15L)).s01)).xyxyxxxx, ((VECTOR(int8_t, 8))(0x3CL)), ((VECTOR(int8_t, 8))(0x33L))))).s3)));
                        (*l_1154) = l_1152;
                        (*l_824) &= (((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1351->global_0_offset, get_global_id(0), 10), (p_1351->g_179 &= ((((l_1082 > 0x6E245C11L) , ((((VECTOR(int8_t, 2))(l_1157.s25)).hi ^ ((**l_1154) && ((VECTOR(int16_t, 16))(p_1351->g_1158.xyyxxxxxxxyxxyxx)).s9)) <= (1UL | (((p_1351->g_600 = (**l_1154)) , 0x6EL) || (((~(safe_rshift_func_uint8_t_u_u((**l_1154), 5))) & ((p_1351->g_174.s3 == l_1050.s0) > l_1164[7][5][0])) >= 0L))))) < 0x11L) > 0xCCFCE28DEDBEE285L)))) ^ 0UL) , (*l_1027));
                    }
                    (*l_1165) = &l_797;
                    return p_1351->g_1066.s1;
                }
            }
            (*l_1167) = &l_901[6];
        }
        else
        { /* block id: 507 */
            uint32_t l_1193 = 0UL;
            int32_t **l_1196 = &p_1351->g_251[1];
            int8_t ***l_1202[5][5] = {{&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2]},{&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2]},{&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2]},{&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2]},{&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2],&p_1351->g_236[2]}};
            uint8_t *l_1203 = &p_1351->g_210;
            int32_t l_1241 = 4L;
            int32_t l_1242 = 1L;
            int32_t l_1246 = 0x223A67F2L;
            VECTOR(uint32_t, 8) l_1254 = (VECTOR(uint32_t, 8))(0x033A0F6BL, (VECTOR(uint32_t, 4))(0x033A0F6BL, (VECTOR(uint32_t, 2))(0x033A0F6BL, 9UL), 9UL), 9UL, 0x033A0F6BL, 9UL);
            VECTOR(uint32_t, 8) l_1255 = (VECTOR(uint32_t, 8))(0xEC41F167L, (VECTOR(uint32_t, 4))(0xEC41F167L, (VECTOR(uint32_t, 2))(0xEC41F167L, 0x93C8B2CEL), 0x93C8B2CEL), 0x93C8B2CEL, 0xEC41F167L, 0x93C8B2CEL);
            int i, j;
            for (p_1351->g_478 = 4; (p_1351->g_478 < 9); p_1351->g_478 = safe_add_func_int8_t_s_s(p_1351->g_478, 5))
            { /* block id: 510 */
                uint8_t *l_1173 = &p_1351->g_162[0][0][1];
                (*l_824) ^= (safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int32_t_s(6L)), (((*l_1173)++) || 0x12L)));
                (*l_1027) = (((p_1351->g_769.x ^= (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x0CC26D50L, 0L, 0x2C3E51B7L, 0x16B4C916L)), 0x488F30FAL, 1L, 0x255BEB04L, 0L)).s7 <= 0x576AD3C3L)) ^ (safe_rshift_func_uint16_t_u_s((((*l_824) , ((safe_mul_func_int8_t_s_s(((p_1351->g_807.x && ((safe_div_func_int32_t_s_s(((9UL <= p_1351->g_782[3][0][5]) , 0x02C63EDEL), ((((((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(p_1351->g_1182.s6337)).ywwzyxzy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1351->g_1183.xx)), 1L, 0x78D66AEDL)).even)).yxxx)).zyxxzzyx))).s16))).odd , (safe_rshift_func_int16_t_s_u((((*l_988) = (*l_988)) == l_1186), ((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_u(0x50BEL, FAKE_DIVERGE(p_1351->local_2_offset, get_local_id(2), 10))) == (*l_824)) , p_1351->g_807.y), 0x0214L)), 7)) & GROUP_DIVERGE(0, 1))))) || (*l_824)) && 0x91BC895FL) ^ p_1351->g_760.x))) , p_1351->g_476)) > 0x0D70F83B0668BF6FL), GROUP_DIVERGE(1, 1))) <= 18446744073709551615UL)) != l_1193), 0))) ^ l_1194);
                return p_1351->g_453.s3;
            }
            (*l_1196) = l_1195;
            (*l_1195) = (&p_1351->g_236[0] == l_1197[3][2]);
            if (((~(safe_lshift_func_int16_t_s_u((p_1351->g_810.x < p_1351->g_940.sd), 0))) < (((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10), ((*l_1203) = ((void*)0 != l_1202[4][0])))) || p_1351->g_175.s1) >= ((VECTOR(int8_t, 8))(p_1351->g_1204.s053ba8ff)).s1)))
            { /* block id: 521 */
                uint8_t l_1214 = 0x77L;
                int32_t *l_1233 = (void*)0;
                int32_t l_1243[6][10] = {{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L},{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L},{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L},{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L},{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L},{0L,(-10L),(-1L),6L,(-1L),(-10L),0L,0x478C1463L,9L,9L}};
                uint32_t l_1247 = 0x659F2199L;
                uint16_t l_1264[3];
                uint32_t ***l_1299 = &p_1351->g_579[0];
                uint64_t l_1304 = 5UL;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1264[i] = 0x2817L;
                for (p_1351->g_337 = 0; (p_1351->g_337 == (-13)); p_1351->g_337 = safe_sub_func_uint32_t_u_u(p_1351->g_337, 2))
                { /* block id: 524 */
                    int64_t ****l_1208 = &l_915[1];
                    int64_t ****l_1209 = (void*)0;
                    int64_t ***l_1211 = &l_916[0][0][1];
                    int64_t ****l_1210 = &l_1211;
                    uint32_t *l_1215 = &l_1193;
                    uint16_t *l_1217 = &p_1351->g_299;
                    int32_t l_1230 = 0x68C45883L;
                    int32_t l_1244[5];
                    int64_t l_1245[7] = {0x0E6514A2BE56228DL,(-3L),0x0E6514A2BE56228DL,0x0E6514A2BE56228DL,(-3L),0x0E6514A2BE56228DL,0x0E6514A2BE56228DL};
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1244[i] = 0x00F3DF2FL;
                    (*l_1027) = (safe_unary_minus_func_uint64_t_u((p_1351->g_199.x == ((p_1351->g_807.y , &l_916[1][2][0]) != ((*l_1210) = ((*l_1208) = &l_916[0][2][1]))))));
                    for (p_1351->g_75 = 2; (p_1351->g_75 >= 21); p_1351->g_75++)
                    { /* block id: 530 */
                        (*l_824) ^= (*l_1195);
                        (*l_1195) = (l_1214 & (l_1215 == ((255UL == l_1216) , l_1215)));
                    }
                    if ((((*l_1217) = (*l_824)) || ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((safe_unary_minus_func_uint32_t_u((((p_1351->g_1225 = (void*)0) == &p_1351->g_476) || ((*l_1027) & (0x5AC0E2A3L > (FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10) , (((safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) < (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))((((18446744073709551615UL != (((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))((0x900CL != (((((((0L & l_1214) ^ p_1351->g_769.y) < 9UL) < 1UL) > (*l_1195)) & 0x6CA5L) , 0x3AD1L)), 0x27F0669D344FA0E5L, l_1214, (*l_824), p_1351->g_75, ((VECTOR(int64_t, 2))(1L)), l_1214, l_1230, 0x1F8EB23923667874L, 0x282702995ED467C6L, 0x389E1DD7BCAC2540L, l_1230, 0x0C5AC26213BBE8D8L, (-1L), 0x4CFD44A666D88A88L)).s6, l_1230)) & (*l_1195)) , p_1351->g_1151[0][2][1])) <= (*l_1027)) == p_1351->g_404.s0), 0xFFL, 0x4EL, 255UL)))).z == 253UL)) >= 0x5BD88CC116B66FC6L), l_1214)) , p_1351->g_1231[5]) != (void*)0))))))) & p_1351->g_75) , p_1351->g_1066.s3), 9L)), 1)), l_1230)) && 0xE8AE9862E762EF3EL)))
                    { /* block id: 536 */
                        (*l_1196) = l_1233;
                        if (l_1193)
                            break;
                    }
                    else
                    { /* block id: 539 */
                        uint64_t l_1234[7][8] = {{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL},{0xFAAA35C6104D0DCBL,0xFAAA35C6104D0DCBL,0xA3726333E73394A8L,2UL,0xBDFDF1FDC52F20FAL,2UL,0xA3726333E73394A8L,0xFAAA35C6104D0DCBL}};
                        int8_t **l_1236 = &l_1037;
                        int32_t *l_1237 = &l_742;
                        int32_t *l_1238 = &l_1087;
                        int32_t *l_1239 = &l_901[3];
                        int32_t *l_1240[7];
                        int i, j;
                        for (i = 0; i < 7; i++)
                            l_1240[i] = (void*)0;
                        l_1236 = (l_1234[6][2] , l_1235);
                        --l_1247;
                    }
                    for (l_1214 = 0; (l_1214 != 21); l_1214++)
                    { /* block id: 545 */
                        return p_1351->g_423.s7;
                    }
                }
                l_1195 = func_63((((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 8))(p_1351->g_1252.s648012b8)).s0400702372173676, ((VECTOR(uint32_t, 8))((*l_824), 8UL, ((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1351->g_1253.zxxw)), 0xB3EB429FL, ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_1254.s46)).yxxy))))).even))), 0xD4F7FBFFL)).s52, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))(l_1255.s3140125501230256)).s0264, (uint32_t)(safe_rshift_func_int16_t_s_s(((safe_mod_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(0x1B7DL, (safe_mod_func_int16_t_s_s((0xF365B6FDL | ((p_1351->g_1119.x == p_1351->g_151.w) < ((((1UL >= ((l_1264[1] >= p_1351->g_766.s5) == (safe_div_func_uint16_t_u_u((((VECTOR(int64_t, 8))((((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1267.xy)), 0x65C10B48L, (-1L))).y && 0x2DA86CA5L) >= l_1268) && 0xA3B44254L), 0x76486C9AE958C0D3L, 1L, 0x2ED03D06C32E51D9L, ((VECTOR(int64_t, 4))(0L)))).s5 >= 0x2C2C604724E40DA6L), (*l_824))))) >= 0L) ^ 0x0A027945L) > p_1351->g_613.x))), FAKE_DIVERGE(p_1351->local_2_offset, get_local_id(2), 10))))), (*l_1195))) && l_1269), 14))))).xxzxyxxxwyxyzyzw)).s7a))), 1UL, 0xFE0FDCD9L, 4294967288UL, 0x933825B6L)).s5157435312625660))).se && (*l_824)), l_1270, (*l_824), p_1351);
                if ((!(((((safe_mod_func_int64_t_s_s(1L, l_1246)) & ((VECTOR(int64_t, 16))(p_1351->g_1273.s6237651320207707)).s2) && ((((safe_sub_func_uint64_t_u_u(0x9C5521362542DC3AL, (safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((((((*l_1203) = ((*l_1195) <= 0UL)) || (((l_1264[1] & ((((*l_988) == (((*l_1195) >= ((((safe_div_func_int8_t_s_s((((safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((*l_1195), FAKE_DIVERGE(p_1351->group_2_offset, get_group_id(2), 10))) , (*l_1027)), 5)), 0x5D5E3F52EEFBAC0FL)) ^ p_1351->g_453.s7) <= (-1L)), p_1351->g_613.w)) , (void*)0) == &p_1351->g_783) >= p_1351->g_1182.s0)) , (void*)0)) > (*l_1195)) == FAKE_DIVERGE(p_1351->local_0_offset, get_local_id(0), 10))) ^ l_1296) ^ (*l_1195))) ^ 0xC869846C1ED94CF3L) <= (*l_1027)), 7)), (*l_824))), l_1255.s1)), 0xBAD5L)), p_1351->g_782[3][2][5])), 0xE3D4E76BL)))) , (void*)0) != l_1297) ^ (*l_824))) , l_1299) != l_1299)))
                { /* block id: 551 */
                    int32_t *l_1300[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1300[i] = &l_1087;
                    --l_1301[2][0];
                }
                else
                { /* block id: 553 */
                    uint8_t *l_1319 = &p_1351->g_208;
                    int32_t l_1323 = (-1L);
                    (*l_1195) = ((*l_1027) ^= ((*l_824) = 2L));
                    (*l_1195) = (((*l_824) & l_1304) , (safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((l_1309 == (*p_1351->g_578)) || ((*l_1027) = (((*l_824) && (*l_1027)) | (((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_1310.zzxzxxzxzyyxyxzw)).s82, ((VECTOR(int32_t, 2))((-1L), 0x1A490348L))))).yyxyyyyyxyxxxyyx, ((VECTOR(int32_t, 4))(p_1351->g_1311.sbc00)).zxzzwxwwzzwzyzyw, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1351->g_1312.s26)), 0x498CCF04L, 0L, ((VECTOR(int32_t, 4))(1L, (safe_mul_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(0x03L, ((*l_1203) = p_1351->g_1204.se))), (safe_rshift_func_uint8_t_u_u((p_1351->g_162[1][0][1] = (--(*l_1319))), 6)))), 0x40C91AC6L, 0x5DA4961DL)))).s75)).xyxxxxxyyxyyxyyx))).s98c0, ((VECTOR(int32_t, 2))(l_1322.s75)).yxyx))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))((((((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(5UL, (p_1351->g_170.s2 = l_1323), 0UL, (*l_1195), 0UL, ((VECTOR(uint64_t, 2))(0UL)), 4UL)), 0UL, ((VECTOR(uint64_t, 4))(0x20C0A8B562C037B0L)), ((VECTOR(uint64_t, 2))(0x4E5CE0450CC13669L)), 0x5C50CF08E59FD628L)).even, ((VECTOR(uint64_t, 8))(0xAF05739725E0CCE6L))))), ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).s2 | (-5L)) && 0x3006C5F2E6477D8EL) || 0xE1D577D8AFE19E10L), ((VECTOR(int32_t, 8))((-8L))), (*l_1027), 0x19013FEEL, 0L, ((VECTOR(int32_t, 4))(0x55A5EE97L)))).s9a7c, ((VECTOR(int32_t, 4))(0x7E5BBC33L))))).yxyxzwxw)).s45)), 0x5753C465L, 0x7EC9EBDAL)), ((VECTOR(int32_t, 4))(0x27707DE0L)), ((VECTOR(int32_t, 4))((-1L)))))), (*l_1195), (*l_1195), l_1247, (*l_824), l_1323, 0x1F4936B6L, 0x3458F009L, ((VECTOR(int32_t, 4))(0x3EC8040CL)), 0x4A2426CDL)).s7b93))).x && (*l_1195))))) > 0x43L) == p_1351->g_1132.y), (*l_824))), p_1351->g_1036.x)));
                }
                (*l_824) = (safe_mod_func_uint16_t_u_u(l_1255.s6, 0xF51BL));
            }
            else
            { /* block id: 565 */
                int32_t *l_1326[2][4] = {{&l_742,&l_742,&l_742,&l_742},{&l_742,&l_742,&l_742,&l_742}};
                uint64_t l_1327 = 0xDDA313D63A56B8C2L;
                int i, j;
                l_1327--;
            }
        }
    }
    else
    { /* block id: 569 */
        int16_t l_1332 = (-8L);
        VECTOR(int16_t, 8) l_1337 = (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L));
        uint32_t *l_1342 = (void*)0;
        int i;
        (*l_1195) &= ((safe_rshift_func_int16_t_s_s(l_1332, 12)) >= (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(l_1332, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_1337.s6734)).hi)), 0x6969L, 0x077DL)).w)), (+((*p_1351->g_237) <= ((-1L) > (safe_lshift_func_int16_t_s_u(((safe_mul_func_uint16_t_u_u(l_1337.s6, ((void*)0 != &l_838))) > (((((void*)0 == l_1342) , 0x34ECC44A4F4904DFL) && l_1337.s7) == (*p_1351->g_1225))), l_1343))))))));
        return l_1344;
    }
    --l_1348;
    return (*l_1195);
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_9 p_1351->g_11 p_1351->g_16 p_1351->g_75 p_1351->g_97 p_1351->g_89 p_1351->g_128 p_1351->g_110 p_1351->g_162 p_1351->g_100 p_1351->g_219 p_1351->g_221 p_1351->g_174 p_1351->g_236 p_1351->g_127 p_1351->g_250 p_1351->g_179 p_1351->g_175 p_1351->g_199 p_1351->g_167 p_1351->g_299 p_1351->g_170 p_1351->g_334 p_1351->g_364 p_1351->g_251 p_1351->g_242 p_1351->g_169 p_1351->g_394 p_1351->g_404 p_1351->g_600 p_1351->g_612 p_1351->g_613 p_1351->g_614 p_1351->g_615 p_1351->g_616 p_1351->g_478 p_1351->g_674 p_1351->g_556 p_1351->g_585 p_1351->g_577 p_1351->g_578 p_1351->g_579 p_1351->g_719
 * writes: p_1351->g_9 p_1351->g_11 p_1351->g_4 p_1351->g_89 p_1351->g_110 p_1351->g_75 p_1351->g_127 p_1351->g_162 p_1351->g_100 p_1351->g_208 p_1351->g_219 p_1351->g_108 p_1351->g_236 p_1351->g_251 p_1351->g_179 p_1351->g_16 p_1351->g_210 p_1351->g_299 p_1351->g_237 p_1351->g_337 p_1351->g_364 p_1351->g_478 p_1351->g_613 p_1351->g_579 p_1351->g_476
 */
int32_t  func_5(int64_t  p_6, struct S0 * p_1351)
{ /* block id: 7 */
    VECTOR(int32_t, 16) l_7 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 3L), 3L), 3L, 8L, 3L, (VECTOR(int32_t, 2))(8L, 3L), (VECTOR(int32_t, 2))(8L, 3L), 8L, 3L, 8L, 3L);
    int32_t *l_8 = &p_1351->g_9;
    int32_t l_29 = 0L;
    int16_t l_717 = 0L;
    VECTOR(uint64_t, 2) l_722 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 2UL);
    VECTOR(uint64_t, 2) l_724 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x1A7CACF42B27C173L);
    VECTOR(uint32_t, 4) l_725 = (VECTOR(uint32_t, 4))(0x9DEC2C9AL, (VECTOR(uint32_t, 2))(0x9DEC2C9AL, 4294967295UL), 4294967295UL);
    int16_t l_728 = (-1L);
    int i;
    if (((*l_8) ^= ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_7.s6e)).yxxx, ((VECTOR(int32_t, 2))(0x7ACED45BL, 0x02CA9683L)).xxxy))).y))
    { /* block id: 9 */
        VECTOR(uint32_t, 4) l_22 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x3D925D3CL), 0x3D925D3CL);
        int32_t *l_37 = (void*)0;
        int32_t *l_406 = (void*)0;
        int32_t *l_407 = &p_1351->g_110[0][0][0];
        int16_t *l_716 = &p_1351->g_476;
        uint32_t ****l_718 = &p_1351->g_578;
        VECTOR(uint64_t, 16) l_723 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 1UL), 1UL), 1UL, 18446744073709551606UL, 1UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 1UL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 1UL), 18446744073709551606UL, 1UL, 18446744073709551606UL, 1UL);
        uint8_t *l_726 = &p_1351->g_162[0][0][0];
        int i;
        p_1351->g_11 |= ((*l_8) = 0x510AFBD1L);
        (*l_407) = (safe_rshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))(p_1351->g_16.yyxx)).zzwwwyyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))((0x45L && ((safe_lshift_func_int16_t_s_s((*l_8), ((*l_716) = (func_19(((p_6 != 0x8DL) , (((VECTOR(uint32_t, 8))(l_22.xyywzwzw)).s5 , func_23((((((*l_407) = (p_6 & (l_29 > (safe_rshift_func_int8_t_s_s(0x1CL, (func_32(&l_29, l_37, &l_29, (*l_8), p_1351) >= p_1351->g_97.z)))))) < p_6) >= (*l_8)) == p_1351->g_242.y), l_8, (*l_8), p_6, p_1351->g_170.s0, p_1351))), l_37, p_1351) && p_6)))) ^ (*l_8))), l_717, 8L, 0x391FL)).wywwzzwwwxyxyyzz, ((VECTOR(int16_t, 16))(0x6E34L))))).sdc)).xxxxxxxyxyxxyyyx)).hi, ((VECTOR(int16_t, 8))(0x2466L))))).lo, ((VECTOR(int16_t, 4))((-6L)))))).xyxxxyzwzyxzzzzx)).sf , 3L) == p_1351->g_242.y), p_6)), p_1351->g_169.x));
        (*l_8) = ((VECTOR(int32_t, 8))(0x42F6382FL, 5L, 0L, (*l_8), ((l_718 == &p_1351->g_578) >= (((((4L & ((VECTOR(int8_t, 4))(p_1351->g_719.yxxy)).y) , (((*l_726) = ((safe_add_func_int16_t_s_s((((p_6 < ((((!((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_722.yyxyxyxy)))).s7275176627064367, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_723.s867809db)).s3352552454440326)), ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_724.xxyyxxyyyyyyxxxy)).s0abe)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 16))(l_725.wxyzzzxyyzyzxxzy)).s08e2))).wzywzxzyxwxxxxxx)).odd, (uint32_t)(p_6 | p_6), (uint32_t)p_6))))).lo, ((VECTOR(uint32_t, 4))(0xA2A7D364L)))))))))).zwzzyyyyzzzwyxzz))).lo, (uint64_t)FAKE_DIVERGE(p_1351->global_1_offset, get_global_id(1), 10)))).s70)))).hi) && p_6) | p_6) & p_6)) <= 9L) > p_6), p_1351->g_16.y)) , FAKE_DIVERGE(p_1351->global_0_offset, get_global_id(0), 10))) >= p_6)) >= p_6) > 0x07D8F6FDL) != 4294967295UL)), (-1L), 5L, 0L)).s6;
    }
    else
    { /* block id: 310 */
        int32_t l_727 = 0x1915114FL;
        (*l_8) ^= l_727;
    }
    return l_728;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_600 p_1351->g_100 p_1351->g_612 p_1351->g_613 p_1351->g_614 p_1351->g_110 p_1351->g_615 p_1351->g_616 p_1351->g_478 p_1351->g_175 p_1351->g_674 p_1351->g_11 p_1351->g_556 p_1351->g_170 p_1351->g_585 p_1351->g_179 p_1351->g_577 p_1351->g_578 p_1351->g_579
 * writes: p_1351->g_299 p_1351->g_110 p_1351->g_478 p_1351->g_613 p_1351->g_236 p_1351->g_179 p_1351->g_579
 */
int32_t  func_19(uint32_t * p_20, uint32_t * p_21, struct S0 * p_1351)
{ /* block id: 271 */
    uint8_t l_599 = 8UL;
    VECTOR(uint32_t, 16) l_611 = (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 1UL), 1UL), 1UL, 4294967289UL, 1UL, (VECTOR(uint32_t, 2))(4294967289UL, 1UL), (VECTOR(uint32_t, 2))(4294967289UL, 1UL), 4294967289UL, 1UL, 4294967289UL, 1UL);
    int32_t l_629 = 0x083531FBL;
    int32_t l_630 = 9L;
    int32_t l_631 = 0L;
    int32_t l_632 = 0L;
    int32_t l_634 = (-1L);
    int32_t l_635 = 0x2ADF07A3L;
    int32_t l_636 = 0x052B021FL;
    int32_t l_637[3][7] = {{0L,0x7C77CF38L,0x7C77CF38L,0L,0L,0x7C77CF38L,0x7C77CF38L},{0L,0x7C77CF38L,0x7C77CF38L,0L,0L,0x7C77CF38L,0x7C77CF38L},{0L,0x7C77CF38L,0x7C77CF38L,0L,0L,0x7C77CF38L,0x7C77CF38L}};
    uint32_t ****l_684[5] = {&p_1351->g_578,&p_1351->g_578,&p_1351->g_578,&p_1351->g_578,&p_1351->g_578};
    uint64_t l_691[7];
    int8_t ***l_710 = &p_1351->g_236[0];
    int64_t *l_715 = &p_1351->g_179;
    int i, j;
    for (i = 0; i < 7; i++)
        l_691[i] = 0xCF5648A8A315DE52L;
    if ((safe_rshift_func_uint16_t_u_u((l_599 || l_599), 6)))
    { /* block id: 272 */
        uint32_t l_603 = 3UL;
        uint16_t *l_608 = (void*)0;
        int32_t *l_617 = (void*)0;
        int32_t *l_618 = (void*)0;
        int32_t *l_619 = (void*)0;
        int32_t *l_620 = (void*)0;
        int32_t *l_621 = (void*)0;
        int32_t *l_622 = (void*)0;
        int32_t *l_623 = (void*)0;
        int32_t *l_624 = &p_1351->g_110[1][0][1];
        int32_t l_633 = 0x1872AF29L;
        int32_t l_638 = 0x2DFCC1C3L;
        int32_t l_639 = 0x315A2948L;
        int32_t l_640 = 0x21FB5FECL;
        int32_t l_641 = 0x3772E24BL;
        int32_t l_642 = 0x02B19199L;
        int32_t l_643 = (-5L);
        int32_t l_644 = 0x0CC581E5L;
        int32_t l_646 = 0x29D3B22CL;
        int32_t l_647 = 0x0DE4B4F1L;
        int32_t l_648 = (-1L);
        int32_t l_649[2];
        uint16_t l_650 = 0UL;
        VECTOR(int8_t, 2) l_676 = (VECTOR(int8_t, 2))(1L, 0x5AL);
        uint32_t ****l_683 = &p_1351->g_578;
        int8_t ***l_686 = &p_1351->g_236[0];
        int i;
        for (i = 0; i < 2; i++)
            l_649[i] = 0x166E7799L;
        (*l_624) = ((p_1351->g_600 && (safe_mod_func_int16_t_s_s(l_603, (safe_add_func_int32_t_s_s(0x35C03079L, (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((p_1351->g_299 = p_1351->g_100.x), ((safe_add_func_uint32_t_u_u((+0xC57FC15BL), FAKE_DIVERGE(p_1351->global_2_offset, get_global_id(2), 10))) >= ((((!(l_603 < 0xC776L)) | ((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(l_611.sf4)).xxxxyxyyyyxyxxxy, ((VECTOR(uint32_t, 8))(p_1351->g_612.s01411364)).s5024457606325001, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 8))(0xD471F4E3L, 4294967289UL, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 8))(p_1351->g_613.wxxyyxyx)).even, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_1351->g_614.yyxyyyyx)).s16)).yxyy))).lo, ((VECTOR(uint16_t, 2))(1UL, 65535UL))))), (*p_20), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1351->g_615.s60663aff)))).s5, 0UL, 0xFCDC117EL)).hi, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0x37BE8876L, 0x0BE2A436L)).xyxxyxyxxyyxyyxx)).s0118, ((VECTOR(uint32_t, 2))(p_1351->g_616.wx)).yyxx))).wxxxxwwxxzwzxyyz))).s2) , (l_599 != (*p_20))) <= l_603)), 65535UL, 0UL, ((VECTOR(uint16_t, 2))(6UL)), 0xAB63L, 0xBD21L)).s4, 0xF160L))))))) , 0x4E25DE7DL);
        for (p_1351->g_478 = 0; (p_1351->g_478 >= 16); ++p_1351->g_478)
        { /* block id: 277 */
            int32_t *l_627 = &p_1351->g_110[0][0][3];
            int32_t *l_628[3];
            int16_t l_645 = 0x3D72L;
            uint8_t l_659 = 1UL;
            VECTOR(int8_t, 8) l_664 = (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 1L), 1L), 1L, 0x1AL, 1L);
            VECTOR(int8_t, 8) l_675 = (VECTOR(int8_t, 8))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x3BL), 0x3BL), 0x3BL, 0x06L, 0x3BL);
            uint8_t l_681 = 0x92L;
            int i;
            for (i = 0; i < 3; i++)
                l_628[i] = &p_1351->g_110[2][0][0];
            l_650--;
            if (l_629)
                break;
            for (l_645 = (-11); (l_645 <= (-14)); l_645 = safe_sub_func_int32_t_s_s(l_645, 8))
            { /* block id: 282 */
                uint32_t l_655 = 0x0560A2B3L;
                int32_t l_656 = 0x13207F95L;
                int32_t l_657 = 0L;
                int32_t l_658[6] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
                int8_t *l_677[8][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                VECTOR(int8_t, 8) l_678 = (VECTOR(int8_t, 8))(0x2DL, (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 0x70L), 0x70L), 0x70L, 0x2DL, 0x70L);
                int16_t *l_682[3][10] = {{(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0},{(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0},{(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0,&p_1351->g_505,(void*)0,(void*)0}};
                int i, j;
                l_655 = l_611.s7;
                ++l_659;
                (*l_624) = (((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(0x3FL, 0L, ((VECTOR(int8_t, 8))(l_664.s37477474)), 0L, 0x7DL, (safe_add_func_uint32_t_u_u(l_636, (*p_20))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((safe_unary_minus_func_int16_t_s((l_630 = (safe_mod_func_uint32_t_u_u(((p_1351->g_616.w != (p_1351->g_613.z |= (0x9BB849DDL & (safe_div_func_int32_t_s_s((!(safe_mul_func_int16_t_s_s(p_1351->g_175.s2, ((l_656 = ((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(p_1351->g_674.xy)).yyyyyyyyxyyxxyxy, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_675.s21)), 0x31L, 0x24L)).hi, ((VECTOR(int8_t, 8))(l_676.xxyxyxxy)).s45))).xyxyyxxyxyyxyyxx, ((VECTOR(int8_t, 16))(0x51L, ((VECTOR(int8_t, 2))(0x1FL, 0x25L)), 0x5AL, 5L, (-1L), 0L, (l_634 = (l_658[4] = 0x7FL)), 1L, (((VECTOR(int8_t, 4))(l_678.s5273)).x <= p_1351->g_11), ((VECTOR(int8_t, 4))((safe_mul_func_uint8_t_u_u(((FAKE_DIVERGE(p_1351->local_2_offset, get_local_id(2), 10) , p_1351->g_556.s4) | l_681), l_634)), 0L, 0x3FL, (-1L))), 0x36L, (-6L)))))))).sa941)).wwzwzxzyzxzxzzzz, ((VECTOR(int8_t, 16))(0x34L))))).s5) < GROUP_DIVERGE(2, 1))))), l_655))))) , l_635), l_655))))), l_611.s8, ((VECTOR(int8_t, 2))(0x64L)), 0x0EL, ((VECTOR(int8_t, 8))(3L)), l_635, 0x09L, (-9L))).sd666)).lo)).xxyyxyxy, ((VECTOR(int8_t, 8))(0x3BL))))).s21)), (-1L))).s35, ((VECTOR(int8_t, 2))(0x3EL)), ((VECTOR(int8_t, 2))(1L))))).hi, 7)) != (-8L)) ^ 0x0FL);
            }
            return (*l_627);
        }
        (*l_686) = ((&p_1351->g_578 == (l_684[0] = l_683)) , &p_1351->g_237);
    }
    else
    { /* block id: 296 */
        int64_t *l_693 = &p_1351->g_179;
        int64_t l_694 = 6L;
        int32_t l_703 = 0x12BDE0FFL;
        int32_t *l_704 = &l_703;
        int32_t *l_705 = &l_632;
        int32_t **l_706[1];
        int32_t *l_707 = &l_636;
        int i;
        for (i = 0; i < 1; i++)
            l_706[i] = &p_1351->g_251[1];
        (*l_705) = ((*l_704) = (((safe_div_func_int16_t_s_s(((((*p_20) = GROUP_DIVERGE(2, 1)) && ((((safe_add_func_int16_t_s_s(l_691[5], ((safe_unary_minus_func_int32_t_s(((l_630 , l_693) == &p_1351->g_179))) | l_694))) ^ 0x48B2L) , (safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(l_691[5], (safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s((0x47L <= (!(p_1351->g_170.s3 , 0x1CL))), 0xB31F1D4879734203L)), l_694)))), l_629))) && l_599)) & 1L), p_1351->g_585[1])) || l_703) , l_629));
        l_707 = &l_703;
    }
    (*p_1351->g_578) = ((l_632 , (((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 8))((l_631 ^= l_637[1][5]), ((VECTOR(int32_t, 2))(0x1A1937B6L, 1L)), (-2L), ((safe_sub_func_uint64_t_u_u(((void*)0 == l_684[0]), ((l_710 == (void*)0) , 0xC8C301E39432F39FL))) < (~0xD7L)), ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((safe_mod_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((((*l_715) |= p_1351->g_613.w) , l_611.sb) != 0x49ED7DA9A320F5D2L), 0x65BD1B32CE1E3CA5L)), l_691[5])) || l_636), ((VECTOR(int32_t, 4))((-4L))), 0x240FBAF6L, l_636, 1L, (-4L), 0x0A158C89L, 1L, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(2L)), 0x32FC4E3FL)).even, ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 8))(1L))))).s76)), (-1L), 0x2510936DL)).zzzyzywz)).s34, ((VECTOR(int32_t, 2))(0L))))), 0x03DC9726L)).odd, (int32_t)l_637[2][0], (int32_t)l_637[1][5]))).y == l_632)) , (**p_1351->g_577));
    return l_634;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_89
 * writes: p_1351->g_110 p_1351->g_89
 */
uint32_t * func_23(uint32_t  p_24, uint32_t * p_25, uint64_t  p_26, int32_t  p_27, uint16_t  p_28, struct S0 * p_1351)
{ /* block id: 179 */
    int32_t l_414 = 0x43FC73A2L;
    int32_t *l_415 = &p_1351->g_110[0][0][3];
    uint16_t l_424 = 65527UL;
    uint64_t l_535 = 0x7030F141462421A7L;
    int16_t l_576 = 0x7589L;
    for (p_27 = 27; (p_27 < 1); p_27 = safe_sub_func_int16_t_s_s(p_27, 8))
    { /* block id: 182 */
        VECTOR(int32_t, 4) l_410 = (VECTOR(int32_t, 4))(0x36B2C28FL, (VECTOR(int32_t, 2))(0x36B2C28FL, 0x70EB4EEBL), 0x70EB4EEBL);
        int32_t *l_411 = (void*)0;
        int32_t *l_412 = (void*)0;
        int32_t *l_413[10] = {(void*)0,&p_1351->g_110[0][0][3],&p_1351->g_9,&p_1351->g_110[0][0][3],(void*)0,(void*)0,&p_1351->g_110[0][0][3],&p_1351->g_9,&p_1351->g_110[0][0][3],(void*)0};
        int i;
        l_414 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_410.wxxwzxxx)).s66)).hi;
    }
    (*l_415) = p_27;
    for (p_1351->g_89 = 0; (p_1351->g_89 > 27); p_1351->g_89 = safe_add_func_int16_t_s_s(p_1351->g_89, 5))
    { /* block id: 188 */
        int16_t *l_431 = (void*)0;
        int32_t l_432 = (-6L);
        int8_t **l_441 = &p_1351->g_237;
        int32_t l_479 = 0L;
        int32_t *l_524 = (void*)0;
        VECTOR(int64_t, 16) l_527 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 7L), 7L), 7L, 1L, 7L, (VECTOR(int64_t, 2))(1L, 7L), (VECTOR(int64_t, 2))(1L, 7L), 1L, 7L, 1L, 7L);
        int32_t *l_539 = &p_1351->g_9;
        VECTOR(int8_t, 16) l_548 = (VECTOR(int8_t, 16))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0x6AL), 0x6AL), 0x6AL, 0x0FL, 0x6AL, (VECTOR(int8_t, 2))(0x0FL, 0x6AL), (VECTOR(int8_t, 2))(0x0FL, 0x6AL), 0x0FL, 0x6AL, 0x0FL, 0x6AL);
        uint32_t ****l_580 = &p_1351->g_578;
        int64_t l_593 = 0x248FD9DE9C7963DBL;
        uint8_t l_594 = 1UL;
        int i;
        (1 + 1);
    }
    return l_415;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_9 p_1351->g_75 p_1351->g_16 p_1351->g_97 p_1351->g_89 p_1351->g_128 p_1351->g_110 p_1351->g_162 p_1351->g_100 p_1351->g_219 p_1351->g_221 p_1351->g_174 p_1351->g_236 p_1351->g_127 p_1351->g_250 p_1351->g_179 p_1351->g_175 p_1351->g_199 p_1351->g_167 p_1351->g_299 p_1351->g_170 p_1351->g_334 p_1351->g_364 p_1351->g_251 p_1351->g_242 p_1351->g_169 p_1351->g_394 p_1351->g_404
 * writes: p_1351->g_4 p_1351->g_11 p_1351->g_89 p_1351->g_110 p_1351->g_75 p_1351->g_127 p_1351->g_162 p_1351->g_100 p_1351->g_208 p_1351->g_219 p_1351->g_108 p_1351->g_236 p_1351->g_251 p_1351->g_179 p_1351->g_16 p_1351->g_210 p_1351->g_299 p_1351->g_237 p_1351->g_337 p_1351->g_364
 */
int8_t  func_32(int32_t * p_33, int32_t * p_34, int32_t * p_35, int64_t  p_36, struct S0 * p_1351)
{ /* block id: 12 */
    uint64_t l_40 = 0UL;
    int32_t l_247 = 0L;
    int32_t l_252 = 0x385E9B5AL;
    VECTOR(uint8_t, 2) l_253 = (VECTOR(uint8_t, 2))(255UL, 0x89L);
    VECTOR(uint64_t, 2) l_266 = (VECTOR(uint64_t, 2))(0x3A5D2AD8E04EC45EL, 0xB91C3951CD99B518L);
    uint32_t **l_275 = &p_1351->g_127;
    int32_t l_332 = 0L;
    int16_t *l_333 = (void*)0;
    VECTOR(int64_t, 2) l_353 = (VECTOR(int64_t, 2))(0x319AEABEDDEFFCEDL, 0x22ED12D54F6AAC7CL);
    int8_t ***l_363 = (void*)0;
    VECTOR(int8_t, 8) l_398 = (VECTOR(int8_t, 8))(0x13L, (VECTOR(int8_t, 4))(0x13L, (VECTOR(int8_t, 2))(0x13L, 0x0DL), 0x0DL), 0x0DL, 0x13L, 0x0DL);
    int32_t **l_399[5];
    int32_t l_400 = 0L;
    int64_t l_401 = 0x53899EDA288E46E9L;
    int i;
    for (i = 0; i < 5; i++)
        l_399[i] = &p_1351->g_251[1];
    for (p_36 = 8; (p_36 < (-13)); p_36--)
    { /* block id: 15 */
        int32_t *l_54[10] = {&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9};
        uint64_t *l_276 = (void*)0;
        int64_t l_277 = 0x57FB8D9610C3C40BL;
        VECTOR(int64_t, 2) l_293 = (VECTOR(int64_t, 2))(0x20D2046FB56C8CDFL, 0x5656C1BF361C28E8L);
        int64_t *l_347 = &p_1351->g_179;
        int64_t **l_346[9][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        VECTOR(uint64_t, 16) l_386 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x65F740A3A9D0F199L), 0x65F740A3A9D0F199L), 0x65F740A3A9D0F199L, 1UL, 0x65F740A3A9D0F199L, (VECTOR(uint64_t, 2))(1UL, 0x65F740A3A9D0F199L), (VECTOR(uint64_t, 2))(1UL, 0x65F740A3A9D0F199L), 1UL, 0x65F740A3A9D0F199L, 1UL, 0x65F740A3A9D0F199L);
        uint32_t l_389 = 0xBCB76E40L;
        int i, j, k;
        if (l_40)
        { /* block id: 16 */
            uint32_t *l_74[9][9][3] = {{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}},{{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75},{(void*)0,(void*)0,&p_1351->g_75}}};
            uint32_t **l_73 = &l_74[4][5][1];
            int32_t l_116[6][6] = {{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L},{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L},{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L},{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L},{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L},{0x0AA747B8L,0x0AA747B8L,0x46D94E14L,0L,0x77FD1FBCL,0L}};
            int i, j, k;
            (*p_1351->g_250) = func_41(&p_1351->g_9, func_46(p_36, p_1351), l_54[3], (l_247 = func_55((func_60(func_63((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((!(((*l_73) = p_34) != &p_1351->g_75)), (safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u((1UL ^ ((VECTOR(uint8_t, 2))(0xAAL, 0x53L)).lo), (safe_lshift_func_int8_t_s_u(((+((-6L) > 0x54L)) , p_1351->g_9), 4)))), GROUP_DIVERGE(1, 1))))), (-2L))) >= p_36), 4)), &p_1351->g_75, p_1351->g_9, p_1351), p_36, p_1351) | l_116[3][2]), l_40, l_40, p_36, p_1351)), p_1351);
            --l_253.x;
        }
        else
        { /* block id: 111 */
            int32_t l_256[3][2][9] = {{{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)},{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)}},{{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)},{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)}},{{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)},{(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L),(-7L),0x08851F16L,(-7L)}}};
            int i, j, k;
            if (l_256[0][0][8])
                break;
            if (l_256[0][0][8])
                break;
            for (p_1351->g_179 = 0; (p_1351->g_179 != 1); p_1351->g_179 = safe_add_func_int8_t_s_s(p_1351->g_179, 1))
            { /* block id: 116 */
                int8_t l_259 = (-8L);
                return l_259;
            }
            l_252 |= (l_247 = (*p_35));
        }
        if ((((void*)0 != &p_1351->g_128) , ((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_266.yyxxxxxx)).s73)), 18446744073709551613UL, 0x0766CAE764823220L)).xzzwzwyxzyxzzxwx)).s5393)))).wxxzzwzwzxzwwzyy)).hi)).s6, (p_1351->g_179 &= (safe_mod_func_int16_t_s_s(((p_1351->g_219 = p_1351->g_219) != &l_40), p_36))))) , l_266.y), ((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))((((safe_mod_func_int32_t_s_s((((safe_sub_func_int64_t_s_s((l_275 == &p_1351->g_129), (l_247 |= p_36))) & l_40) || p_1351->g_170.s7), (*p_33))) <= p_36) || (-7L)), (-4L), (-2L), 0x2EL, 0L, ((VECTOR(int8_t, 2))(0x4AL)), (-2L), l_253.x, 0x43L, (-4L), (-9L), l_277, ((VECTOR(int8_t, 2))(0L)), 1L)).hi, ((VECTOR(int8_t, 8))(0x42L))))).hi)).y, p_1351->g_175.s1)) == (-6L)))), GROUP_DIVERGE(1, 1))) , (-1L))))
        { /* block id: 125 */
            int16_t *l_280 = (void*)0;
            int16_t *l_281 = (void*)0;
            int16_t *l_282 = (void*)0;
            int16_t *l_283 = (void*)0;
            int32_t l_284 = (-7L);
            VECTOR(int32_t, 2) l_285 = (VECTOR(int32_t, 2))((-7L), 0x2ACED608L);
            VECTOR(int64_t, 8) l_292 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 7L), 7L), 7L, 1L, 7L);
            int8_t *l_327[10] = {(void*)0,(void*)0,&p_1351->g_89,(void*)0,(void*)0,(void*)0,(void*)0,&p_1351->g_89,(void*)0,(void*)0};
            int32_t l_362 = 0x2B12887DL;
            int32_t l_365 = 0L;
            uint8_t l_379 = 1UL;
            int i;
            l_284 |= ((p_1351->g_16.x &= (safe_rshift_func_int8_t_s_s(1L, 2))) , (*p_35));
            l_252 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_285.yyyyyxxyxyxxyxxy)))).s0;
            for (p_1351->g_210 = 0; (p_1351->g_210 < 51); p_1351->g_210 = safe_add_func_uint64_t_u_u(p_1351->g_210, 6))
            { /* block id: 131 */
                uint16_t *l_298[4];
                uint32_t ***l_303[2];
                uint32_t ****l_304 = &l_303[0];
                uint8_t *l_307 = (void*)0;
                uint8_t *l_308[7][6][6] = {{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}},{{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]},{&p_1351->g_162[1][0][1],&p_1351->g_162[0][0][3],&p_1351->g_210,&p_1351->g_162[1][0][4],&p_1351->g_210,&p_1351->g_162[1][0][1]}}};
                int32_t l_321 = 0x7A0DD96FL;
                int8_t **l_326 = &p_1351->g_237;
                int32_t *l_336[4][4][6] = {{{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337}},{{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337}},{{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337}},{{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337},{(void*)0,&p_1351->g_337,&p_1351->g_337,(void*)0,&p_1351->g_337,&p_1351->g_337}}};
                int32_t l_338 = 0x4DAB0666L;
                int64_t *l_340 = (void*)0;
                int64_t **l_339 = &l_340;
                int32_t l_341[1][7][7] = {{{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L},{0L,0x5C43B7B0L,0x53186862L,(-1L),0x53186862L,0x5C43B7B0L,0L}}};
                int32_t l_342[5][5] = {{6L,0L,0x1C3DA5C7L,0L,6L},{6L,0L,0x1C3DA5C7L,0L,6L},{6L,0L,0x1C3DA5C7L,0L,6L},{6L,0L,0x1C3DA5C7L,0L,6L},{6L,0L,0x1C3DA5C7L,0L,6L}};
                VECTOR(int8_t, 16) l_343 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x66L), 0x66L), 0x66L, (-1L), 0x66L, (VECTOR(int8_t, 2))((-1L), 0x66L), (VECTOR(int8_t, 2))((-1L), 0x66L), (-1L), 0x66L, (-1L), 0x66L);
                int64_t ***l_348 = &l_346[6][5][0];
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_298[i] = &p_1351->g_299;
                for (i = 0; i < 2; i++)
                    l_303[i] = &l_275;
                l_252 = (0x5DL || (((((safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 8))(l_292.s05557220)).even, ((VECTOR(int64_t, 2))(l_293.yy)).yxyx))).yyzxxxyw)).s6, (p_36 , 1UL))), (-2L))) < (p_1351->g_299 = (safe_mul_func_uint16_t_u_u((l_247 = (safe_rshift_func_uint8_t_u_u(p_1351->g_199.y, 1))), (safe_sub_func_uint16_t_u_u(((safe_unary_minus_func_int64_t_s((&p_1351->g_128 == ((*l_304) = l_303[1])))) , (safe_div_func_uint64_t_u_u(((((++p_1351->g_162[1][0][1]) & 1L) < (safe_mod_func_int16_t_s_s((((safe_rshift_func_int8_t_s_u(((l_285.y = (*p_33)) && FAKE_DIVERGE(p_1351->global_0_offset, get_global_id(0), 10)), 0)) && p_1351->g_89) , p_1351->g_100.y), 65532UL))) >= l_40), p_36))), 0x3D27L)))))) & l_292.s7) , p_1351->g_167.s4) >= l_292.s5));
                l_342[0][3] &= (safe_lshift_func_int8_t_s_s((l_332 = ((((safe_rshift_func_int16_t_s_u(p_1351->g_299, 3)) , ((*l_339) = ((p_1351->g_337 = (l_338 = ((safe_mul_func_int8_t_s_s(l_285.x, ((((l_247 |= (*p_35)) & ((l_321 = 0L) | p_36)) , (safe_mul_func_uint16_t_u_u(((((FAKE_DIVERGE(p_1351->global_2_offset, get_global_id(2), 10) == (safe_div_func_uint8_t_u_u(((l_284 , ((*l_326) = (void*)0)) == l_327[4]), (safe_mul_func_int16_t_s_s((((safe_add_func_uint8_t_u_u(((((p_36 & p_36) >= l_332) & p_1351->g_170.s3) | 0x3E5AEC1DL), GROUP_DIVERGE(2, 1))) == p_1351->g_162[1][0][1]) ^ 1UL), l_321))))) | 1UL) , l_333) == p_1351->g_334[2][1]), l_284))) && (*p_33)))) , p_36))) , &l_277))) == (void*)0) < l_341[0][5][0])), 1));
                l_365 &= ((((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_343.s5a59f050)))).s2363274411153542))).s6 , ((&p_1351->g_337 != &p_1351->g_337) <= (safe_sub_func_uint64_t_u_u(((((((*l_348) = (l_339 = l_346[6][5][0])) != (void*)0) , (GROUP_DIVERGE(2, 1) || (safe_add_func_uint32_t_u_u(1UL, (safe_add_func_uint64_t_u_u(l_341[0][5][0], ((VECTOR(int64_t, 16))(l_353.xxyyxxxyyyyxyxyx)).sb)))))) , (safe_sub_func_int16_t_s_s((1L ^ (((((safe_mul_func_int8_t_s_s(((l_362 = ((((p_36 , (safe_add_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s((((((l_285.x && 18446744073709551615UL) >= l_341[0][5][0]) | l_285.y) && l_285.x) != p_36), p_1351->g_174.s4)) , &p_1351->g_221) == &p_1351->g_219), 0x6E3EL))) && p_36) == l_332) != (*p_35))) || p_36), 0UL)) < l_284) || p_36) , (void*)0) == l_363)), p_1351->g_364))) & GROUP_DIVERGE(0, 1)), p_36)))) > 1L);
            }
            for (p_1351->g_364 = 0; (p_1351->g_364 > 21); p_1351->g_364 = safe_add_func_uint8_t_u_u(p_1351->g_364, 4))
            { /* block id: 153 */
                int32_t **l_369[3][1];
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_369[i][j] = &l_54[3];
                }
                (*p_1351->g_250) = (*p_1351->g_250);
                p_34 = p_34;
                for (p_1351->g_89 = 0; (p_1351->g_89 > 9); ++p_1351->g_89)
                { /* block id: 158 */
                    VECTOR(uint32_t, 8) l_376 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x8601E299L), 0x8601E299L), 0x8601E299L, 0UL, 0x8601E299L);
                    int32_t l_380 = 1L;
                    int i;
                    l_252 ^= (l_380 = ((safe_mod_func_uint8_t_u_u(((safe_div_func_int8_t_s_s(l_266.y, ((p_1351->g_242.x != l_376.s2) & (0UL == (safe_add_func_uint32_t_u_u((p_36 | p_36), ((!p_36) & 0x94L))))))) == (((-1L) | 0xD5L) & l_379)), p_36)) > p_1351->g_169.x));
                    (*p_1351->g_250) = (void*)0;
                }
            }
        }
        else
        { /* block id: 164 */
            uint64_t l_383 = 0x32772F5DB7660D14L;
            int32_t l_395 = 0x2EE42B8CL;
            l_395 = (((((safe_mul_func_int8_t_s_s((l_266.x , ((VECTOR(int8_t, 4))(0x05L, p_36, 0x1CL, 0L)).z), l_383)) || (safe_add_func_uint8_t_u_u(p_1351->g_179, GROUP_DIVERGE(0, 1)))) != (0x4BC2L == l_383)) <= 0x3006L) <= (((VECTOR(uint64_t, 2))(l_386.s15)).hi , (safe_mod_func_uint32_t_u_u(l_389, (safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((0xA807CEECB7727273L == p_1351->g_16.y) > p_1351->g_394), (-1L))), p_36))))));
        }
        l_252 |= (safe_mul_func_uint8_t_u_u(p_1351->g_242.x, (((VECTOR(int8_t, 8))(l_398.s63745727)).s4 && (0x1A85D743L > (0UL <= (*p_35))))));
    }
    p_34 = (void*)0;
    l_401 = (l_400 = (*p_35));
    for (p_1351->g_299 = (-3); (p_1351->g_299 == 10); p_1351->g_299 = safe_add_func_int16_t_s_s(p_1351->g_299, 3))
    { /* block id: 174 */
        uint64_t l_405 = 1UL;
        l_405 = ((VECTOR(int32_t, 2))(p_1351->g_404.s76)).hi;
    }
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_41(int32_t * p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, struct S0 * p_1351)
{ /* block id: 106 */
    int8_t *l_248 = (void*)0;
    int32_t l_249 = (-1L);
    l_249 = (((VECTOR(int64_t, 2))(0x039A92ECBBEFF508L, 0L)).odd == (l_248 == (void*)0));
    return &p_1351->g_110[0][0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_4 p_1351->g_11
 * writes: p_1351->g_4 p_1351->g_11
 */
int32_t * func_46(int32_t  p_47, struct S0 * p_1351)
{ /* block id: 17 */
    int32_t *l_53 = &p_1351->g_9;
    for (p_1351->g_4 = 0; (p_1351->g_4 > 1); ++p_1351->g_4)
    { /* block id: 20 */
        int32_t *l_52[10] = {&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9,&p_1351->g_9};
        int i;
        for (p_1351->g_11 = 15; (p_1351->g_11 < 20); p_1351->g_11 = safe_add_func_uint64_t_u_u(p_1351->g_11, 7))
        { /* block id: 23 */
            if (p_47)
                break;
        }
        return l_52[1];
    }
    return l_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_89 p_1351->g_75 p_1351->g_16 p_1351->g_97 p_1351->g_100 p_1351->g_128 p_1351->g_110 p_1351->g_151 p_1351->g_162 p_1351->g_167 p_1351->g_169 p_1351->g_170 p_1351->g_174 p_1351->g_175 p_1351->g_177 p_1351->g_127 p_1351->g_199 p_1351->g_9 p_1351->g_219 p_1351->g_221 p_1351->g_236 p_1351->g_242
 * writes: p_1351->g_89 p_1351->g_110 p_1351->g_127 p_1351->g_162 p_1351->g_179 p_1351->g_100 p_1351->g_208 p_1351->g_219 p_1351->g_108 p_1351->g_236
 */
int32_t  func_55(int8_t  p_56, uint32_t  p_57, uint64_t  p_58, int32_t  p_59, struct S0 * p_1351)
{ /* block id: 39 */
    VECTOR(uint64_t, 16) l_119 = (VECTOR(uint64_t, 16))(0xCBB3E61ED58A6F27L, (VECTOR(uint64_t, 4))(0xCBB3E61ED58A6F27L, (VECTOR(uint64_t, 2))(0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L), 0x9B2E0BA896EA0D35L), 0x9B2E0BA896EA0D35L, 0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L, (VECTOR(uint64_t, 2))(0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L), (VECTOR(uint64_t, 2))(0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L), 0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L, 0xCBB3E61ED58A6F27L, 0x9B2E0BA896EA0D35L);
    uint32_t **l_122 = (void*)0;
    uint32_t ***l_123 = &l_122;
    uint32_t **l_124 = (void*)0;
    int8_t *l_125 = (void*)0;
    int8_t *l_126 = &p_1351->g_89;
    VECTOR(uint64_t, 8) l_139 = (VECTOR(uint64_t, 8))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0xD89C7B4ADEE2F40CL), 0xD89C7B4ADEE2F40CL), 0xD89C7B4ADEE2F40CL, 18446744073709551609UL, 0xD89C7B4ADEE2F40CL);
    VECTOR(int32_t, 16) l_142 = (VECTOR(int32_t, 16))(0x03163289L, (VECTOR(int32_t, 4))(0x03163289L, (VECTOR(int32_t, 2))(0x03163289L, 0x4F28CA52L), 0x4F28CA52L), 0x4F28CA52L, 0x03163289L, 0x4F28CA52L, (VECTOR(int32_t, 2))(0x03163289L, 0x4F28CA52L), (VECTOR(int32_t, 2))(0x03163289L, 0x4F28CA52L), 0x03163289L, 0x4F28CA52L, 0x03163289L, 0x4F28CA52L);
    VECTOR(int8_t, 16) l_152 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x6CL), 0x6CL), 0x6CL, (-4L), 0x6CL, (VECTOR(int8_t, 2))((-4L), 0x6CL), (VECTOR(int8_t, 2))((-4L), 0x6CL), (-4L), 0x6CL, (-4L), 0x6CL);
    VECTOR(int8_t, 2) l_154 = (VECTOR(int8_t, 2))(0x18L, 0x62L);
    int32_t l_160 = 1L;
    VECTOR(uint64_t, 2) l_171 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x1CD10DC54FBD5187L);
    VECTOR(int32_t, 2) l_185 = (VECTOR(int32_t, 2))(0L, 0x6C9127E7L);
    int32_t *l_227 = &l_160;
    volatile uint32_t **l_232 = (void*)0;
    VECTOR(int32_t, 4) l_243 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L);
    int32_t *l_246 = (void*)0;
    int i;
    if ((safe_rshift_func_uint8_t_u_u((l_119.s0 && p_57), (((((safe_div_func_uint8_t_u_u((((p_1351->g_127 = func_63(((((*l_123) = l_122) == l_124) < (-1L)), &p_1351->g_75, ((*l_126) |= l_119.s5), p_1351)) != &p_1351->g_75) == p_1351->g_97.y), 255UL)) , GROUP_DIVERGE(1, 1)) , p_56) , (*l_123)) == p_1351->g_128))))
    { /* block id: 43 */
        int32_t *l_130 = &p_1351->g_110[0][0][3];
        (*l_130) |= 1L;
    }
    else
    { /* block id: 45 */
        int32_t *l_132[3][10][3] = {{{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]}},{{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]}},{{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]},{&p_1351->g_110[0][0][3],(void*)0,&p_1351->g_110[0][0][3]}}};
        int32_t **l_131 = &l_132[0][2][2];
        int16_t *l_140 = (void*)0;
        int16_t *l_141[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(int8_t, 2) l_153 = (VECTOR(int8_t, 2))(0x63L, (-1L));
        VECTOR(uint32_t, 8) l_157 = (VECTOR(uint32_t, 8))(0x9DD07A39L, (VECTOR(uint32_t, 4))(0x9DD07A39L, (VECTOR(uint32_t, 2))(0x9DD07A39L, 0x04334622L), 0x04334622L), 0x04334622L, 0x9DD07A39L, 0x04334622L);
        uint64_t *l_158 = (void*)0;
        uint64_t *l_159[2];
        uint8_t *l_161 = &p_1351->g_162[1][0][1];
        VECTOR(int32_t, 2) l_166 = (VECTOR(int32_t, 2))(0L, 5L);
        VECTOR(int32_t, 2) l_168 = (VECTOR(int32_t, 2))(0L, (-5L));
        VECTOR(uint64_t, 16) l_176 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x32EA3695C09D9FA9L), 0x32EA3695C09D9FA9L), 0x32EA3695C09D9FA9L, 0UL, 0x32EA3695C09D9FA9L, (VECTOR(uint64_t, 2))(0UL, 0x32EA3695C09D9FA9L), (VECTOR(uint64_t, 2))(0UL, 0x32EA3695C09D9FA9L), 0UL, 0x32EA3695C09D9FA9L, 0UL, 0x32EA3695C09D9FA9L);
        VECTOR(uint16_t, 2) l_194 = (VECTOR(uint16_t, 2))(0x86AEL, 0xCE28L);
        VECTOR(int16_t, 2) l_197 = (VECTOR(int16_t, 2))(0x704DL, (-2L));
        int32_t l_206 = 0x5F7EFAE8L;
        uint32_t l_215 = 0x97466EF6L;
        VECTOR(int64_t, 2) l_218 = (VECTOR(int64_t, 2))(0x2CE38918D328478CL, 0x15F136461E4D9616L);
        int32_t l_245 = 0x2D53C59BL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_159[i] = (void*)0;
        (*l_131) = &p_1351->g_9;
        if (((safe_add_func_int8_t_s_s((p_59 , (((safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((((l_142.s8 ^= (!(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0xDA5E6622833DDCFDL, 5UL)))).lo || ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_139.s15)))).even))) == (safe_lshift_func_int8_t_s_s(0x68L, 4))) > (((VECTOR(uint16_t, 4))(0x12EBL, 0x3A62L, 0x867FL, 0x65A3L)).x , ((safe_mul_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(((safe_sub_func_uint64_t_u_u(7UL, (((*l_161) = (((FAKE_DIVERGE(p_1351->group_1_offset, get_group_id(1), 10) != ((((((VECTOR(uint8_t, 8))(p_1351->g_151.yxwwzwxx)).s6 > ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(l_152.s662c)).even, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))((-1L), 0x74L)), ((VECTOR(int8_t, 2))((-1L), (-5L))))))))), 1L, 0x64L)).xyyywzxy, ((VECTOR(int8_t, 8))(l_153.xyxxxxyy)), ((VECTOR(int8_t, 8))(l_154.yxyxyyxx))))).s5553072312353173)).s3) > (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x19L, 247UL)), 3UL, 0xEEL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(0x3FL, ((&p_1351->g_89 != (void*)0) ^ ((VECTOR(uint32_t, 8))(l_157.s71627537)).s4), 0x03L, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(4UL, 0x16L, ((VECTOR(uint8_t, 2))(255UL, 0x8AL)), ((VECTOR(uint8_t, 2))(0xADL, 0x17L)), 6UL, 0x0FL)).even, ((VECTOR(uint8_t, 4))(0xD6L, p_56, 0x91L, 0xFEL)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(1UL, 0xF1L, 0x7EL, 0xC5L, ((VECTOR(uint8_t, 16))(0UL, 0x97L, ((VECTOR(uint8_t, 8))(((((l_160 |= (9UL & p_59)) >= FAKE_DIVERGE(p_1351->global_0_offset, get_global_id(0), 10)) >= (-5L)) == 0x7CL), 5UL, ((VECTOR(uint8_t, 2))(0x93L)), ((VECTOR(uint8_t, 2))(0x71L)), 0x91L, 0x59L)), 0xAAL, ((VECTOR(uint8_t, 2))(0xA8L)), l_160, 255UL, 0x34L)).sd, 246UL, ((VECTOR(uint8_t, 4))(251UL)), 246UL, ((VECTOR(uint8_t, 4))(0xA1L)), 0x02L)).s80)), ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL))))), p_56, 0xE8L, 246UL, 0xF7L, 6UL, 0UL)))).even))))).zywzwzwz)).s10, ((VECTOR(uint8_t, 2))(1UL))))), 0xF0L, 0x52L, 0xFAL)).lo)), l_152.s5, ((VECTOR(uint8_t, 4))(0x35L)), ((VECTOR(uint8_t, 2))(0x1BL)), 1UL)).s1fc3)).hi)), ((VECTOR(uint8_t, 2))(2UL))))).xyxxxyyy, ((VECTOR(uint16_t, 8))(1UL))))))).s4354612773026450, ((VECTOR(uint16_t, 16))(65535UL))))).s399d)).y, l_139.s4))) , p_58) , FAKE_DIVERGE(p_1351->global_2_offset, get_global_id(2), 10))) , p_57) , 0x29L)) , p_56))) , p_1351->g_110[2][0][2]), p_1351->g_75)) < l_152.s5), 65535UL)) >= FAKE_DIVERGE(p_1351->global_2_offset, get_global_id(2), 10)))), p_1351->g_16.y)), 13)) , p_1351->g_162[1][0][1]) , 0x52L)), GROUP_DIVERGE(0, 1))) < l_119.se))
        { /* block id: 50 */
            uint32_t l_165 = 1UL;
            VECTOR(uint64_t, 8) l_172 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
            VECTOR(uint64_t, 8) l_173 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x7126551609B5F3F9L), 0x7126551609B5F3F9L), 0x7126551609B5F3F9L, 1UL, 0x7126551609B5F3F9L);
            VECTOR(int32_t, 4) l_183 = (VECTOR(int32_t, 4))(0x5CF8C009L, (VECTOR(int32_t, 2))(0x5CF8C009L, 0x258296FAL), 0x258296FAL);
            VECTOR(int32_t, 2) l_184 = (VECTOR(int32_t, 2))(0x085BD3CEL, (-3L));
            VECTOR(uint16_t, 2) l_198 = (VECTOR(uint16_t, 2))(0x2ECEL, 0x885BL);
            int8_t *l_202 = (void*)0;
            int i;
            for (p_59 = 29; (p_59 > 26); --p_59)
            { /* block id: 53 */
                int64_t *l_178 = &p_1351->g_179;
                int32_t l_182 = 0x69614EA6L;
                int8_t **l_203 = &l_125;
                uint8_t *l_207 = &p_1351->g_208;
                uint8_t *l_209[6] = {&p_1351->g_210,&p_1351->g_210,&p_1351->g_210,&p_1351->g_210,&p_1351->g_210,&p_1351->g_210};
                int32_t l_211 = (-2L);
                int8_t *l_212 = (void*)0;
                int8_t *l_213 = (void*)0;
                int8_t *l_214 = (void*)0;
                int i;
                l_183.z = (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_165, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_166.xyxy)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x349F2DE3L, 0x35C12522L, 0x21AFD968L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_1351->g_167.s56751553)).s2, ((VECTOR(int32_t, 2))(l_168.xy)), 1L)), ((VECTOR(int32_t, 16))(p_1351->g_169.yxyxxxxxyxxxxyyx)).s7159))), 0x6D459FDAL, (((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 2))(0x41E5680E47E4D3A4L, 18446744073709551609UL)), ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(p_1351->g_170.s3524732160654766)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_171.xxxy)).zxxywyyw)).s0253140455141075, ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(l_172.s2735770107053014)).s21, ((VECTOR(uint64_t, 2))(l_173.s54)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(p_1351->g_174.s73)))), 0x1056DD29B11EE237L, 0x68FCF27A2CD24F5EL, ((VECTOR(uint64_t, 4))(p_1351->g_175.s2772)))).s4455262754066232)).even)).s62))).xyyyyyyyyxxyyxyy))).s08, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(l_176.s4b1c12867139cee8)), ((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0xC17A030760C69577L, 7UL)))))), ((VECTOR(uint64_t, 2))(0UL, 0x6CEFED949C42C81BL))))).yyyyyxyxxyyyxyyx))).s90, ((VECTOR(uint64_t, 4))(p_1351->g_177.s5312)).even))), 0x7B3D9BBB440E1239L, 18446744073709551615UL)))).lo))).lo < ((*l_178) = ((VECTOR(int64_t, 4))(0x3C724B45B9D29409L, ((VECTOR(int64_t, 2))(0x6AD9D9C329BA1BEAL, (-7L))).lo, 0x37D223D82C60171FL, 0x389586FDC5E22E70L)).w)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))((-1L), ((VECTOR(int32_t, 2))(0x1343E88DL, (-1L))), 7L, (-1L), (-8L), 5L, (safe_sub_func_int32_t_s_s(l_142.s9, l_182)), ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(0x51B5097CL, ((VECTOR(int32_t, 2))(l_183.zy)), 0x26E8E737L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_184.xyxxyxyx)).s5774364755336735)).s0654, ((VECTOR(int32_t, 2))(0x1F86B6F2L, 0x6E9AC831L)).yyxy))).hi)).yxxx))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(l_185.xxxy)).even, ((VECTOR(int32_t, 16))(5L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x250A0527L, 0x1566154BL)).yxxy)), ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(9L, (((safe_lshift_func_uint16_t_u_s(p_1351->g_175.s5, (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) == (*p_1351->g_127)), p_58)), 3)))) < ((~p_57) & (safe_sub_func_int64_t_s_s(((p_57 ^ (l_182 <= l_182)) , 0x4FC5EF55CF0B89F9L), p_59)))) == 0UL), ((VECTOR(int32_t, 4))(0x767CD7A2L)), 0L, 0x3590E6B1L)).s2064522253033435, ((VECTOR(int32_t, 16))((-1L)))))).sac26))).xyzxxxxxyxwzwxxy, ((VECTOR(int32_t, 16))(0x427A46F4L)), ((VECTOR(int32_t, 16))(0x4CFE6552L))))).s0f51, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x3E437AF7L))))), l_182, (-2L), (-9L), 0L)).hi)), p_56, 0x4496A5FAL, 1L, p_59, 0x1DEE71F5L, l_172.s3, l_194.x, 0x6340D570L, ((VECTOR(int32_t, 2))(5L)), 0x5F3EB537L)).s13))).xyyxyyxxxxyxxyyx)).sf5be))), ((VECTOR(int32_t, 4))(0x10BE3177L)))).even)), 0x6FBC22A8L, (-9L))).s101b, ((VECTOR(int32_t, 4))(0x62534F43L))))).wxwzyzxy, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))((-9L)))))).lo, ((VECTOR(int32_t, 4))(0x3A408C8EL)), ((VECTOR(int32_t, 4))(0x65854BE6L))))).wzzxyywwxyxyyxwx, ((VECTOR(int32_t, 16))((-8L))), ((VECTOR(int32_t, 16))(4L))))).s5f, ((VECTOR(int32_t, 2))(7L))))).xyyyyyyyxyxyxyyy, ((VECTOR(int32_t, 16))(3L)), ((VECTOR(int32_t, 16))((-1L)))))).saf)))), 0x267A0181L, 5L, 0L)).hi)), ((VECTOR(int32_t, 4))((-10L)))))), (-9L), p_56, 0x6973E679L, (-6L), 0x794354BBL, p_59, 1L, 0x5FD2789EL, p_56, (-6L), 0L)).lo)).s0 < p_56);
                if ((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 2))(l_197.xy)).xxxy))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(0x86DFL, 7UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x7638L, 0xF52AL)))), ((VECTOR(uint16_t, 4))(l_198.xyxx)))), ((VECTOR(uint16_t, 8))(p_1351->g_199.yxxyxxyx))))).s72)).xyyy))).z, (safe_add_func_int8_t_s_s((l_184.y ^= ((l_142.s0 < ((l_182 = ((*l_207) = ((((l_160 &= (l_206 = (((l_202 == ((*l_203) = (((p_1351->g_9 != l_139.s1) != (p_1351->g_162[1][0][2] = GROUP_DIVERGE(2, 1))) , &p_1351->g_89))) < ((0xE5L && ((*l_126) = (p_1351->g_100.x &= (p_1351->g_9 | p_1351->g_97.x)))) & (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))((safe_sub_func_int8_t_s_s(l_185.x, p_1351->g_177.s2)), 0x61L, 0x57L, 0L)).hi, ((VECTOR(int8_t, 2))(1L))))).xxyyxyxx)).s2 ^ 255UL))) && 1UL))) >= p_1351->g_16.y) , 6L) > p_59))) | l_211)) , p_1351->g_97.y)), l_211)))))
                { /* block id: 65 */
                    if (((((void*)0 == &p_1351->g_127) | p_58) && p_59))
                    { /* block id: 66 */
                        (*l_131) = &p_1351->g_110[2][0][1];
                        return l_215;
                    }
                    else
                    { /* block id: 69 */
                        return p_58;
                    }
                }
                else
                { /* block id: 72 */
                    uint32_t l_222[2];
                    uint32_t *l_224 = (void*)0;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_222[i] = 0xA116BE21L;
                    for (l_211 = (-29); (l_211 >= 1); l_211 = safe_add_func_uint8_t_u_u(l_211, 3))
                    { /* block id: 75 */
                        uint64_t **l_220[6] = {&l_158,&l_159[0],&l_158,&l_158,&l_159[0],&l_158};
                        int32_t l_223 = 0x5E90D805L;
                        int i;
                        (*l_131) = (((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 4))(0x7363091431907387L, ((VECTOR(int64_t, 2))(0x228314172D5EB519L, 0x7739C3057E2544EDL)), 3L)).xwxzwwwz, ((VECTOR(int64_t, 8))(0x66F70D77458279E1L, 1L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_218.xyxyxxxx)).hi)), 0x1B26A0A0CF42D8C5L, 0x06CE9349126210A3L))))).s5 , &l_182);
                        p_1351->g_108 = func_63(l_183.x, (((((p_1351->g_219 = p_1351->g_219) == (FAKE_DIVERGE(p_1351->group_1_offset, get_group_id(1), 10) , p_1351->g_221)) <= l_222[0]) , l_223) , l_224), (safe_lshift_func_int8_t_s_s((0x6AL == p_1351->g_174.s7), 2)), p_1351);
                    }
                    return p_59;
                }
            }
            (*l_131) = l_227;
            for (l_165 = 9; (l_165 != 9); ++l_165)
            { /* block id: 86 */
                int8_t l_233 = 6L;
                for (l_160 = 0; (l_160 == (-12)); --l_160)
                { /* block id: 89 */
                    if (p_57)
                        break;
                    (*l_131) = &p_1351->g_9;
                    l_232 = &p_1351->g_129;
                }
                if (l_233)
                    break;
            }
        }
        else
        { /* block id: 96 */
            int8_t ***l_238 = (void*)0;
            int8_t ***l_239 = &p_1351->g_236[3];
            int8_t **l_241[1];
            int8_t ***l_240 = &l_241[0];
            int32_t l_244 = (-6L);
            int i;
            for (i = 0; i < 1; i++)
                l_241[i] = &p_1351->g_237;
            l_244 = ((1L || (safe_mul_func_uint8_t_u_u(((((((*l_239) = p_1351->g_236[0]) == ((*l_240) = &l_125)) > 0x7CC17E4FFE9D0B99L) < ((VECTOR(uint16_t, 2))(0UL, 0xDB06L)).hi) != ((VECTOR(int32_t, 16))(p_1351->g_242.yxxyyxyyyyyxxyyx)).s2), (p_1351->g_208 = (((VECTOR(int32_t, 2))(l_243.yy)).even <= l_244))))) , ((*p_1351->g_127) == (l_245 & (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((p_56 && l_244), (-5L), 0x1AEA71C1B7A625C3L, 1L)).yzxyyzwxwyyyxxxw)).s6 , p_58))));
            (*l_131) = l_246;
        }
    }
    return p_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_75
 * writes: p_1351->g_75
 */
int32_t  func_60(int32_t * p_61, int32_t  p_62, struct S0 * p_1351)
{ /* block id: 36 */
    int8_t l_115 = 0x16L;
    (*p_61) &= 1L;
    return l_115;
}


/* ------------------------------------------ */
/* 
 * reads : p_1351->g_75 p_1351->g_16 p_1351->g_97 p_1351->g_100 p_1351->g_89
 * writes: p_1351->g_89 p_1351->g_110
 */
int32_t * func_63(int32_t  p_64, uint32_t * p_65, int8_t  p_66, struct S0 * p_1351)
{ /* block id: 30 */
    int8_t *l_88 = &p_1351->g_89;
    int32_t l_92 = (-2L);
    uint64_t l_105 = 0UL;
    uint32_t l_106 = 4294967295UL;
    int32_t *l_107 = &l_92;
    int32_t *l_109[4][4] = {{&p_1351->g_9,&p_1351->g_9,&p_1351->g_110[0][0][3],&p_1351->g_9},{&p_1351->g_9,&p_1351->g_9,&p_1351->g_110[0][0][3],&p_1351->g_9},{&p_1351->g_9,&p_1351->g_9,&p_1351->g_110[0][0][3],&p_1351->g_9},{&p_1351->g_9,&p_1351->g_9,&p_1351->g_110[0][0][3],&p_1351->g_9}};
    int64_t l_111 = (-5L);
    uint32_t l_112 = 0xED7C6F00L;
    int i, j;
    p_1351->g_110[1][0][2] = ((*l_107) = ((((!(safe_mod_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(0xD0B67C40L, (p_1351->g_75 | (((safe_lshift_func_int8_t_s_s(((p_1351->g_16.y | p_64) , ((*l_88) = ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))((-6L), 0x77L)).xyxxyyxxxxyxyxxx))).s9)), (((safe_sub_func_int64_t_s_s(l_92, (+((safe_rshift_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 8))(p_1351->g_97.ywyxwzyx)), ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 4))(0x3FDF4734A2D56AB6L, ((VECTOR(uint64_t, 2))(0x4E6B2E546C5BE011L, 0UL)), 0x2AAF3324EF461E62L)).zyxzywxw, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))((((VECTOR(int64_t, 16))((-1L), (safe_add_func_uint8_t_u_u(p_64, p_1351->g_97.w)), 0x462769A4A7B59292L, 0x3749941B8E2A6627L, (-3L), 2L, (((VECTOR(int8_t, 2))(p_1351->g_100.yx)).odd >= ((+((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xEF15L, 0xA029L)).xyyyyxxxxyxxyxyx)).s8) & (safe_add_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(p_66, p_64)), 0x033C1528L)))), ((VECTOR(int64_t, 2))(0x0AFA15260EE2FB04L)), ((VECTOR(int64_t, 4))(0x22353B37858094BFL)), ((VECTOR(int64_t, 2))(1L)), 0x2E7BB48DF9F9BE49L)).s2 ^ l_105), ((VECTOR(uint64_t, 4))(0xC227312B8DC093C8L)), p_1351->g_16.y, 0x4E80792153B372D1L, 18446744073709551615UL)), ((VECTOR(uint64_t, 8))(0xDFF36FBD3DF35B7EL))))).even, ((VECTOR(uint64_t, 4))(0x76C1F1C6DC0DC4BEL))))).zzxzwyww)))))), ((VECTOR(uint64_t, 8))(0x8DAF57E05BCBD5E9L)))).even, ((VECTOR(uint64_t, 8))(0xE6F118E409005044L))))).s6707156252640314, (uint64_t)l_105, (uint64_t)p_1351->g_16.x))).sc, l_92)) , l_92), l_106)) || 1L)))) > p_66) <= 0x145AL))) > p_1351->g_97.w) , FAKE_DIVERGE(p_1351->global_1_offset, get_global_id(1), 10))))), (-8L)))) , p_64) , p_1351->g_89) ^ p_66));
    --l_112;
    return p_65;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1352;
    struct S0* p_1351 = &c_1352;
    struct S0 c_1353 = {
        0x07A98815L, // p_1351->g_4
        4L, // p_1351->g_9
        (void*)0, // p_1351->g_10
        (-9L), // p_1351->g_11
        (VECTOR(int16_t, 2))((-1L), (-10L)), // p_1351->g_16
        0x2CA52C43L, // p_1351->g_75
        (-1L), // p_1351->g_89
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xEEA2DBBA47006215L), 0xEEA2DBBA47006215L), // p_1351->g_97
        (VECTOR(int8_t, 2))(0x6AL, 0L), // p_1351->g_100
        (void*)0, // p_1351->g_108
        {{{0x4D3EBC02L,0x28204F9FL,0x78925515L,0x28204F9FL}},{{0x4D3EBC02L,0x28204F9FL,0x78925515L,0x28204F9FL}},{{0x4D3EBC02L,0x28204F9FL,0x78925515L,0x28204F9FL}}}, // p_1351->g_110
        (void*)0, // p_1351->g_127
        (void*)0, // p_1351->g_129
        &p_1351->g_129, // p_1351->g_128
        (VECTOR(uint8_t, 4))(0x00L, (VECTOR(uint8_t, 2))(0x00L, 0xDCL), 0xDCL), // p_1351->g_151
        {{{255UL,0xF9L,255UL,255UL,0xF9L,255UL}},{{255UL,0xF9L,255UL,255UL,0xF9L,255UL}}}, // p_1351->g_162
        (VECTOR(int32_t, 8))(0x0227578CL, (VECTOR(int32_t, 4))(0x0227578CL, (VECTOR(int32_t, 2))(0x0227578CL, (-2L)), (-2L)), (-2L), 0x0227578CL, (-2L)), // p_1351->g_167
        (VECTOR(int32_t, 2))(0x20F89515L, 1L), // p_1351->g_169
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 5UL), 5UL), 5UL, 18446744073709551615UL, 5UL), // p_1351->g_170
        (VECTOR(uint64_t, 8))(0xBCE0FD3D768784C1L, (VECTOR(uint64_t, 4))(0xBCE0FD3D768784C1L, (VECTOR(uint64_t, 2))(0xBCE0FD3D768784C1L, 0xBB9C9052CF89645EL), 0xBB9C9052CF89645EL), 0xBB9C9052CF89645EL, 0xBCE0FD3D768784C1L, 0xBB9C9052CF89645EL), // p_1351->g_174
        (VECTOR(uint64_t, 8))(0x1AE0F83A2D1B4079L, (VECTOR(uint64_t, 4))(0x1AE0F83A2D1B4079L, (VECTOR(uint64_t, 2))(0x1AE0F83A2D1B4079L, 2UL), 2UL), 2UL, 0x1AE0F83A2D1B4079L, 2UL), // p_1351->g_175
        (VECTOR(uint64_t, 8))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 9UL, 18446744073709551610UL), // p_1351->g_177
        (-1L), // p_1351->g_179
        (VECTOR(uint16_t, 2))(0xD5B9L, 65535UL), // p_1351->g_199
        0x1FL, // p_1351->g_208
        0UL, // p_1351->g_210
        (void*)0, // p_1351->g_219
        (void*)0, // p_1351->g_221
        &p_1351->g_89, // p_1351->g_237
        {&p_1351->g_237,&p_1351->g_237,&p_1351->g_237,&p_1351->g_237,&p_1351->g_237,&p_1351->g_237,&p_1351->g_237,&p_1351->g_237}, // p_1351->g_236
        (VECTOR(int32_t, 2))(0x576AEBE0L, 9L), // p_1351->g_242
        {(void*)0,(void*)0}, // p_1351->g_251
        &p_1351->g_251[1], // p_1351->g_250
        65535UL, // p_1351->g_299
        0x1C1AL, // p_1351->g_335
        {{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335},{&p_1351->g_335,&p_1351->g_335,&p_1351->g_335,&p_1351->g_335}}, // p_1351->g_334
        4L, // p_1351->g_337
        7L, // p_1351->g_364
        (void*)0, // p_1351->g_368
        0x91970DC5L, // p_1351->g_394
        (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 1L), 1L), 1L, (-4L), 1L), // p_1351->g_404
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_1351->g_423
        &p_1351->g_251[1], // p_1351->g_434
        (void*)0, // p_1351->g_449
        (VECTOR(int32_t, 8))(0x38EE73EEL, (VECTOR(int32_t, 4))(0x38EE73EEL, (VECTOR(int32_t, 2))(0x38EE73EEL, 0L), 0L), 0L, 0x38EE73EEL, 0L), // p_1351->g_453
        0x3A8EL, // p_1351->g_476
        0x5A8EL, // p_1351->g_478
        0L, // p_1351->g_505
        (VECTOR(uint8_t, 2))(0x6FL, 0x95L), // p_1351->g_554
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 1UL, 18446744073709551614UL), // p_1351->g_556
        {&p_1351->g_449,&p_1351->g_127,&p_1351->g_449,&p_1351->g_449,&p_1351->g_127,&p_1351->g_449,&p_1351->g_449,&p_1351->g_127}, // p_1351->g_579
        &p_1351->g_579[0], // p_1351->g_578
        &p_1351->g_578, // p_1351->g_577
        {0x6F94FD0046931487L,0x6F94FD0046931487L}, // p_1351->g_585
        0x2BC440FB0D669373L, // p_1351->g_600
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967287UL), 4294967287UL), 4294967287UL, 0UL, 4294967287UL), // p_1351->g_612
        (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x198DL), 0x198DL), // p_1351->g_613
        (VECTOR(uint16_t, 2))(0xF60CL, 4UL), // p_1351->g_614
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967288UL), 4294967288UL), 4294967288UL, 4294967295UL, 4294967288UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967288UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967288UL), 4294967295UL, 4294967288UL, 4294967295UL, 4294967288UL), // p_1351->g_615
        (VECTOR(uint32_t, 4))(0x0CE8AFA5L, (VECTOR(uint32_t, 2))(0x0CE8AFA5L, 8UL), 8UL), // p_1351->g_616
        (VECTOR(int8_t, 2))(0x05L, 0x6EL), // p_1351->g_674
        {{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}},{{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0},{(void*)0,&p_1351->g_236[3],(void*)0}}}, // p_1351->g_685
        (VECTOR(int8_t, 2))((-7L), 0x45L), // p_1351->g_719
        &p_1351->g_110[2][0][3], // p_1351->g_744
        {{{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0}},{{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0}},{{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0}},{{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0}},{{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0},{&p_1351->g_9,(void*)0,(void*)0,&p_1351->g_9,(void*)0,(void*)0}}}, // p_1351->g_748
        (VECTOR(uint16_t, 2))(65535UL, 65529UL), // p_1351->g_760
        (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0xFBEB2069L), 0xFBEB2069L), 0xFBEB2069L, 4294967293UL, 0xFBEB2069L, (VECTOR(uint32_t, 2))(4294967293UL, 0xFBEB2069L), (VECTOR(uint32_t, 2))(4294967293UL, 0xFBEB2069L), 4294967293UL, 0xFBEB2069L, 4294967293UL, 0xFBEB2069L), // p_1351->g_766
        (VECTOR(uint16_t, 8))(0x2248L, (VECTOR(uint16_t, 4))(0x2248L, (VECTOR(uint16_t, 2))(0x2248L, 0UL), 0UL), 0UL, 0x2248L, 0UL), // p_1351->g_768
        (VECTOR(uint16_t, 2))(65532UL, 0xF6BAL), // p_1351->g_769
        {{{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL}},{{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL}},{{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL}},{{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL}},{{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL},{5UL,5UL,65535UL,0xDCE0L,0UL,0xDCE0L,65535UL,5UL,5UL,65535UL}}}, // p_1351->g_782
        0xFB29F2B8L, // p_1351->g_783
        (VECTOR(uint64_t, 2))(1UL, 0x3A8532D4A08D9964L), // p_1351->g_807
        (VECTOR(uint32_t, 2))(0xD4CACE77L, 0x7B61CD2FL), // p_1351->g_810
        (void*)0, // p_1351->g_817
        &p_1351->g_251[1], // p_1351->g_822
        &p_1351->g_251[1], // p_1351->g_825
        1UL, // p_1351->g_850
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_1351->g_893
        1L, // p_1351->g_907
        &p_1351->g_251[1], // p_1351->g_917
        (void*)0, // p_1351->g_930
        &p_1351->g_930, // p_1351->g_929
        (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 1UL), 1UL), 1UL, 2UL, 1UL, (VECTOR(uint32_t, 2))(2UL, 1UL), (VECTOR(uint32_t, 2))(2UL, 1UL), 2UL, 1UL, 2UL, 1UL), // p_1351->g_940
        (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0xB4066E77L), 0xB4066E77L), 0xB4066E77L, 4294967292UL, 0xB4066E77L), // p_1351->g_941
        &p_1351->g_127, // p_1351->g_961
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L), // p_1351->g_970
        (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x46966D201586B144L), 0x46966D201586B144L), 0x46966D201586B144L, (-2L), 0x46966D201586B144L), // p_1351->g_971
        {254UL,254UL,254UL,254UL,254UL,254UL,254UL,254UL,254UL}, // p_1351->g_1032
        (VECTOR(int8_t, 2))(0L, 1L), // p_1351->g_1036
        (VECTOR(uint8_t, 2))(3UL, 4UL), // p_1351->g_1044
        (void*)0, // p_1351->g_1052
        &p_1351->g_251[1], // p_1351->g_1053
        (VECTOR(uint16_t, 2))(0xD968L, 1UL), // p_1351->g_1062
        (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL, (VECTOR(uint16_t, 2))(9UL, 1UL), (VECTOR(uint16_t, 2))(9UL, 1UL), 9UL, 1UL, 9UL, 1UL), // p_1351->g_1064
        (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 2UL), 2UL), 2UL, 65531UL, 2UL), // p_1351->g_1066
        (VECTOR(int16_t, 4))(0x13EDL, (VECTOR(int16_t, 2))(0x13EDL, 0L), 0L), // p_1351->g_1067
        {0x66A28A7F4F74E733L,0x66A28A7F4F74E733L,0x66A28A7F4F74E733L,0x66A28A7F4F74E733L,0x66A28A7F4F74E733L}, // p_1351->g_1098
        (VECTOR(uint32_t, 2))(7UL, 4294967290UL), // p_1351->g_1119
        (VECTOR(uint8_t, 2))(0x86L, 0xF3L), // p_1351->g_1132
        {{{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL}},{{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL}},{{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL}},{{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL},{4294967295UL,1UL,4294967287UL}}}, // p_1351->g_1151
        {{{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]}},{{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]}},{{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]}},{{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]}},{{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]},{&p_1351->g_251[1],(void*)0,&p_1351->g_251[1],(void*)0,&p_1351->g_251[1]}}}, // p_1351->g_1153
        (VECTOR(int16_t, 2))(1L, 1L), // p_1351->g_1158
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_1351->g_1182
        (VECTOR(int32_t, 2))(0L, 1L), // p_1351->g_1183
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2AL), 0x2AL), 0x2AL, 1L, 0x2AL, (VECTOR(int8_t, 2))(1L, 0x2AL), (VECTOR(int8_t, 2))(1L, 0x2AL), 1L, 0x2AL, 1L, 0x2AL), // p_1351->g_1204
        &p_1351->g_476, // p_1351->g_1225
        {{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}},{{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0},{&p_1351->g_179,&p_1351->g_1098[3],(void*)0}}}, // p_1351->g_1232
        {&p_1351->g_1232[2][0][0],&p_1351->g_1232[2][0][0],&p_1351->g_1232[2][0][0],&p_1351->g_1232[2][0][0],&p_1351->g_1232[2][0][0],&p_1351->g_1232[2][0][0]}, // p_1351->g_1231
        (VECTOR(uint32_t, 16))(0x3D67B54FL, (VECTOR(uint32_t, 4))(0x3D67B54FL, (VECTOR(uint32_t, 2))(0x3D67B54FL, 0UL), 0UL), 0UL, 0x3D67B54FL, 0UL, (VECTOR(uint32_t, 2))(0x3D67B54FL, 0UL), (VECTOR(uint32_t, 2))(0x3D67B54FL, 0UL), 0x3D67B54FL, 0UL, 0x3D67B54FL, 0UL), // p_1351->g_1252
        (VECTOR(uint32_t, 4))(0x8BA12E88L, (VECTOR(uint32_t, 2))(0x8BA12E88L, 0xDEB4690BL), 0xDEB4690BL), // p_1351->g_1253
        (VECTOR(int64_t, 8))(0x49EF4BD7C2954DB4L, (VECTOR(int64_t, 4))(0x49EF4BD7C2954DB4L, (VECTOR(int64_t, 2))(0x49EF4BD7C2954DB4L, 0x4BB6CCE8F6EC6A22L), 0x4BB6CCE8F6EC6A22L), 0x4BB6CCE8F6EC6A22L, 0x49EF4BD7C2954DB4L, 0x4BB6CCE8F6EC6A22L), // p_1351->g_1273
        (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-4L)), (-4L)), (-4L), (-5L), (-4L), (VECTOR(int32_t, 2))((-5L), (-4L)), (VECTOR(int32_t, 2))((-5L), (-4L)), (-5L), (-4L), (-5L), (-4L)), // p_1351->g_1311
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x77393F28L), 0x77393F28L), 0x77393F28L, (-1L), 0x77393F28L, (VECTOR(int32_t, 2))((-1L), 0x77393F28L), (VECTOR(int32_t, 2))((-1L), 0x77393F28L), (-1L), 0x77393F28L, (-1L), 0x77393F28L), // p_1351->g_1312
        sequence_input[get_global_id(0)], // p_1351->global_0_offset
        sequence_input[get_global_id(1)], // p_1351->global_1_offset
        sequence_input[get_global_id(2)], // p_1351->global_2_offset
        sequence_input[get_local_id(0)], // p_1351->local_0_offset
        sequence_input[get_local_id(1)], // p_1351->local_1_offset
        sequence_input[get_local_id(2)], // p_1351->local_2_offset
        sequence_input[get_group_id(0)], // p_1351->group_0_offset
        sequence_input[get_group_id(1)], // p_1351->group_1_offset
        sequence_input[get_group_id(2)], // p_1351->group_2_offset
    };
    c_1352 = c_1353;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1351);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1351->g_4, "p_1351->g_4", print_hash_value);
    transparent_crc(p_1351->g_9, "p_1351->g_9", print_hash_value);
    transparent_crc(p_1351->g_11, "p_1351->g_11", print_hash_value);
    transparent_crc(p_1351->g_16.x, "p_1351->g_16.x", print_hash_value);
    transparent_crc(p_1351->g_16.y, "p_1351->g_16.y", print_hash_value);
    transparent_crc(p_1351->g_75, "p_1351->g_75", print_hash_value);
    transparent_crc(p_1351->g_89, "p_1351->g_89", print_hash_value);
    transparent_crc(p_1351->g_97.x, "p_1351->g_97.x", print_hash_value);
    transparent_crc(p_1351->g_97.y, "p_1351->g_97.y", print_hash_value);
    transparent_crc(p_1351->g_97.z, "p_1351->g_97.z", print_hash_value);
    transparent_crc(p_1351->g_97.w, "p_1351->g_97.w", print_hash_value);
    transparent_crc(p_1351->g_100.x, "p_1351->g_100.x", print_hash_value);
    transparent_crc(p_1351->g_100.y, "p_1351->g_100.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1351->g_110[i][j][k], "p_1351->g_110[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1351->g_151.x, "p_1351->g_151.x", print_hash_value);
    transparent_crc(p_1351->g_151.y, "p_1351->g_151.y", print_hash_value);
    transparent_crc(p_1351->g_151.z, "p_1351->g_151.z", print_hash_value);
    transparent_crc(p_1351->g_151.w, "p_1351->g_151.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1351->g_162[i][j][k], "p_1351->g_162[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1351->g_167.s0, "p_1351->g_167.s0", print_hash_value);
    transparent_crc(p_1351->g_167.s1, "p_1351->g_167.s1", print_hash_value);
    transparent_crc(p_1351->g_167.s2, "p_1351->g_167.s2", print_hash_value);
    transparent_crc(p_1351->g_167.s3, "p_1351->g_167.s3", print_hash_value);
    transparent_crc(p_1351->g_167.s4, "p_1351->g_167.s4", print_hash_value);
    transparent_crc(p_1351->g_167.s5, "p_1351->g_167.s5", print_hash_value);
    transparent_crc(p_1351->g_167.s6, "p_1351->g_167.s6", print_hash_value);
    transparent_crc(p_1351->g_167.s7, "p_1351->g_167.s7", print_hash_value);
    transparent_crc(p_1351->g_169.x, "p_1351->g_169.x", print_hash_value);
    transparent_crc(p_1351->g_169.y, "p_1351->g_169.y", print_hash_value);
    transparent_crc(p_1351->g_170.s0, "p_1351->g_170.s0", print_hash_value);
    transparent_crc(p_1351->g_170.s1, "p_1351->g_170.s1", print_hash_value);
    transparent_crc(p_1351->g_170.s2, "p_1351->g_170.s2", print_hash_value);
    transparent_crc(p_1351->g_170.s3, "p_1351->g_170.s3", print_hash_value);
    transparent_crc(p_1351->g_170.s4, "p_1351->g_170.s4", print_hash_value);
    transparent_crc(p_1351->g_170.s5, "p_1351->g_170.s5", print_hash_value);
    transparent_crc(p_1351->g_170.s6, "p_1351->g_170.s6", print_hash_value);
    transparent_crc(p_1351->g_170.s7, "p_1351->g_170.s7", print_hash_value);
    transparent_crc(p_1351->g_174.s0, "p_1351->g_174.s0", print_hash_value);
    transparent_crc(p_1351->g_174.s1, "p_1351->g_174.s1", print_hash_value);
    transparent_crc(p_1351->g_174.s2, "p_1351->g_174.s2", print_hash_value);
    transparent_crc(p_1351->g_174.s3, "p_1351->g_174.s3", print_hash_value);
    transparent_crc(p_1351->g_174.s4, "p_1351->g_174.s4", print_hash_value);
    transparent_crc(p_1351->g_174.s5, "p_1351->g_174.s5", print_hash_value);
    transparent_crc(p_1351->g_174.s6, "p_1351->g_174.s6", print_hash_value);
    transparent_crc(p_1351->g_174.s7, "p_1351->g_174.s7", print_hash_value);
    transparent_crc(p_1351->g_175.s0, "p_1351->g_175.s0", print_hash_value);
    transparent_crc(p_1351->g_175.s1, "p_1351->g_175.s1", print_hash_value);
    transparent_crc(p_1351->g_175.s2, "p_1351->g_175.s2", print_hash_value);
    transparent_crc(p_1351->g_175.s3, "p_1351->g_175.s3", print_hash_value);
    transparent_crc(p_1351->g_175.s4, "p_1351->g_175.s4", print_hash_value);
    transparent_crc(p_1351->g_175.s5, "p_1351->g_175.s5", print_hash_value);
    transparent_crc(p_1351->g_175.s6, "p_1351->g_175.s6", print_hash_value);
    transparent_crc(p_1351->g_175.s7, "p_1351->g_175.s7", print_hash_value);
    transparent_crc(p_1351->g_177.s0, "p_1351->g_177.s0", print_hash_value);
    transparent_crc(p_1351->g_177.s1, "p_1351->g_177.s1", print_hash_value);
    transparent_crc(p_1351->g_177.s2, "p_1351->g_177.s2", print_hash_value);
    transparent_crc(p_1351->g_177.s3, "p_1351->g_177.s3", print_hash_value);
    transparent_crc(p_1351->g_177.s4, "p_1351->g_177.s4", print_hash_value);
    transparent_crc(p_1351->g_177.s5, "p_1351->g_177.s5", print_hash_value);
    transparent_crc(p_1351->g_177.s6, "p_1351->g_177.s6", print_hash_value);
    transparent_crc(p_1351->g_177.s7, "p_1351->g_177.s7", print_hash_value);
    transparent_crc(p_1351->g_179, "p_1351->g_179", print_hash_value);
    transparent_crc(p_1351->g_199.x, "p_1351->g_199.x", print_hash_value);
    transparent_crc(p_1351->g_199.y, "p_1351->g_199.y", print_hash_value);
    transparent_crc(p_1351->g_208, "p_1351->g_208", print_hash_value);
    transparent_crc(p_1351->g_210, "p_1351->g_210", print_hash_value);
    transparent_crc(p_1351->g_242.x, "p_1351->g_242.x", print_hash_value);
    transparent_crc(p_1351->g_242.y, "p_1351->g_242.y", print_hash_value);
    transparent_crc(p_1351->g_299, "p_1351->g_299", print_hash_value);
    transparent_crc(p_1351->g_335, "p_1351->g_335", print_hash_value);
    transparent_crc(p_1351->g_337, "p_1351->g_337", print_hash_value);
    transparent_crc(p_1351->g_364, "p_1351->g_364", print_hash_value);
    transparent_crc(p_1351->g_394, "p_1351->g_394", print_hash_value);
    transparent_crc(p_1351->g_404.s0, "p_1351->g_404.s0", print_hash_value);
    transparent_crc(p_1351->g_404.s1, "p_1351->g_404.s1", print_hash_value);
    transparent_crc(p_1351->g_404.s2, "p_1351->g_404.s2", print_hash_value);
    transparent_crc(p_1351->g_404.s3, "p_1351->g_404.s3", print_hash_value);
    transparent_crc(p_1351->g_404.s4, "p_1351->g_404.s4", print_hash_value);
    transparent_crc(p_1351->g_404.s5, "p_1351->g_404.s5", print_hash_value);
    transparent_crc(p_1351->g_404.s6, "p_1351->g_404.s6", print_hash_value);
    transparent_crc(p_1351->g_404.s7, "p_1351->g_404.s7", print_hash_value);
    transparent_crc(p_1351->g_423.s0, "p_1351->g_423.s0", print_hash_value);
    transparent_crc(p_1351->g_423.s1, "p_1351->g_423.s1", print_hash_value);
    transparent_crc(p_1351->g_423.s2, "p_1351->g_423.s2", print_hash_value);
    transparent_crc(p_1351->g_423.s3, "p_1351->g_423.s3", print_hash_value);
    transparent_crc(p_1351->g_423.s4, "p_1351->g_423.s4", print_hash_value);
    transparent_crc(p_1351->g_423.s5, "p_1351->g_423.s5", print_hash_value);
    transparent_crc(p_1351->g_423.s6, "p_1351->g_423.s6", print_hash_value);
    transparent_crc(p_1351->g_423.s7, "p_1351->g_423.s7", print_hash_value);
    transparent_crc(p_1351->g_423.s8, "p_1351->g_423.s8", print_hash_value);
    transparent_crc(p_1351->g_423.s9, "p_1351->g_423.s9", print_hash_value);
    transparent_crc(p_1351->g_423.sa, "p_1351->g_423.sa", print_hash_value);
    transparent_crc(p_1351->g_423.sb, "p_1351->g_423.sb", print_hash_value);
    transparent_crc(p_1351->g_423.sc, "p_1351->g_423.sc", print_hash_value);
    transparent_crc(p_1351->g_423.sd, "p_1351->g_423.sd", print_hash_value);
    transparent_crc(p_1351->g_423.se, "p_1351->g_423.se", print_hash_value);
    transparent_crc(p_1351->g_423.sf, "p_1351->g_423.sf", print_hash_value);
    transparent_crc(p_1351->g_453.s0, "p_1351->g_453.s0", print_hash_value);
    transparent_crc(p_1351->g_453.s1, "p_1351->g_453.s1", print_hash_value);
    transparent_crc(p_1351->g_453.s2, "p_1351->g_453.s2", print_hash_value);
    transparent_crc(p_1351->g_453.s3, "p_1351->g_453.s3", print_hash_value);
    transparent_crc(p_1351->g_453.s4, "p_1351->g_453.s4", print_hash_value);
    transparent_crc(p_1351->g_453.s5, "p_1351->g_453.s5", print_hash_value);
    transparent_crc(p_1351->g_453.s6, "p_1351->g_453.s6", print_hash_value);
    transparent_crc(p_1351->g_453.s7, "p_1351->g_453.s7", print_hash_value);
    transparent_crc(p_1351->g_476, "p_1351->g_476", print_hash_value);
    transparent_crc(p_1351->g_478, "p_1351->g_478", print_hash_value);
    transparent_crc(p_1351->g_505, "p_1351->g_505", print_hash_value);
    transparent_crc(p_1351->g_554.x, "p_1351->g_554.x", print_hash_value);
    transparent_crc(p_1351->g_554.y, "p_1351->g_554.y", print_hash_value);
    transparent_crc(p_1351->g_556.s0, "p_1351->g_556.s0", print_hash_value);
    transparent_crc(p_1351->g_556.s1, "p_1351->g_556.s1", print_hash_value);
    transparent_crc(p_1351->g_556.s2, "p_1351->g_556.s2", print_hash_value);
    transparent_crc(p_1351->g_556.s3, "p_1351->g_556.s3", print_hash_value);
    transparent_crc(p_1351->g_556.s4, "p_1351->g_556.s4", print_hash_value);
    transparent_crc(p_1351->g_556.s5, "p_1351->g_556.s5", print_hash_value);
    transparent_crc(p_1351->g_556.s6, "p_1351->g_556.s6", print_hash_value);
    transparent_crc(p_1351->g_556.s7, "p_1351->g_556.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1351->g_585[i], "p_1351->g_585[i]", print_hash_value);

    }
    transparent_crc(p_1351->g_600, "p_1351->g_600", print_hash_value);
    transparent_crc(p_1351->g_612.s0, "p_1351->g_612.s0", print_hash_value);
    transparent_crc(p_1351->g_612.s1, "p_1351->g_612.s1", print_hash_value);
    transparent_crc(p_1351->g_612.s2, "p_1351->g_612.s2", print_hash_value);
    transparent_crc(p_1351->g_612.s3, "p_1351->g_612.s3", print_hash_value);
    transparent_crc(p_1351->g_612.s4, "p_1351->g_612.s4", print_hash_value);
    transparent_crc(p_1351->g_612.s5, "p_1351->g_612.s5", print_hash_value);
    transparent_crc(p_1351->g_612.s6, "p_1351->g_612.s6", print_hash_value);
    transparent_crc(p_1351->g_612.s7, "p_1351->g_612.s7", print_hash_value);
    transparent_crc(p_1351->g_613.x, "p_1351->g_613.x", print_hash_value);
    transparent_crc(p_1351->g_613.y, "p_1351->g_613.y", print_hash_value);
    transparent_crc(p_1351->g_613.z, "p_1351->g_613.z", print_hash_value);
    transparent_crc(p_1351->g_613.w, "p_1351->g_613.w", print_hash_value);
    transparent_crc(p_1351->g_614.x, "p_1351->g_614.x", print_hash_value);
    transparent_crc(p_1351->g_614.y, "p_1351->g_614.y", print_hash_value);
    transparent_crc(p_1351->g_615.s0, "p_1351->g_615.s0", print_hash_value);
    transparent_crc(p_1351->g_615.s1, "p_1351->g_615.s1", print_hash_value);
    transparent_crc(p_1351->g_615.s2, "p_1351->g_615.s2", print_hash_value);
    transparent_crc(p_1351->g_615.s3, "p_1351->g_615.s3", print_hash_value);
    transparent_crc(p_1351->g_615.s4, "p_1351->g_615.s4", print_hash_value);
    transparent_crc(p_1351->g_615.s5, "p_1351->g_615.s5", print_hash_value);
    transparent_crc(p_1351->g_615.s6, "p_1351->g_615.s6", print_hash_value);
    transparent_crc(p_1351->g_615.s7, "p_1351->g_615.s7", print_hash_value);
    transparent_crc(p_1351->g_615.s8, "p_1351->g_615.s8", print_hash_value);
    transparent_crc(p_1351->g_615.s9, "p_1351->g_615.s9", print_hash_value);
    transparent_crc(p_1351->g_615.sa, "p_1351->g_615.sa", print_hash_value);
    transparent_crc(p_1351->g_615.sb, "p_1351->g_615.sb", print_hash_value);
    transparent_crc(p_1351->g_615.sc, "p_1351->g_615.sc", print_hash_value);
    transparent_crc(p_1351->g_615.sd, "p_1351->g_615.sd", print_hash_value);
    transparent_crc(p_1351->g_615.se, "p_1351->g_615.se", print_hash_value);
    transparent_crc(p_1351->g_615.sf, "p_1351->g_615.sf", print_hash_value);
    transparent_crc(p_1351->g_616.x, "p_1351->g_616.x", print_hash_value);
    transparent_crc(p_1351->g_616.y, "p_1351->g_616.y", print_hash_value);
    transparent_crc(p_1351->g_616.z, "p_1351->g_616.z", print_hash_value);
    transparent_crc(p_1351->g_616.w, "p_1351->g_616.w", print_hash_value);
    transparent_crc(p_1351->g_674.x, "p_1351->g_674.x", print_hash_value);
    transparent_crc(p_1351->g_674.y, "p_1351->g_674.y", print_hash_value);
    transparent_crc(p_1351->g_719.x, "p_1351->g_719.x", print_hash_value);
    transparent_crc(p_1351->g_719.y, "p_1351->g_719.y", print_hash_value);
    transparent_crc(p_1351->g_760.x, "p_1351->g_760.x", print_hash_value);
    transparent_crc(p_1351->g_760.y, "p_1351->g_760.y", print_hash_value);
    transparent_crc(p_1351->g_766.s0, "p_1351->g_766.s0", print_hash_value);
    transparent_crc(p_1351->g_766.s1, "p_1351->g_766.s1", print_hash_value);
    transparent_crc(p_1351->g_766.s2, "p_1351->g_766.s2", print_hash_value);
    transparent_crc(p_1351->g_766.s3, "p_1351->g_766.s3", print_hash_value);
    transparent_crc(p_1351->g_766.s4, "p_1351->g_766.s4", print_hash_value);
    transparent_crc(p_1351->g_766.s5, "p_1351->g_766.s5", print_hash_value);
    transparent_crc(p_1351->g_766.s6, "p_1351->g_766.s6", print_hash_value);
    transparent_crc(p_1351->g_766.s7, "p_1351->g_766.s7", print_hash_value);
    transparent_crc(p_1351->g_766.s8, "p_1351->g_766.s8", print_hash_value);
    transparent_crc(p_1351->g_766.s9, "p_1351->g_766.s9", print_hash_value);
    transparent_crc(p_1351->g_766.sa, "p_1351->g_766.sa", print_hash_value);
    transparent_crc(p_1351->g_766.sb, "p_1351->g_766.sb", print_hash_value);
    transparent_crc(p_1351->g_766.sc, "p_1351->g_766.sc", print_hash_value);
    transparent_crc(p_1351->g_766.sd, "p_1351->g_766.sd", print_hash_value);
    transparent_crc(p_1351->g_766.se, "p_1351->g_766.se", print_hash_value);
    transparent_crc(p_1351->g_766.sf, "p_1351->g_766.sf", print_hash_value);
    transparent_crc(p_1351->g_768.s0, "p_1351->g_768.s0", print_hash_value);
    transparent_crc(p_1351->g_768.s1, "p_1351->g_768.s1", print_hash_value);
    transparent_crc(p_1351->g_768.s2, "p_1351->g_768.s2", print_hash_value);
    transparent_crc(p_1351->g_768.s3, "p_1351->g_768.s3", print_hash_value);
    transparent_crc(p_1351->g_768.s4, "p_1351->g_768.s4", print_hash_value);
    transparent_crc(p_1351->g_768.s5, "p_1351->g_768.s5", print_hash_value);
    transparent_crc(p_1351->g_768.s6, "p_1351->g_768.s6", print_hash_value);
    transparent_crc(p_1351->g_768.s7, "p_1351->g_768.s7", print_hash_value);
    transparent_crc(p_1351->g_769.x, "p_1351->g_769.x", print_hash_value);
    transparent_crc(p_1351->g_769.y, "p_1351->g_769.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1351->g_782[i][j][k], "p_1351->g_782[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1351->g_783, "p_1351->g_783", print_hash_value);
    transparent_crc(p_1351->g_807.x, "p_1351->g_807.x", print_hash_value);
    transparent_crc(p_1351->g_807.y, "p_1351->g_807.y", print_hash_value);
    transparent_crc(p_1351->g_810.x, "p_1351->g_810.x", print_hash_value);
    transparent_crc(p_1351->g_810.y, "p_1351->g_810.y", print_hash_value);
    transparent_crc(p_1351->g_850, "p_1351->g_850", print_hash_value);
    transparent_crc(p_1351->g_893.s0, "p_1351->g_893.s0", print_hash_value);
    transparent_crc(p_1351->g_893.s1, "p_1351->g_893.s1", print_hash_value);
    transparent_crc(p_1351->g_893.s2, "p_1351->g_893.s2", print_hash_value);
    transparent_crc(p_1351->g_893.s3, "p_1351->g_893.s3", print_hash_value);
    transparent_crc(p_1351->g_893.s4, "p_1351->g_893.s4", print_hash_value);
    transparent_crc(p_1351->g_893.s5, "p_1351->g_893.s5", print_hash_value);
    transparent_crc(p_1351->g_893.s6, "p_1351->g_893.s6", print_hash_value);
    transparent_crc(p_1351->g_893.s7, "p_1351->g_893.s7", print_hash_value);
    transparent_crc(p_1351->g_893.s8, "p_1351->g_893.s8", print_hash_value);
    transparent_crc(p_1351->g_893.s9, "p_1351->g_893.s9", print_hash_value);
    transparent_crc(p_1351->g_893.sa, "p_1351->g_893.sa", print_hash_value);
    transparent_crc(p_1351->g_893.sb, "p_1351->g_893.sb", print_hash_value);
    transparent_crc(p_1351->g_893.sc, "p_1351->g_893.sc", print_hash_value);
    transparent_crc(p_1351->g_893.sd, "p_1351->g_893.sd", print_hash_value);
    transparent_crc(p_1351->g_893.se, "p_1351->g_893.se", print_hash_value);
    transparent_crc(p_1351->g_893.sf, "p_1351->g_893.sf", print_hash_value);
    transparent_crc(p_1351->g_907, "p_1351->g_907", print_hash_value);
    transparent_crc(p_1351->g_940.s0, "p_1351->g_940.s0", print_hash_value);
    transparent_crc(p_1351->g_940.s1, "p_1351->g_940.s1", print_hash_value);
    transparent_crc(p_1351->g_940.s2, "p_1351->g_940.s2", print_hash_value);
    transparent_crc(p_1351->g_940.s3, "p_1351->g_940.s3", print_hash_value);
    transparent_crc(p_1351->g_940.s4, "p_1351->g_940.s4", print_hash_value);
    transparent_crc(p_1351->g_940.s5, "p_1351->g_940.s5", print_hash_value);
    transparent_crc(p_1351->g_940.s6, "p_1351->g_940.s6", print_hash_value);
    transparent_crc(p_1351->g_940.s7, "p_1351->g_940.s7", print_hash_value);
    transparent_crc(p_1351->g_940.s8, "p_1351->g_940.s8", print_hash_value);
    transparent_crc(p_1351->g_940.s9, "p_1351->g_940.s9", print_hash_value);
    transparent_crc(p_1351->g_940.sa, "p_1351->g_940.sa", print_hash_value);
    transparent_crc(p_1351->g_940.sb, "p_1351->g_940.sb", print_hash_value);
    transparent_crc(p_1351->g_940.sc, "p_1351->g_940.sc", print_hash_value);
    transparent_crc(p_1351->g_940.sd, "p_1351->g_940.sd", print_hash_value);
    transparent_crc(p_1351->g_940.se, "p_1351->g_940.se", print_hash_value);
    transparent_crc(p_1351->g_940.sf, "p_1351->g_940.sf", print_hash_value);
    transparent_crc(p_1351->g_941.s0, "p_1351->g_941.s0", print_hash_value);
    transparent_crc(p_1351->g_941.s1, "p_1351->g_941.s1", print_hash_value);
    transparent_crc(p_1351->g_941.s2, "p_1351->g_941.s2", print_hash_value);
    transparent_crc(p_1351->g_941.s3, "p_1351->g_941.s3", print_hash_value);
    transparent_crc(p_1351->g_941.s4, "p_1351->g_941.s4", print_hash_value);
    transparent_crc(p_1351->g_941.s5, "p_1351->g_941.s5", print_hash_value);
    transparent_crc(p_1351->g_941.s6, "p_1351->g_941.s6", print_hash_value);
    transparent_crc(p_1351->g_941.s7, "p_1351->g_941.s7", print_hash_value);
    transparent_crc(p_1351->g_970.s0, "p_1351->g_970.s0", print_hash_value);
    transparent_crc(p_1351->g_970.s1, "p_1351->g_970.s1", print_hash_value);
    transparent_crc(p_1351->g_970.s2, "p_1351->g_970.s2", print_hash_value);
    transparent_crc(p_1351->g_970.s3, "p_1351->g_970.s3", print_hash_value);
    transparent_crc(p_1351->g_970.s4, "p_1351->g_970.s4", print_hash_value);
    transparent_crc(p_1351->g_970.s5, "p_1351->g_970.s5", print_hash_value);
    transparent_crc(p_1351->g_970.s6, "p_1351->g_970.s6", print_hash_value);
    transparent_crc(p_1351->g_970.s7, "p_1351->g_970.s7", print_hash_value);
    transparent_crc(p_1351->g_971.s0, "p_1351->g_971.s0", print_hash_value);
    transparent_crc(p_1351->g_971.s1, "p_1351->g_971.s1", print_hash_value);
    transparent_crc(p_1351->g_971.s2, "p_1351->g_971.s2", print_hash_value);
    transparent_crc(p_1351->g_971.s3, "p_1351->g_971.s3", print_hash_value);
    transparent_crc(p_1351->g_971.s4, "p_1351->g_971.s4", print_hash_value);
    transparent_crc(p_1351->g_971.s5, "p_1351->g_971.s5", print_hash_value);
    transparent_crc(p_1351->g_971.s6, "p_1351->g_971.s6", print_hash_value);
    transparent_crc(p_1351->g_971.s7, "p_1351->g_971.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1351->g_1032[i], "p_1351->g_1032[i]", print_hash_value);

    }
    transparent_crc(p_1351->g_1036.x, "p_1351->g_1036.x", print_hash_value);
    transparent_crc(p_1351->g_1036.y, "p_1351->g_1036.y", print_hash_value);
    transparent_crc(p_1351->g_1044.x, "p_1351->g_1044.x", print_hash_value);
    transparent_crc(p_1351->g_1044.y, "p_1351->g_1044.y", print_hash_value);
    transparent_crc(p_1351->g_1062.x, "p_1351->g_1062.x", print_hash_value);
    transparent_crc(p_1351->g_1062.y, "p_1351->g_1062.y", print_hash_value);
    transparent_crc(p_1351->g_1064.s0, "p_1351->g_1064.s0", print_hash_value);
    transparent_crc(p_1351->g_1064.s1, "p_1351->g_1064.s1", print_hash_value);
    transparent_crc(p_1351->g_1064.s2, "p_1351->g_1064.s2", print_hash_value);
    transparent_crc(p_1351->g_1064.s3, "p_1351->g_1064.s3", print_hash_value);
    transparent_crc(p_1351->g_1064.s4, "p_1351->g_1064.s4", print_hash_value);
    transparent_crc(p_1351->g_1064.s5, "p_1351->g_1064.s5", print_hash_value);
    transparent_crc(p_1351->g_1064.s6, "p_1351->g_1064.s6", print_hash_value);
    transparent_crc(p_1351->g_1064.s7, "p_1351->g_1064.s7", print_hash_value);
    transparent_crc(p_1351->g_1064.s8, "p_1351->g_1064.s8", print_hash_value);
    transparent_crc(p_1351->g_1064.s9, "p_1351->g_1064.s9", print_hash_value);
    transparent_crc(p_1351->g_1064.sa, "p_1351->g_1064.sa", print_hash_value);
    transparent_crc(p_1351->g_1064.sb, "p_1351->g_1064.sb", print_hash_value);
    transparent_crc(p_1351->g_1064.sc, "p_1351->g_1064.sc", print_hash_value);
    transparent_crc(p_1351->g_1064.sd, "p_1351->g_1064.sd", print_hash_value);
    transparent_crc(p_1351->g_1064.se, "p_1351->g_1064.se", print_hash_value);
    transparent_crc(p_1351->g_1064.sf, "p_1351->g_1064.sf", print_hash_value);
    transparent_crc(p_1351->g_1066.s0, "p_1351->g_1066.s0", print_hash_value);
    transparent_crc(p_1351->g_1066.s1, "p_1351->g_1066.s1", print_hash_value);
    transparent_crc(p_1351->g_1066.s2, "p_1351->g_1066.s2", print_hash_value);
    transparent_crc(p_1351->g_1066.s3, "p_1351->g_1066.s3", print_hash_value);
    transparent_crc(p_1351->g_1066.s4, "p_1351->g_1066.s4", print_hash_value);
    transparent_crc(p_1351->g_1066.s5, "p_1351->g_1066.s5", print_hash_value);
    transparent_crc(p_1351->g_1066.s6, "p_1351->g_1066.s6", print_hash_value);
    transparent_crc(p_1351->g_1066.s7, "p_1351->g_1066.s7", print_hash_value);
    transparent_crc(p_1351->g_1067.x, "p_1351->g_1067.x", print_hash_value);
    transparent_crc(p_1351->g_1067.y, "p_1351->g_1067.y", print_hash_value);
    transparent_crc(p_1351->g_1067.z, "p_1351->g_1067.z", print_hash_value);
    transparent_crc(p_1351->g_1067.w, "p_1351->g_1067.w", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1351->g_1098[i], "p_1351->g_1098[i]", print_hash_value);

    }
    transparent_crc(p_1351->g_1119.x, "p_1351->g_1119.x", print_hash_value);
    transparent_crc(p_1351->g_1119.y, "p_1351->g_1119.y", print_hash_value);
    transparent_crc(p_1351->g_1132.x, "p_1351->g_1132.x", print_hash_value);
    transparent_crc(p_1351->g_1132.y, "p_1351->g_1132.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1351->g_1151[i][j][k], "p_1351->g_1151[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1351->g_1158.x, "p_1351->g_1158.x", print_hash_value);
    transparent_crc(p_1351->g_1158.y, "p_1351->g_1158.y", print_hash_value);
    transparent_crc(p_1351->g_1182.s0, "p_1351->g_1182.s0", print_hash_value);
    transparent_crc(p_1351->g_1182.s1, "p_1351->g_1182.s1", print_hash_value);
    transparent_crc(p_1351->g_1182.s2, "p_1351->g_1182.s2", print_hash_value);
    transparent_crc(p_1351->g_1182.s3, "p_1351->g_1182.s3", print_hash_value);
    transparent_crc(p_1351->g_1182.s4, "p_1351->g_1182.s4", print_hash_value);
    transparent_crc(p_1351->g_1182.s5, "p_1351->g_1182.s5", print_hash_value);
    transparent_crc(p_1351->g_1182.s6, "p_1351->g_1182.s6", print_hash_value);
    transparent_crc(p_1351->g_1182.s7, "p_1351->g_1182.s7", print_hash_value);
    transparent_crc(p_1351->g_1183.x, "p_1351->g_1183.x", print_hash_value);
    transparent_crc(p_1351->g_1183.y, "p_1351->g_1183.y", print_hash_value);
    transparent_crc(p_1351->g_1204.s0, "p_1351->g_1204.s0", print_hash_value);
    transparent_crc(p_1351->g_1204.s1, "p_1351->g_1204.s1", print_hash_value);
    transparent_crc(p_1351->g_1204.s2, "p_1351->g_1204.s2", print_hash_value);
    transparent_crc(p_1351->g_1204.s3, "p_1351->g_1204.s3", print_hash_value);
    transparent_crc(p_1351->g_1204.s4, "p_1351->g_1204.s4", print_hash_value);
    transparent_crc(p_1351->g_1204.s5, "p_1351->g_1204.s5", print_hash_value);
    transparent_crc(p_1351->g_1204.s6, "p_1351->g_1204.s6", print_hash_value);
    transparent_crc(p_1351->g_1204.s7, "p_1351->g_1204.s7", print_hash_value);
    transparent_crc(p_1351->g_1204.s8, "p_1351->g_1204.s8", print_hash_value);
    transparent_crc(p_1351->g_1204.s9, "p_1351->g_1204.s9", print_hash_value);
    transparent_crc(p_1351->g_1204.sa, "p_1351->g_1204.sa", print_hash_value);
    transparent_crc(p_1351->g_1204.sb, "p_1351->g_1204.sb", print_hash_value);
    transparent_crc(p_1351->g_1204.sc, "p_1351->g_1204.sc", print_hash_value);
    transparent_crc(p_1351->g_1204.sd, "p_1351->g_1204.sd", print_hash_value);
    transparent_crc(p_1351->g_1204.se, "p_1351->g_1204.se", print_hash_value);
    transparent_crc(p_1351->g_1204.sf, "p_1351->g_1204.sf", print_hash_value);
    transparent_crc(p_1351->g_1252.s0, "p_1351->g_1252.s0", print_hash_value);
    transparent_crc(p_1351->g_1252.s1, "p_1351->g_1252.s1", print_hash_value);
    transparent_crc(p_1351->g_1252.s2, "p_1351->g_1252.s2", print_hash_value);
    transparent_crc(p_1351->g_1252.s3, "p_1351->g_1252.s3", print_hash_value);
    transparent_crc(p_1351->g_1252.s4, "p_1351->g_1252.s4", print_hash_value);
    transparent_crc(p_1351->g_1252.s5, "p_1351->g_1252.s5", print_hash_value);
    transparent_crc(p_1351->g_1252.s6, "p_1351->g_1252.s6", print_hash_value);
    transparent_crc(p_1351->g_1252.s7, "p_1351->g_1252.s7", print_hash_value);
    transparent_crc(p_1351->g_1252.s8, "p_1351->g_1252.s8", print_hash_value);
    transparent_crc(p_1351->g_1252.s9, "p_1351->g_1252.s9", print_hash_value);
    transparent_crc(p_1351->g_1252.sa, "p_1351->g_1252.sa", print_hash_value);
    transparent_crc(p_1351->g_1252.sb, "p_1351->g_1252.sb", print_hash_value);
    transparent_crc(p_1351->g_1252.sc, "p_1351->g_1252.sc", print_hash_value);
    transparent_crc(p_1351->g_1252.sd, "p_1351->g_1252.sd", print_hash_value);
    transparent_crc(p_1351->g_1252.se, "p_1351->g_1252.se", print_hash_value);
    transparent_crc(p_1351->g_1252.sf, "p_1351->g_1252.sf", print_hash_value);
    transparent_crc(p_1351->g_1253.x, "p_1351->g_1253.x", print_hash_value);
    transparent_crc(p_1351->g_1253.y, "p_1351->g_1253.y", print_hash_value);
    transparent_crc(p_1351->g_1253.z, "p_1351->g_1253.z", print_hash_value);
    transparent_crc(p_1351->g_1253.w, "p_1351->g_1253.w", print_hash_value);
    transparent_crc(p_1351->g_1273.s0, "p_1351->g_1273.s0", print_hash_value);
    transparent_crc(p_1351->g_1273.s1, "p_1351->g_1273.s1", print_hash_value);
    transparent_crc(p_1351->g_1273.s2, "p_1351->g_1273.s2", print_hash_value);
    transparent_crc(p_1351->g_1273.s3, "p_1351->g_1273.s3", print_hash_value);
    transparent_crc(p_1351->g_1273.s4, "p_1351->g_1273.s4", print_hash_value);
    transparent_crc(p_1351->g_1273.s5, "p_1351->g_1273.s5", print_hash_value);
    transparent_crc(p_1351->g_1273.s6, "p_1351->g_1273.s6", print_hash_value);
    transparent_crc(p_1351->g_1273.s7, "p_1351->g_1273.s7", print_hash_value);
    transparent_crc(p_1351->g_1311.s0, "p_1351->g_1311.s0", print_hash_value);
    transparent_crc(p_1351->g_1311.s1, "p_1351->g_1311.s1", print_hash_value);
    transparent_crc(p_1351->g_1311.s2, "p_1351->g_1311.s2", print_hash_value);
    transparent_crc(p_1351->g_1311.s3, "p_1351->g_1311.s3", print_hash_value);
    transparent_crc(p_1351->g_1311.s4, "p_1351->g_1311.s4", print_hash_value);
    transparent_crc(p_1351->g_1311.s5, "p_1351->g_1311.s5", print_hash_value);
    transparent_crc(p_1351->g_1311.s6, "p_1351->g_1311.s6", print_hash_value);
    transparent_crc(p_1351->g_1311.s7, "p_1351->g_1311.s7", print_hash_value);
    transparent_crc(p_1351->g_1311.s8, "p_1351->g_1311.s8", print_hash_value);
    transparent_crc(p_1351->g_1311.s9, "p_1351->g_1311.s9", print_hash_value);
    transparent_crc(p_1351->g_1311.sa, "p_1351->g_1311.sa", print_hash_value);
    transparent_crc(p_1351->g_1311.sb, "p_1351->g_1311.sb", print_hash_value);
    transparent_crc(p_1351->g_1311.sc, "p_1351->g_1311.sc", print_hash_value);
    transparent_crc(p_1351->g_1311.sd, "p_1351->g_1311.sd", print_hash_value);
    transparent_crc(p_1351->g_1311.se, "p_1351->g_1311.se", print_hash_value);
    transparent_crc(p_1351->g_1311.sf, "p_1351->g_1311.sf", print_hash_value);
    transparent_crc(p_1351->g_1312.s0, "p_1351->g_1312.s0", print_hash_value);
    transparent_crc(p_1351->g_1312.s1, "p_1351->g_1312.s1", print_hash_value);
    transparent_crc(p_1351->g_1312.s2, "p_1351->g_1312.s2", print_hash_value);
    transparent_crc(p_1351->g_1312.s3, "p_1351->g_1312.s3", print_hash_value);
    transparent_crc(p_1351->g_1312.s4, "p_1351->g_1312.s4", print_hash_value);
    transparent_crc(p_1351->g_1312.s5, "p_1351->g_1312.s5", print_hash_value);
    transparent_crc(p_1351->g_1312.s6, "p_1351->g_1312.s6", print_hash_value);
    transparent_crc(p_1351->g_1312.s7, "p_1351->g_1312.s7", print_hash_value);
    transparent_crc(p_1351->g_1312.s8, "p_1351->g_1312.s8", print_hash_value);
    transparent_crc(p_1351->g_1312.s9, "p_1351->g_1312.s9", print_hash_value);
    transparent_crc(p_1351->g_1312.sa, "p_1351->g_1312.sa", print_hash_value);
    transparent_crc(p_1351->g_1312.sb, "p_1351->g_1312.sb", print_hash_value);
    transparent_crc(p_1351->g_1312.sc, "p_1351->g_1312.sc", print_hash_value);
    transparent_crc(p_1351->g_1312.sd, "p_1351->g_1312.sd", print_hash_value);
    transparent_crc(p_1351->g_1312.se, "p_1351->g_1312.se", print_hash_value);
    transparent_crc(p_1351->g_1312.sf, "p_1351->g_1312.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
