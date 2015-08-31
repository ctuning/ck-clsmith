// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 35

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_6;
    int32_t g_8[10];
    int8_t g_23;
    int8_t g_25;
    uint16_t g_55;
    int8_t g_62;
    int8_t g_64[10];
    int32_t g_67;
    int32_t * volatile g_68;
    int32_t g_70;
    int32_t * volatile g_69;
    uint16_t g_99;
    volatile int32_t g_132;
    volatile int16_t g_133[7];
    uint32_t g_134[8][10][2];
    int32_t * volatile g_166[4];
    int32_t * volatile g_167;
    uint64_t g_177;
    volatile uint8_t * volatile g_196;
    uint8_t g_198[7][10][3];
    volatile int64_t g_214;
    uint64_t g_230;
    int16_t g_233;
    int64_t g_242;
    uint32_t g_244;
    int8_t g_245;
    uint64_t g_253;
    uint32_t g_277[2][4];
    int32_t g_301[4][7];
    int32_t * volatile g_300;
    int32_t *g_335;
    int32_t ** volatile g_364[8][1];
    int32_t ** volatile g_365;
    uint16_t *g_370;
    uint32_t *g_375[4][6][8];
    uint32_t * volatile *g_374;
    uint32_t * volatile ** volatile g_373;
    int32_t ** volatile g_387[8][4][4];
    int32_t ** volatile g_388;
    int64_t g_399[10][1];
    uint32_t g_446;
    uint32_t **g_513[9];
    uint32_t ***g_512[5][7];
    int16_t g_550;
    int32_t ** volatile g_552;
    volatile int8_t g_569;
    volatile int8_t *g_568;
    volatile int8_t * volatile *g_567;
    int32_t ** volatile g_573;
    int32_t ** volatile g_574;
    int32_t g_672;
    uint64_t g_700;
    uint8_t g_710;
    uint32_t *g_915;
    uint32_t **g_914;
    uint32_t ***g_913;
    volatile int32_t * volatile **g_982;
    int16_t g_996[10][10][2];
    volatile int16_t g_1009;
    uint32_t *** volatile g_1017;
    int32_t ** volatile g_1024;
    int64_t * volatile g_1064;
    int64_t * volatile *g_1063;
    int32_t ** volatile g_1065;
    int8_t *g_1073;
    int32_t ** volatile g_1078;
    int32_t ** volatile g_1162[9][7][4];
    uint32_t g_1170[10];
    int8_t g_1195[4];
    uint64_t g_1214;
    volatile int16_t *g_1325;
    volatile int16_t ** volatile g_1324[3][1];
    int32_t * volatile g_1326;
    volatile uint16_t g_1335;
    volatile uint16_t *g_1334;
    volatile uint16_t **g_1333[2];
    volatile uint16_t ** volatile * volatile g_1332;
    int32_t ** volatile g_1406;
    int32_t g_1457;
    int32_t * volatile g_1460[9];
    int32_t * volatile g_1461[8][6][5];
    int16_t g_1477;
    uint32_t g_1634;
    int32_t ** volatile g_1638;
    int32_t ** volatile g_1664;
    volatile uint32_t g_1682;
    volatile uint32_t *g_1681;
    volatile uint32_t **g_1680;
    int8_t **g_1698;
    int8_t *** volatile g_1697;
    int8_t *** volatile *g_1696;
    volatile int8_t g_1737;
    int32_t g_1769;
    uint32_t g_1770;
    uint32_t g_1796;
    uint64_t g_1803;
    int64_t g_1818;
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
int32_t  func_1(struct S0 * p_1827);
uint8_t  func_17(int32_t * p_18, int16_t  p_19, uint32_t  p_20, struct S0 * p_1827);
int32_t  func_42(uint16_t * p_43, int32_t * p_44, int32_t * p_45, struct S0 * p_1827);
int32_t * func_46(int64_t  p_47, struct S0 * p_1827);
int32_t * func_71(int32_t  p_72, int8_t * p_73, uint32_t  p_74, struct S0 * p_1827);
int32_t  func_75(int32_t * p_76, struct S0 * p_1827);
int32_t * func_77(int8_t  p_78, int8_t  p_79, uint16_t * p_80, int8_t * p_81, uint16_t * p_82, struct S0 * p_1827);
uint16_t  func_83(uint16_t * p_84, struct S0 * p_1827);
int32_t  func_106(uint64_t  p_107, int32_t  p_108, int64_t  p_109, struct S0 * p_1827);
int64_t  func_121(int8_t  p_122, uint16_t * p_123, struct S0 * p_1827);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1827->g_6 p_1827->g_8 p_1827->g_23 p_1827->g_55 p_1827->g_69 p_1827->g_67 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_70 p_1827->g_167 p_1827->g_62 p_1827->g_132 p_1827->g_196 p_1827->g_198 p_1827->g_177 p_1827->g_25 p_1827->g_233 p_1827->g_245 p_1827->g_133 p_1827->g_253 p_1827->g_300 p_1827->g_230 p_1827->g_214 p_1827->g_301 p_1827->g_335 p_1827->g_365 p_1827->g_242 p_1827->g_373 p_1827->g_388 p_1827->g_277 p_1827->g_446 p_1827->g_370 p_1827->g_512 p_1827->g_552 p_1827->g_567 p_1827->g_569 p_1827->g_550 p_1827->g_399 p_1827->g_513 p_1827->g_700 p_1827->g_568 p_1827->g_672 p_1827->g_913 p_1827->g_982 p_1827->g_166 p_1827->g_1024 p_1827->g_1009 p_1827->g_1063 p_1827->g_1065 p_1827->g_1078 p_1827->g_1170 p_1827->g_1214 p_1827->g_1064 p_1827->g_1195 p_1827->g_1073 p_1827->g_244 p_1827->g_1324 p_1827->g_1326 p_1827->g_1332 p_1827->g_1334 p_1827->g_1335 p_1827->g_914 p_1827->g_915 p_1827->g_374 p_1827->g_1406 p_1827->g_1457 p_1827->g_710 p_1827->g_1477 p_1827->g_1333 p_1827->g_1325 p_1827->g_996 p_1827->g_1664 p_1827->g_1680 p_1827->g_1696 p_1827->g_1769 p_1827->g_1770 p_1827->g_1796 p_1827->g_1803 p_1827->g_1638
 * writes: p_1827->g_6 p_1827->g_8 p_1827->g_23 p_1827->g_25 p_1827->g_55 p_1827->g_62 p_1827->g_67 p_1827->g_70 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_177 p_1827->g_230 p_1827->g_233 p_1827->g_242 p_1827->g_244 p_1827->g_245 p_1827->g_253 p_1827->g_277 p_1827->g_198 p_1827->g_301 p_1827->g_335 p_1827->g_370 p_1827->g_399 p_1827->g_512 p_1827->g_550 p_1827->g_672 p_1827->g_700 p_1827->g_446 p_1827->g_913 p_1827->g_710 p_1827->g_513 p_1827->g_1214 p_1827->g_1457 p_1827->g_1477 p_1827->g_166 p_1827->g_1195
 */
int32_t  func_1(struct S0 * p_1827)
{ /* block id: 4 */
    int32_t l_2[9] = {0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL,0x3F9E923EL};
    uint16_t *l_5 = &p_1827->g_6;
    int32_t *l_7 = &p_1827->g_8[7];
    int32_t l_12 = 0x3C6C8951L;
    uint16_t l_14[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    uint32_t **l_1354 = (void*)0;
    int32_t l_1396[7][9][4] = {{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}},{{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL},{0x018C21EDL,1L,0x041F7607L,0x5086E2FCL}}};
    int32_t l_1398 = 0x3B0E7353L;
    uint32_t l_1478 = 0xA7A027E7L;
    int16_t l_1512 = 1L;
    int8_t **l_1529 = (void*)0;
    int8_t ***l_1528 = &l_1529;
    uint64_t l_1569 = 0xD83A925F59C07127L;
    int16_t l_1739 = 0x0487L;
    uint32_t l_1794 = 0xBDD22873L;
    int16_t *l_1802 = (void*)0;
    int16_t **l_1801 = &l_1802;
    uint32_t l_1804 = 0xD7D15A4FL;
    int32_t *l_1805 = &l_1396[5][0][3];
    int32_t l_1817 = 0x06789BA4L;
    int i, j, k;
lbl_1798:
    if ((0x5F1DBECCL > ((l_2[3] ^ l_2[0]) , ((*l_7) = (safe_mul_func_int16_t_s_s(0L, ((*l_5) = l_2[3])))))))
    { /* block id: 7 */
        int16_t l_13 = 0x05BAL;
        int8_t *l_21 = (void*)0;
        int8_t *l_22 = &p_1827->g_23;
        int8_t *l_24 = &p_1827->g_25;
        int32_t l_1358[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint32_t *l_1365 = &p_1827->g_1170[1];
        int64_t l_1397 = 1L;
        uint32_t l_1401 = 0xCFFF2525L;
        uint32_t l_1467 = 0xDC7686C6L;
        uint64_t l_1479 = 18446744073709551607UL;
        uint8_t l_1487 = 2UL;
        uint32_t ****l_1556 = (void*)0;
        uint32_t ****l_1557 = &p_1827->g_512[1][5];
        int i;
        for (p_1827->g_6 = 0; (p_1827->g_6 <= 9); p_1827->g_6 += 1)
        { /* block id: 10 */
            int32_t l_9 = 0L;
            int32_t *l_10 = (void*)0;
            int32_t *l_11[2];
            int i;
            for (i = 0; i < 2; i++)
                l_11[i] = &p_1827->g_8[4];
            (*l_7) = (l_9 &= p_1827->g_8[p_1827->g_6]);
            l_14[2]--;
        }
        if ((func_17(&p_1827->g_8[7], (((*l_24) = ((*l_22) = l_13)) >= (safe_add_func_uint16_t_u_u(p_1827->g_8[6], (--(*l_5))))), (p_1827->g_8[3] & p_1827->g_8[5]), p_1827) || (((safe_mul_func_int16_t_s_s(((**p_1827->g_365) >= (safe_mul_func_int16_t_s_s(p_1827->g_244, (safe_unary_minus_func_uint64_t_u(1UL))))), 0x949BL)) > p_1827->g_399[5][0]) | (*l_7))))
        { /* block id: 656 */
            int32_t **l_1327 = &p_1827->g_335;
            (*p_1827->g_1326) = ((*l_7) = (safe_lshift_func_int16_t_s_u((p_1827->g_1324[0][0] == &p_1827->g_1325), 7)));
            (*l_1327) = func_46(p_1827->g_25, p_1827);
            return l_13;
        }
        else
        { /* block id: 661 */
            int16_t l_1366 = (-1L);
            int64_t l_1378[10][1][2] = {{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}},{{0x0F83FBFDECDAE4B3L,0x1232F404E92218C0L}}};
            int32_t l_1386[2];
            int16_t l_1400 = 0x5030L;
            int64_t **l_1444 = (void*)0;
            int64_t l_1470 = 0x682096250991B64EL;
            int8_t l_1486 = (-6L);
            uint32_t l_1490 = 4UL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1386[i] = 1L;
            for (p_1827->g_710 = 0; (p_1827->g_710 < 40); p_1827->g_710++)
            { /* block id: 664 */
                uint32_t *l_1344 = (void*)0;
                int32_t l_1345[10] = {7L,(-9L),(-5L),(-9L),7L,7L,(-9L),(-5L),(-9L),7L};
                uint32_t *l_1346 = (void*)0;
                uint32_t *l_1347 = &p_1827->g_134[4][5][1];
                uint32_t ***l_1355 = &p_1827->g_513[7];
                int16_t *l_1356 = (void*)0;
                int16_t *l_1357 = &l_13;
                int32_t *l_1359 = &p_1827->g_70;
                uint32_t * volatile *l_1380[9][6] = {{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&l_1347,&p_1827->g_375[2][2][3]}};
                uint64_t l_1388[8][8] = {{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L},{0x17FBC15584A71354L,0x17FBC15584A71354L,9UL,6UL,0xE26008C76E05D031L,6UL,9UL,0x17FBC15584A71354L}};
                int64_t l_1395 = (-1L);
                int32_t l_1399 = 0L;
                int i, j;
                (*l_1359) |= ((**p_1827->g_388) && ((((safe_mul_func_uint8_t_u_u((p_1827->g_1332 != ((safe_mul_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((*l_7), FAKE_DIVERGE(p_1827->global_2_offset, get_global_id(2), 10))) != ((safe_mul_func_int8_t_s_s((((void*)0 == &p_1827->g_1214) > ((*l_1357) = (255UL == ((safe_lshift_func_uint8_t_u_s((((--(*l_1347)) == (safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(4294967288UL, ((p_1827->g_64[6] , ((((*l_1355) = l_1354) != (void*)0) <= 3UL)) ^ 0x0E26350EL))), l_1345[4]))) ^ l_1345[4]), 6)) == 4UL)))), p_1827->g_399[2][0])) && 0L)) >= l_1358[2]), (*l_7))) , &p_1827->g_1333[1])), (*l_7))) , (*p_1827->g_1334)) , (*p_1827->g_568)) , l_1345[4]));
                if ((*l_7))
                { /* block id: 669 */
                    uint64_t *l_1362[7];
                    uint32_t *l_1364 = &p_1827->g_1170[8];
                    uint32_t **l_1363 = &l_1364;
                    int32_t l_1377 = 0x76D6B1B7L;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_1362[i] = &p_1827->g_1214;
                    (*l_1359) = ((safe_mod_func_int16_t_s_s((((*l_1347) = ((((*l_7) = (*l_7)) , ((*l_1363) = (void*)0)) == l_1365)) > l_1366), (safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((((*p_1827->g_914) != (*p_1827->g_914)) | (safe_add_func_uint8_t_u_u((p_1827->g_70 < (safe_mul_func_int16_t_s_s(((((safe_lshift_func_int8_t_s_u((((+2L) & ((*l_24) = (**p_1827->g_567))) && l_1377), 3)) | p_1827->g_230) >= (*p_1827->g_1073)) == 0x3CE9L), l_1378[3][0][0]))), GROUP_DIVERGE(2, 1)))), 12)), (*p_1827->g_1073))))) , (*p_1827->g_167));
                    (*p_1827->g_552) = (*p_1827->g_552);
                }
                else
                { /* block id: 676 */
                    int64_t l_1385[6][8][5] = {{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}},{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}},{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}},{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}},{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}},{{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L},{0L,0x68A8DD19BFBF91E1L,0L,(-8L),0x61D045226A0912A6L}}};
                    int32_t l_1387[1];
                    uint64_t *l_1391 = &p_1827->g_1214;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1387[i] = 0x70A26890L;
                    for (p_1827->g_550 = 0; (p_1827->g_550 <= 0); p_1827->g_550 += 1)
                    { /* block id: 679 */
                        uint32_t * volatile **l_1379 = (void*)0;
                        int32_t *l_1381 = &p_1827->g_67;
                        int32_t *l_1382 = &p_1827->g_301[1][4];
                        int32_t *l_1383 = &p_1827->g_301[1][4];
                        int32_t *l_1384[7][4] = {{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]},{&l_12,&l_12,&p_1827->g_301[1][4],&p_1827->g_8[0]}};
                        int i, j;
                        l_1380[3][2] = (*p_1827->g_373);
                        l_1388[6][3]--;
                        if (p_1827->g_399[(p_1827->g_550 + 8)][p_1827->g_550])
                            continue;
                        if ((*l_7))
                            continue;
                    }
                    if (((void*)0 != l_1391))
                    { /* block id: 685 */
                        int32_t *l_1392 = &l_1345[4];
                        int32_t *l_1393 = &l_12;
                        int32_t *l_1394[6] = {&l_1386[0],(void*)0,&l_1386[0],&l_1386[0],(void*)0,&l_1386[0]};
                        uint64_t *l_1423 = &p_1827->g_700;
                        int i;
                        l_1401++;
                        (*p_1827->g_1406) = ((++(*l_1391)) , (((*l_1359) > p_1827->g_672) , (*p_1827->g_365)));
                        (*l_1392) &= (safe_add_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (((safe_lshift_func_uint8_t_u_s((((*l_1357) = (safe_mod_func_uint16_t_u_u(l_1385[0][1][2], l_1386[1]))) != (safe_add_func_int16_t_s_s((p_1827->g_233 |= (safe_rshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u((++(*l_1423)), (*l_1359))), l_1358[2]))), (safe_add_func_int64_t_s_s(l_1358[0], 0x21DF39AC0495EF50L))))), ((*p_1827->g_1073) = (((safe_mod_func_int64_t_s_s((*l_7), 18446744073709551615UL)) | ((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(0x18L, 4)), 18446744073709551615UL)) ^ GROUP_DIVERGE(2, 1))) != 0x6B5BD0DFAC333490L)))) < (*p_1827->g_1064)) , 0x4FBB2BC0L))), GROUP_DIVERGE(1, 1))), (*p_1827->g_370)));
                    }
                    else
                    { /* block id: 694 */
                        int32_t l_1458[3];
                        uint64_t *l_1459 = (void*)0;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1458[i] = 0x13AB8446L;
                        (*p_1827->g_335) &= (-1L);
                        if (l_1397)
                            continue;
                        l_1387[0] = ((safe_mod_func_uint64_t_u_u((p_1827->g_230 = (((((void*)0 != &p_1827->g_914) >= (((*l_24) = (l_1401 | ((safe_mod_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((l_1444 == ((0xC4500B96L & (safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s(((((-1L) != ((*p_1827->g_335) = ((*l_1359) |= (l_1400 < ((((safe_mul_func_uint16_t_u_u((!((*p_1827->g_370) = (safe_rshift_func_int8_t_s_u(((safe_div_func_int8_t_s_s((**p_1827->g_567), (0x9063L | l_1385[0][4][1]))) | (*p_1827->g_335)), FAKE_DIVERGE(p_1827->global_0_offset, get_global_id(0), 10))))), l_1387[0])) != l_1401) >= (*l_7)) && 0UL))))) > p_1827->g_1457) , l_1366), 0x61L)), p_1827->g_233))) , (void*)0)) | l_1458[2]), 3)), 8UL)) , 0L), 65530UL)), p_1827->g_1214)) || l_1378[8][0][1]))) == 9UL)) > l_1386[1]) | (-10L))), l_13)) != l_1378[7][0][0]);
                    }
                }
            }
            for (p_1827->g_710 = 0; (p_1827->g_710 <= 3); p_1827->g_710 += 1)
            { /* block id: 708 */
                int32_t *l_1462 = &l_1396[4][0][0];
                int32_t l_1466 = 0x721B4A38L;
                (*l_1462) &= (9L <= (*l_7));
                for (p_1827->g_446 = 0; (p_1827->g_446 <= 3); p_1827->g_446 += 1)
                { /* block id: 712 */
                    int32_t *l_1463 = &l_1358[2];
                    int32_t *l_1464 = (void*)0;
                    int32_t *l_1465[3][8] = {{&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4]},{&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4]},{&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4],&l_1396[6][0][1],&l_1396[6][0][1],&p_1827->g_301[1][4]}};
                    int32_t l_1473 = 0x786C5531L;
                    int16_t l_1476 = 0L;
                    int i, j;
                    l_1467--;
                    if ((*l_7))
                        continue;
                    (*l_1463) = (((0x95L >= ((0x900319BBL ^ ((l_1470 == p_1827->g_134[4][5][1]) | (safe_div_func_uint8_t_u_u((l_1473 != (((((**p_1827->g_567) == (safe_add_func_uint64_t_u_u(l_1476, ((p_1827->g_1477 , l_1401) , l_1378[3][0][0])))) | l_1478) || (**p_1827->g_567)) | (*l_7))), (*p_1827->g_1073))))) == p_1827->g_301[1][5])) <= 0x37C1L) & l_1479);
                    for (p_1827->g_23 = 3; (p_1827->g_23 >= 0); p_1827->g_23 -= 1)
                    { /* block id: 718 */
                        int32_t **l_1480 = &l_1465[0][0];
                        (*l_1462) &= l_1378[3][0][0];
                        (*l_1480) = (void*)0;
                        return l_1378[6][0][1];
                    }
                    if (p_1827->g_99)
                        goto lbl_1798;
                }
            }
            for (p_1827->g_70 = 0; (p_1827->g_70 < (-30)); p_1827->g_70 = safe_sub_func_int32_t_s_s(p_1827->g_70, 5))
            { /* block id: 727 */
                int32_t *l_1483 = &l_1396[6][0][1];
                int32_t *l_1484 = &l_1358[2];
                int32_t *l_1485[4][6] = {{(void*)0,&p_1827->g_8[1],(void*)0,(void*)0,&p_1827->g_8[1],(void*)0},{(void*)0,&p_1827->g_8[1],(void*)0,(void*)0,&p_1827->g_8[1],(void*)0},{(void*)0,&p_1827->g_8[1],(void*)0,(void*)0,&p_1827->g_8[1],(void*)0},{(void*)0,&p_1827->g_8[1],(void*)0,(void*)0,&p_1827->g_8[1],(void*)0}};
                int i, j;
                ++l_1487;
                ++l_1490;
            }
        }
        for (p_1827->g_55 = 0; (p_1827->g_55 > 60); ++p_1827->g_55)
        { /* block id: 734 */
            uint16_t l_1501 = 0x0C92L;
            int32_t l_1581 = 0L;
            int8_t *l_1589 = &p_1827->g_23;
            uint32_t *l_1591[8][9] = {{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][7][0],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[4][5][1],&p_1827->g_134[2][7][0],&p_1827->g_244,&p_1827->g_244}};
            uint32_t *l_1592 = (void*)0;
            int32_t l_1631 = 0x137291D1L;
            int i, j;
            for (p_1827->g_550 = 0; (p_1827->g_550 <= (-1)); p_1827->g_550 = safe_sub_func_int64_t_s_s(p_1827->g_550, 4))
            { /* block id: 737 */
                (*p_1827->g_335) = (0x6FFEL < (((safe_lshift_func_uint16_t_u_s(((l_1401 , (***p_1827->g_1332)) , (0x5EL > ((*l_24) = (safe_mul_func_uint16_t_u_u(0x02C4L, (*p_1827->g_1325)))))), 9)) && (0UL ^ (*p_1827->g_69))) && (*p_1827->g_568)));
            }
            if (l_1501)
            { /* block id: 741 */
                int16_t *l_1551 = &l_13;
                int16_t **l_1550 = &l_1551;
                int32_t l_1552 = 0L;
                if (l_1397)
                { /* block id: 742 */
                    int32_t l_1522 = 0L;
                    for (l_1397 = 0; (l_1397 <= 3); l_1397 += 1)
                    { /* block id: 745 */
                        int32_t *l_1517 = &p_1827->g_1457;
                        uint8_t *l_1518 = (void*)0;
                        uint8_t *l_1519[10][7] = {{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]},{&p_1827->g_710,&p_1827->g_198[1][0][2],(void*)0,&p_1827->g_198[1][0][2],&p_1827->g_710,&p_1827->g_710,&p_1827->g_198[1][0][2]}};
                        int32_t l_1520 = 0x7914800CL;
                        int16_t *l_1521 = &p_1827->g_233;
                        int16_t l_1523 = 1L;
                        int i, j;
                        l_1523 = (safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((((**p_1827->g_1078) <= (safe_mul_func_int16_t_s_s((((safe_add_func_int16_t_s_s(((*l_1521) = (safe_mul_func_uint8_t_u_u((l_1358[4] = ((0x7DL > l_1512) == (((*l_7) <= (1UL < (*l_7))) & ((l_1520 = (((*l_1517) = (safe_mul_func_int8_t_s_s(0x6FL, (*p_1827->g_1073)))) , p_1827->g_198[0][7][2])) | GROUP_DIVERGE(0, 1))))), p_1827->g_23))), p_1827->g_253)) , 5L) , l_1522), p_1827->g_996[3][9][0]))) , &p_1827->g_1214) != &p_1827->g_1214), 4)), p_1827->g_242));
                        (*p_1827->g_335) = (*l_7);
                    }
                }
                else
                { /* block id: 753 */
                    int8_t ***l_1531[4];
                    int32_t l_1541 = (-8L);
                    uint32_t l_1553 = 5UL;
                    int32_t *l_1564[7];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1531[i] = &l_1529;
                    for (i = 0; i < 7; i++)
                        l_1564[i] = &l_1541;
                    for (l_1467 = (-22); (l_1467 != 46); l_1467++)
                    { /* block id: 756 */
                        if ((**p_1827->g_365))
                            break;
                    }
                    for (p_1827->g_233 = 8; (p_1827->g_233 >= 0); p_1827->g_233 -= 1)
                    { /* block id: 761 */
                        int8_t ****l_1530[4][5];
                        int16_t *l_1534 = &p_1827->g_1477;
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_1530[i][j] = &l_1528;
                        }
                        (*p_1827->g_335) ^= ((safe_mul_func_uint8_t_u_u((((l_1528 = l_1528) != l_1531[1]) == p_1827->g_64[p_1827->g_233]), (((safe_sub_func_int16_t_s_s(((*l_1534) &= p_1827->g_64[p_1827->g_233]), (safe_sub_func_int32_t_s_s((safe_sub_func_int16_t_s_s((p_1827->g_64[(p_1827->g_233 + 1)] && ((p_1827->g_64[p_1827->g_233] != p_1827->g_64[p_1827->g_233]) , (safe_rshift_func_int8_t_s_s((l_1541 ^ (+(safe_div_func_uint64_t_u_u((safe_mod_func_int32_t_s_s(((l_1358[2] &= (safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((l_1550 == &p_1827->g_1325), (*p_1827->g_1325))) & l_1541), l_1552))) >= l_1553), 0x49026A75L)), (-8L))))), (*p_1827->g_1073))))), (-2L))), 0x1A8544D2L)))) || (*p_1827->g_1334)) > (-1L)))) , (-9L));
                    }
                    l_1396[6][0][1] = (safe_add_func_int16_t_s_s((l_1501 > (l_1556 == (l_1557 = &p_1827->g_512[1][2]))), ((**l_1550) = (safe_mod_func_int64_t_s_s(0x5D5B4F58C43C29DFL, (((safe_rshift_func_int8_t_s_u((**p_1827->g_567), p_1827->g_67)) & ((((*l_7) = (*p_1827->g_335)) == ((((safe_rshift_func_uint16_t_u_s((p_1827->g_134[4][5][1] , l_1541), 3)) >= l_1501) <= 0UL) , (-8L))) < (*p_1827->g_1073))) , p_1827->g_277[0][1]))))));
                }
                (*p_1827->g_335) ^= l_1552;
                for (p_1827->g_672 = 0; p_1827->g_672 < 4; p_1827->g_672 += 1)
                {
                    p_1827->g_166[p_1827->g_672] = &l_12;
                }
            }
            else
            { /* block id: 774 */
                uint8_t *l_1570 = &l_1487;
                uint32_t *l_1579[2][6] = {{(void*)0,&l_1478,(void*)0,(void*)0,&l_1478,(void*)0},{(void*)0,&l_1478,(void*)0,(void*)0,&l_1478,(void*)0}};
                int32_t l_1580 = 0x374A02FFL;
                uint32_t l_1582 = 0UL;
                uint32_t **l_1590[7] = {&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5],&p_1827->g_375[1][1][5]};
                int32_t l_1628 = 5L;
                int32_t l_1629 = 7L;
                int32_t l_1633[8] = {(-4L),0x2D5225ECL,(-4L),(-4L),0x2D5225ECL,(-4L),(-4L),0x2D5225ECL};
                int64_t l_1637 = 9L;
                int i, j;
                (*l_7) = (FAKE_DIVERGE(p_1827->group_0_offset, get_group_id(0), 10) ^ ((l_1591[1][5] = func_71((safe_div_func_int64_t_s_s((l_1569 <= ((**p_1827->g_567) , (l_1570 != (void*)0))), ((((safe_rshift_func_int8_t_s_u(((safe_lshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((&l_2[0] != &p_1827->g_672) >= ((safe_sub_func_uint32_t_u_u((l_1582--), 0x61368201L)) , (*p_1827->g_370))), (((safe_lshift_func_uint8_t_u_s(((safe_mod_func_uint8_t_u_u(((*l_1570) = 1UL), l_1401)) >= FAKE_DIVERGE(p_1827->global_0_offset, get_global_id(0), 10)), (*p_1827->g_1073))) || (*l_7)) , (*p_1827->g_370)))) || p_1827->g_1457), 9)) , (*p_1827->g_1073)), p_1827->g_1170[4])) & (*p_1827->g_1073)) || l_1501) ^ (*p_1827->g_370)))), l_1589, p_1827->g_1477, p_1827)) == l_1592));
                for (l_13 = 0; (l_13 <= 28); l_13 = safe_add_func_int8_t_s_s(l_13, 4))
                { /* block id: 781 */
                    uint64_t l_1595 = 18446744073709551615UL;
                    l_1595++;
                    if ((**p_1827->g_1406))
                        continue;
                }
                for (l_1580 = 5; (l_1580 > (-11)); --l_1580)
                { /* block id: 787 */
                    int16_t *l_1620 = &p_1827->g_233;
                    int32_t l_1627 = 1L;
                    int32_t l_1630 = (-5L);
                    int32_t l_1632 = 0x72F9921AL;
                    for (p_1827->g_67 = 0; (p_1827->g_67 != 23); p_1827->g_67++)
                    { /* block id: 790 */
                        return p_1827->g_1170[8];
                    }
                }
            }
        }
    }
    else
    { /* block id: 806 */
        int8_t l_1641[4] = {0x20L,0x20L,0x20L,0x20L};
        uint64_t *l_1648 = &p_1827->g_1214;
        uint16_t **l_1720 = &l_5;
        uint16_t ***l_1719 = &l_1720;
        uint32_t *l_1728 = &p_1827->g_134[4][5][1];
        int64_t l_1730 = (-9L);
        int32_t l_1738 = 1L;
        uint64_t l_1745[6][8] = {{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL},{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL},{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL},{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL},{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL},{3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL,3UL,3UL,18446744073709551612UL}};
        uint8_t l_1761[4][8][2] = {{{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL}},{{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL}},{{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL}},{{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL},{8UL,255UL}}};
        int16_t l_1771 = (-1L);
        int i, j, k;
        for (p_1827->g_99 = 0; (p_1827->g_99 <= 27); p_1827->g_99 = safe_add_func_int16_t_s_s(p_1827->g_99, 2))
        { /* block id: 809 */
            return l_1641[3];
        }
        for (p_1827->g_242 = 0; (p_1827->g_242 == (-3)); p_1827->g_242 = safe_sub_func_int8_t_s_s(p_1827->g_242, 6))
        { /* block id: 814 */
            uint32_t l_1661 = 1UL;
            int32_t *l_1665[4];
            int64_t l_1692 = 9L;
            uint32_t **l_1700 = &p_1827->g_375[0][2][0];
            int8_t l_1722 = 0x61L;
            uint32_t *l_1729[2];
            int64_t l_1772 = 4L;
            int i;
            for (i = 0; i < 4; i++)
                l_1665[i] = &p_1827->g_67;
            for (i = 0; i < 2; i++)
                l_1729[i] = &p_1827->g_1634;
            (*l_7) = (**p_1827->g_1078);
            if (p_1827->g_710)
                goto lbl_1797;
            for (p_1827->g_62 = 3; (p_1827->g_62 != 12); ++p_1827->g_62)
            { /* block id: 818 */
                int32_t l_1659 = 1L;
                int32_t l_1725 = (-8L);
                int32_t l_1736 = 0L;
                int32_t l_1742 = (-2L);
                int32_t l_1744 = 6L;
                uint16_t l_1754 = 0x0270L;
                uint8_t l_1773 = 255UL;
                for (p_1827->g_233 = 0; (p_1827->g_233 == 10); p_1827->g_233++)
                { /* block id: 821 */
                    uint8_t *l_1651 = (void*)0;
                    int32_t l_1652 = (-1L);
                    int32_t l_1660[8][6][3] = {{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}},{{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL},{0x41022876L,0x1CE887F9L,0x054B658AL}}};
                    uint64_t l_1666[3];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_1666[i] = 0x22178D64764980A6L;
                    if (((l_1648 != &p_1827->g_1214) != ((safe_rshift_func_int8_t_s_s((*p_1827->g_568), 1)) > (p_1827->g_198[1][0][2] ^= p_1827->g_1457))))
                    { /* block id: 823 */
                        int32_t *l_1653 = &p_1827->g_67;
                        int32_t *l_1654 = &p_1827->g_301[1][0];
                        int32_t *l_1655 = (void*)0;
                        int32_t *l_1656 = &l_1396[1][0][2];
                        int32_t *l_1657 = &p_1827->g_8[0];
                        int32_t *l_1658[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1658[i] = &l_1652;
                        l_1661--;
                        (*p_1827->g_1664) = (*p_1827->g_1065);
                        if (l_1652)
                            break;
                        l_1665[2] = &l_1659;
                    }
                    else
                    { /* block id: 828 */
                        if ((**p_1827->g_388))
                            break;
                    }
                    l_1666[0] |= ((-1L) <= 0xF8D89272AE3FE90BL);
                }
                for (p_1827->g_177 = 0; (p_1827->g_177 <= 1); p_1827->g_177 += 1)
                { /* block id: 835 */
                    uint8_t *l_1677 = &p_1827->g_710;
                    int32_t l_1685 = 0x66FE2AFCL;
                    uint64_t l_1707 = 1UL;
                    uint16_t **l_1717 = &p_1827->g_370;
                    uint16_t ***l_1716 = &l_1717;
                    int32_t l_1743[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1743[i] = 0x63DDAEF8L;
                    if (((*p_1827->g_370) ^ ((**p_1827->g_1063) == ((safe_lshift_func_uint8_t_u_s((((safe_mod_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1827->global_0_offset, get_global_id(0), 10) , ((safe_add_func_uint16_t_u_u(65535UL, (safe_mod_func_int8_t_s_s(l_1641[3], p_1827->g_301[1][4])))) == (*l_7))), (~((*l_1677)--)))) , (p_1827->g_1477 , p_1827->g_1680)) != ((safe_div_func_uint8_t_u_u(l_1641[3], 0x1FL)) , (void*)0)), 0x1347L)) > 4294967291UL) | p_1827->g_233), (*p_1827->g_1073))) > l_1685))))
                    { /* block id: 837 */
                        uint8_t l_1695 = 249UL;
                        uint32_t ***l_1699[10][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                        uint16_t ***l_1718 = &l_1717;
                        int16_t *l_1731 = (void*)0;
                        int16_t *l_1732 = &l_1512;
                        int32_t l_1733 = 0x5D3A2B1BL;
                        int64_t l_1734[10];
                        int32_t l_1735 = 0x529DF418L;
                        int32_t l_1740 = 0x0726F5A6L;
                        int32_t l_1741[8][4][1];
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                            l_1734[i] = 0x2578423C62BBDA99L;
                        for (i = 0; i < 8; i++)
                        {
                            for (j = 0; j < 4; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_1741[i][j][k] = 0L;
                            }
                        }
                        (*p_1827->g_335) = (safe_add_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((l_1692 | (safe_mul_func_int16_t_s_s((*l_7), ((+((*p_1827->g_914) == (**p_1827->g_913))) & ((p_1827->g_277[p_1827->g_177][(p_1827->g_177 + 2)] = l_1695) , ((((l_1396[6][0][1] = (p_1827->g_1696 == (((l_1700 = l_1354) == (((safe_sub_func_int64_t_s_s((((safe_add_func_int64_t_s_s((FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10) || 0x1CL), (safe_lshift_func_int8_t_s_u((251UL > p_1827->g_277[1][1]), l_1707)))) & (-1L)) , 0x764BE5E539B0AF76L), (**p_1827->g_1063))) , l_1641[3]) , (void*)0)) , (void*)0))) | 0UL) , 0x2CL) != 255UL)))))), 2)), 0xF9FD0547L)), (*p_1827->g_370)));
                        if ((*p_1827->g_167))
                            continue;
                        l_1685 = (safe_mod_func_uint8_t_u_u((safe_add_func_int16_t_s_s(((*l_1732) &= (safe_div_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((!((l_1718 = l_1716) == l_1719)) || (safe_unary_minus_func_uint64_t_u(((l_1722 | (safe_sub_func_int8_t_s_s((*p_1827->g_1073), (p_1827->g_1195[(p_1827->g_177 + 1)] = l_1725)))) & (((((safe_add_func_int32_t_s_s((l_1728 == l_1729[1]), l_1730)) , (l_1695 >= GROUP_DIVERGE(1, 1))) , l_1730) , (*p_1827->g_567)) == &l_1722))))), p_1827->g_277[p_1827->g_177][(p_1827->g_177 + 2)])), p_1827->g_1170[8]))), 0xA450L)), (*p_1827->g_568)));
                        l_1745[1][6]--;
                    }
                    else
                    { /* block id: 848 */
                        int64_t l_1748[10];
                        int32_t l_1749 = (-7L);
                        int32_t l_1750 = (-1L);
                        int32_t l_1751 = 7L;
                        int32_t l_1752 = 6L;
                        int32_t l_1753 = 4L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1748[i] = 0x49E2E6A338C4C559L;
                        l_1754--;
                    }
                    if (((safe_mul_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(0x3AL, 7L)) , (*p_1827->g_1334)), l_1761[1][7][0])) <= ((!(l_1685 = (p_1827->g_177 != (safe_rshift_func_uint16_t_u_u(((GROUP_DIVERGE(2, 1) , (((safe_add_func_int64_t_s_s((((*p_1827->g_335) = l_1707) >= (((((((safe_unary_minus_func_int8_t_s((*p_1827->g_1073))) && (safe_mul_func_int8_t_s_s((-6L), (l_1641[3] >= p_1827->g_1769)))) <= 0x40C9B50FL) ^ l_1742) , p_1827->g_1770) , p_1827->g_244) ^ 0x759DL)), p_1827->g_672)) > l_1743[3]) && (*p_1827->g_370))) < l_1730), 7))))) > p_1827->g_446)))
                    { /* block id: 853 */
                        ++l_1773;
                        return p_1827->g_6;
                    }
                    else
                    { /* block id: 856 */
                        (*l_7) = (**p_1827->g_552);
                    }
                    for (l_1569 = 0; (l_1569 == 17); l_1569 = safe_add_func_int32_t_s_s(l_1569, 5))
                    { /* block id: 861 */
                        uint32_t l_1778 = 6UL;
                        --l_1778;
                    }
                    for (p_1827->g_245 = 0; (p_1827->g_245 != 2); p_1827->g_245++)
                    { /* block id: 866 */
                        int16_t *l_1785 = &p_1827->g_1477;
                        int32_t l_1795 = 2L;
                        p_1827->g_301[2][3] |= (~(l_1641[3] == ((safe_rshift_func_int16_t_s_s((*l_7), (*p_1827->g_1325))) | (GROUP_DIVERGE(1, 1) & ((((*l_1785) = p_1827->g_8[3]) <= (l_1795 = ((safe_div_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(l_1707, 249UL)), ((safe_lshift_func_int8_t_s_s((l_1794 ^= l_1743[5]), 5)) | (*l_7)))) || (p_1827->g_1195[2] <= p_1827->g_1769)), (*p_1827->g_370))) , 65535UL))) , p_1827->g_277[1][1])))));
                        return p_1827->g_1796;
                    }
                }
            }
        }
lbl_1797:
        (*p_1827->g_167) = 0x23F6A501L;
        (*p_1827->g_335) = (*l_7);
    }
    (*l_1805) &= ((((*p_1827->g_335) = ((*p_1827->g_1064) <= (p_1827->g_550 , p_1827->g_301[2][5]))) , (((safe_sub_func_uint16_t_u_u((((**p_1827->g_1063) != (((*p_1827->g_1073) = (((((p_1827->g_370 = (void*)0) != (p_1827->g_64[3] , &l_14[2])) , &p_1827->g_1325) == l_1801) | p_1827->g_399[8][0])) <= (*l_7))) , FAKE_DIVERGE(p_1827->group_2_offset, get_group_id(2), 10)), p_1827->g_1457)) != p_1827->g_1803) | (*l_7))) , l_1804);
lbl_1826:
    (*p_1827->g_335) &= (safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(0x1F0CL, 15)), (*l_1805)));
    for (p_1827->g_70 = 0; (p_1827->g_70 > 4); ++p_1827->g_70)
    { /* block id: 888 */
        int32_t *l_1812 = &p_1827->g_1769;
        int32_t *l_1813 = &p_1827->g_8[8];
        int32_t *l_1814 = &p_1827->g_8[7];
        int32_t *l_1815 = &p_1827->g_301[1][4];
        int32_t *l_1816[10][4][3] = {{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}},{{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12},{&p_1827->g_1769,&l_12,&l_12}}};
        uint64_t l_1819[4][3][5] = {{{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L}},{{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L}},{{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L}},{{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L},{18446744073709551615UL,0xA36721F5C628DE56L,18446744073709551615UL,18446744073709551615UL,0xA36721F5C628DE56L}}};
        int i, j, k;
        ++l_1819[0][0][0];
        if ((*l_1812))
            continue;
        if (((safe_div_func_uint16_t_u_u((*l_1812), ((*l_5) &= (FAKE_DIVERGE(p_1827->global_2_offset, get_global_id(2), 10) >= ((void*)0 == &p_1827->g_914))))) , (**p_1827->g_1638)))
        { /* block id: 892 */
            (*p_1827->g_335) |= (*l_1805);
            for (l_12 = 0; (l_12 <= 6); l_12 = safe_add_func_int32_t_s_s(l_12, 3))
            { /* block id: 896 */
                return p_1827->g_399[4][0];
            }
            if (p_1827->g_244)
                goto lbl_1826;
            if ((**p_1827->g_1638))
                continue;
        }
        else
        { /* block id: 901 */
            return p_1827->g_245;
        }
    }
    return (*l_7);
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_8 p_1827->g_23 p_1827->g_55 p_1827->g_69 p_1827->g_67 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_70 p_1827->g_6 p_1827->g_167 p_1827->g_62 p_1827->g_132 p_1827->g_196 p_1827->g_198 p_1827->g_177 p_1827->g_25 p_1827->g_233 p_1827->g_245 p_1827->g_133 p_1827->g_253 p_1827->g_300 p_1827->g_230 p_1827->g_214 p_1827->g_301 p_1827->g_335 p_1827->g_365 p_1827->g_242 p_1827->g_373 p_1827->g_388 p_1827->g_277 p_1827->g_446 p_1827->g_370 p_1827->g_512 p_1827->g_552 p_1827->g_567 p_1827->g_569 p_1827->g_550 p_1827->g_399 p_1827->g_513 p_1827->g_700 p_1827->g_568 p_1827->g_672 p_1827->g_913 p_1827->g_982 p_1827->g_166 p_1827->g_244 p_1827->g_1024 p_1827->g_1009 p_1827->g_1063 p_1827->g_1065 p_1827->g_1078 p_1827->g_1170 p_1827->g_1214 p_1827->g_1064 p_1827->g_1195 p_1827->g_1073
 * writes: p_1827->g_23 p_1827->g_6 p_1827->g_25 p_1827->g_55 p_1827->g_62 p_1827->g_67 p_1827->g_70 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_177 p_1827->g_230 p_1827->g_233 p_1827->g_242 p_1827->g_244 p_1827->g_245 p_1827->g_253 p_1827->g_277 p_1827->g_198 p_1827->g_301 p_1827->g_335 p_1827->g_370 p_1827->g_399 p_1827->g_512 p_1827->g_550 p_1827->g_672 p_1827->g_700 p_1827->g_446 p_1827->g_913 p_1827->g_8
 */
uint8_t  func_17(int32_t * p_18, int16_t  p_19, uint32_t  p_20, struct S0 * p_1827)
{ /* block id: 18 */
    int8_t l_1238 = 8L;
    int32_t l_1240 = 1L;
    int64_t l_1248 = 0x549342C8480BB09CL;
    int32_t l_1249 = (-1L);
    int32_t l_1250 = (-10L);
    int32_t l_1251 = (-2L);
    int32_t l_1252 = 1L;
    int32_t l_1254[3];
    uint32_t **l_1281 = &p_1827->g_915;
    int8_t **l_1296 = &p_1827->g_1073;
    int8_t **l_1298 = (void*)0;
    int8_t ***l_1297 = &l_1298;
    int8_t l_1316 = (-6L);
    int i;
    for (i = 0; i < 3; i++)
        l_1254[i] = 0x6F8D011CL;
lbl_1293:
    for (p_1827->g_23 = 9; (p_1827->g_23 >= 3); p_1827->g_23 -= 1)
    { /* block id: 21 */
        int32_t l_1225 = 0x73DD28E0L;
        int32_t l_1235 = 0L;
        int32_t l_1237 = (-1L);
        int32_t l_1241[7] = {0x477A223EL,0x477A223EL,0x477A223EL,0x477A223EL,0x477A223EL,0x477A223EL,0x477A223EL};
        int16_t l_1260[3];
        uint32_t l_1262[8] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
        uint32_t **l_1280 = &p_1827->g_915;
        int i;
        for (i = 0; i < 3; i++)
            l_1260[i] = 0x213EL;
        for (p_19 = 9; (p_19 >= 0); p_19 -= 1)
        { /* block id: 24 */
            int64_t l_1224 = (-1L);
            int32_t l_1231 = (-8L);
            int32_t l_1233 = 0L;
            int32_t l_1239 = 1L;
            int32_t l_1244 = 0x59AC5D39L;
            int32_t l_1245 = 0x2E7BDF5BL;
            int32_t l_1246[7];
            int64_t l_1258 = 9L;
            int32_t *l_1272 = &l_1250;
            uint16_t **l_1277 = &p_1827->g_370;
            uint32_t **l_1288[7][9][4] = {{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],(void*)0}}};
            uint32_t l_1292 = 4294967291UL;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1246[i] = (-1L);
            for (p_1827->g_6 = 0; (p_1827->g_6 <= 9); p_1827->g_6 += 1)
            { /* block id: 27 */
                int32_t l_1242 = 0x40C3D9A8L;
                int32_t l_1243 = 1L;
                int32_t l_1247[7] = {1L,1L,1L,1L,1L,1L,1L};
                int8_t l_1253 = (-10L);
                uint8_t *l_1291 = &p_1827->g_198[2][0][2];
                int i;
                if ((~p_1827->g_8[p_19]))
                { /* block id: 28 */
                    for (p_1827->g_25 = 3; (p_1827->g_25 <= 9); p_1827->g_25 += 1)
                    { /* block id: 31 */
                        int i;
                        p_1827->g_8[p_1827->g_23] = ((p_1827->g_8[p_1827->g_23] ^ (safe_mod_func_int16_t_s_s((safe_div_func_uint8_t_u_u(0xA4L, ((1UL > (safe_lshift_func_uint16_t_u_u(((FAKE_DIVERGE(p_1827->group_1_offset, get_group_id(1), 10) , (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_mul_func_int32_t_s_s(func_42(&p_1827->g_6, &p_1827->g_8[p_19], func_46(p_19, p_1827), p_1827), (p_1827->g_8[p_1827->g_23] >= p_20))), p_1827->g_1170[8])), p_1827->g_1214))) > (-9L)), 13))) || 18446744073709551606UL))), p_1827->g_8[0]))) < 1L);
                    }
                }
                else
                { /* block id: 627 */
                    int16_t l_1232 = 1L;
                    int32_t l_1234 = (-1L);
                    int32_t l_1236[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1236[i] = (-1L);
                    for (p_1827->g_55 = 0; (p_1827->g_55 == 35); ++p_1827->g_55)
                    { /* block id: 630 */
                        int32_t *l_1223 = &p_1827->g_301[0][1];
                        int32_t *l_1226 = &p_1827->g_8[p_19];
                        int32_t *l_1227 = &p_1827->g_67;
                        int32_t *l_1228 = (void*)0;
                        int32_t *l_1229 = &p_1827->g_8[4];
                        int32_t *l_1230[2][9] = {{&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4],&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4],&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4]},{&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4],&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4],&p_1827->g_301[0][4],&p_1827->g_67,&p_1827->g_301[0][4]}};
                        uint32_t l_1255 = 0x60DFEB22L;
                        int32_t l_1259 = 0x478D04F0L;
                        int8_t l_1261 = 0x4CL;
                        uint64_t l_1267 = 0xE18A30DD75A80A76L;
                        int16_t *l_1269 = (void*)0;
                        int16_t **l_1268 = &l_1269;
                        uint64_t *l_1270 = &p_1827->g_253;
                        int64_t *l_1271[6] = {&l_1248,&l_1248,&l_1248,&l_1248,&l_1248,&l_1248};
                        int i, j;
                        --l_1255;
                        l_1262[5]--;
                        l_1272 = func_71((safe_lshift_func_uint8_t_u_s(((0x6EEBF1D3L <= (l_1267 ^ FAKE_DIVERGE(p_1827->group_0_offset, get_group_id(0), 10))) ^ ((*l_1223) = (&l_1260[2] != ((*l_1268) = ((**p_1827->g_1063) , (void*)0))))), 5)), &l_1253, ((((*l_1270) = l_1258) != (p_1827->g_399[5][0] = (l_1254[0] ^= p_1827->g_672))) <= (*p_18)), p_1827);
                        if (l_1236[0])
                            continue;
                    }
                    if (p_19)
                        goto lbl_1293;
                }
                p_1827->g_8[p_19] = 0x040D6C02L;
                (*p_1827->g_335) ^= (((safe_add_func_uint8_t_u_u((&l_1238 == &l_1253), (0x5C6A37B006D8BD69L & ((safe_lshift_func_uint16_t_u_s(p_19, ((l_1277 != (void*)0) & (safe_rshift_func_uint8_t_u_u(l_1225, 5))))) || ((l_1280 == l_1281) , (**p_1827->g_567)))))) || l_1235) <= 0x47C2L);
                l_1241[5] |= (p_20 <= ((!(p_19 | (((safe_mul_func_uint8_t_u_u(((((0xE2L & (0x747B5365E206C9FAL < ((safe_mul_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(((*l_1291) = ((((void*)0 == l_1288[6][7][3]) & p_20) >= (65535UL ^ (safe_div_func_uint64_t_u_u(p_1827->g_1195[3], 1UL))))), (*p_1827->g_568))) , 1L), 0xB5L)) , l_1292))) ^ (*p_1827->g_1073)) | p_20) , (*l_1272)), p_20)) && (*p_1827->g_1073)) < p_19))) & p_19));
            }
        }
        return p_1827->g_8[p_1827->g_23];
    }
    l_1240 = ((safe_div_func_uint32_t_u_u(((((l_1296 != ((*l_1297) = l_1296)) > (safe_sub_func_uint64_t_u_u((safe_div_func_int32_t_s_s((safe_div_func_int32_t_s_s(((safe_unary_minus_func_int32_t_s(((p_1827->g_8[7] , (((0xD0647BE6742CDC39L <= 0x79EE20D337C3BAA4L) >= ((((((*p_1827->g_370) > (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u(p_19, p_20)), 15))) , (((((safe_lshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((**p_1827->g_567), p_1827->g_198[1][0][2])) < l_1254[2]) == p_1827->g_700), p_20)), 0)) < (-2L)) < 0L) == l_1238) <= (*p_1827->g_370))) , 1UL) , l_1249) , GROUP_DIVERGE(2, 1))) ^ 0x3978L)) <= 2L))) > l_1316), l_1254[2])), (*p_1827->g_335))), p_19))) , GROUP_DIVERGE(1, 1)) == p_1827->g_8[7]), 1L)) , (*p_18));
    l_1254[1] &= ((*p_18) = (*p_18));
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_177 p_1827->g_244 p_1827->g_8 p_1827->g_672 p_1827->g_55 p_1827->g_1024 p_1827->g_230 p_1827->g_1009 p_1827->g_6 p_1827->g_70 p_1827->g_233 p_1827->g_133 p_1827->g_245 p_1827->g_277 p_1827->g_700 p_1827->g_198 p_1827->g_1063 p_1827->g_567 p_1827->g_568 p_1827->g_569 p_1827->g_1065 p_1827->g_99 p_1827->g_1078 p_1827->g_67 p_1827->g_69
 * writes: p_1827->g_177 p_1827->g_244 p_1827->g_672 p_1827->g_55 p_1827->g_335 p_1827->g_230 p_1827->g_64 p_1827->g_99 p_1827->g_70 p_1827->g_233 p_1827->g_245 p_1827->g_198 p_1827->g_67
 */
int32_t  func_42(uint16_t * p_43, int32_t * p_44, int32_t * p_45, struct S0 * p_1827)
{ /* block id: 469 */
    int32_t l_1000 = 0x221A28B7L;
    int32_t l_1003 = 0x358584C0L;
    int32_t l_1004 = 4L;
    int32_t l_1006 = 0x10C7B821L;
    int32_t l_1007 = 0x7F111813L;
    int32_t l_1008 = 0L;
    int32_t l_1010[7] = {0x01BDEEA4L,0x01BDEEA4L,0x01BDEEA4L,0x01BDEEA4L,0x01BDEEA4L,0x01BDEEA4L,0x01BDEEA4L};
    uint32_t ***l_1037 = &p_1827->g_513[7];
    int8_t *l_1071[2];
    uint32_t *l_1091 = (void*)0;
    int64_t *l_1096 = &p_1827->g_399[4][0];
    int i;
    for (i = 0; i < 2; i++)
        l_1071[i] = &p_1827->g_25;
    for (p_1827->g_177 = 0; (p_1827->g_177 <= 3); p_1827->g_177 += 1)
    { /* block id: 472 */
        int8_t l_1002 = 0x38L;
        int32_t l_1005[10] = {0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L,0x2196FD43L};
        int32_t l_1012 = 0x5EBA781BL;
        uint32_t l_1013[4][7][8] = {{{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L}},{{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L}},{{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L}},{{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L},{4294967286UL,3UL,0x7449EEAAL,4294967295UL,4294967286UL,0x19B49B80L,3UL,0xB9D632A0L}}};
        uint32_t **l_1016 = &p_1827->g_375[2][2][3];
        int32_t *l_1018 = &l_1004;
        int32_t *l_1019 = &l_1008;
        int32_t *l_1020[9] = {&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67};
        uint8_t l_1021[10];
        uint16_t *l_1075[1][5];
        uint8_t l_1120 = 0x62L;
        int32_t l_1121[3][6] = {{0x1BCA4777L,(-8L),0x1BCA4777L,0x1BCA4777L,(-8L),0x1BCA4777L},{0x1BCA4777L,(-8L),0x1BCA4777L,0x1BCA4777L,(-8L),0x1BCA4777L},{0x1BCA4777L,(-8L),0x1BCA4777L,0x1BCA4777L,(-8L),0x1BCA4777L}};
        uint16_t **l_1184 = &l_1075[0][2];
        uint16_t ***l_1183 = &l_1184;
        uint16_t ***l_1185 = (void*)0;
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_1021[i] = 255UL;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_1075[i][j] = &p_1827->g_6;
        }
        for (p_1827->g_244 = 0; (p_1827->g_244 <= 3); p_1827->g_244 += 1)
        { /* block id: 475 */
            int32_t *l_997 = (void*)0;
            int32_t *l_998 = &p_1827->g_301[0][1];
            int32_t *l_999 = &p_1827->g_67;
            int32_t *l_1001[5][2][1] = {{{&p_1827->g_67},{&p_1827->g_67}},{{&p_1827->g_67},{&p_1827->g_67}},{{&p_1827->g_67},{&p_1827->g_67}},{{&p_1827->g_67},{&p_1827->g_67}},{{&p_1827->g_67},{&p_1827->g_67}}};
            int16_t l_1011 = (-3L);
            int i, j, k;
            l_1013[0][5][1]--;
            l_1016 = l_1016;
            for (l_1006 = 3; (l_1006 >= 0); l_1006 -= 1)
            { /* block id: 480 */
                return (*p_44);
            }
        }
        --l_1021[1];
        for (p_1827->g_672 = 0; (p_1827->g_672 <= 3); p_1827->g_672 += 1)
        { /* block id: 487 */
            int8_t l_1034 = 1L;
            int32_t l_1043 = (-1L);
            for (p_1827->g_55 = 0; (p_1827->g_55 <= 3); p_1827->g_55 += 1)
            { /* block id: 490 */
                int16_t l_1025 = 0x6D83L;
                uint32_t ***l_1038 = &l_1016;
                (*p_1827->g_1024) = p_44;
                for (p_1827->g_230 = 0; (p_1827->g_230 <= 3); p_1827->g_230 += 1)
                { /* block id: 494 */
                    int8_t *l_1044 = &p_1827->g_64[3];
                    uint16_t *l_1045 = &p_1827->g_99;
                    (*l_1019) = (FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10) || ((*l_1018) == 0x9A7F6E65L));
                    (*l_1019) = ((l_1025 & ((*l_1018) = (safe_lshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((((void*)0 == p_45) > ((safe_rshift_func_int16_t_s_s((l_1034 = p_1827->g_1009), 14)) ^ (safe_sub_func_uint16_t_u_u(((((l_1037 = &p_1827->g_513[2]) != l_1038) | ((*l_1045) = (((safe_lshift_func_int8_t_s_u(((*l_1044) = ((-8L) | ((safe_sub_func_int64_t_s_s(l_1043, (l_1043 != l_1000))) , l_1025))), (*l_1019))) <= l_1025) != (*l_1019)))) | (*p_43)), l_1043)))), l_1025)), 0x32399107L)) < 0x64L), 2)))) && (*p_44));
                    (*l_1018) = l_1025;
                }
            }
            for (l_1034 = 0; (l_1034 <= 3); l_1034 += 1)
            { /* block id: 507 */
                uint32_t l_1047 = 1UL;
                uint32_t ***l_1048 = &p_1827->g_513[7];
                for (p_1827->g_70 = 0; (p_1827->g_70 <= 1); p_1827->g_70 += 1)
                { /* block id: 510 */
                    uint16_t l_1046 = 1UL;
                    int64_t *l_1062 = &p_1827->g_399[5][0];
                    int64_t **l_1061 = &l_1062;
                    int i, j;
                    for (p_1827->g_233 = 3; (p_1827->g_233 >= 0); p_1827->g_233 -= 1)
                    { /* block id: 513 */
                        int i;
                        l_1043 |= l_1010[(p_1827->g_177 + 3)];
                        if (p_1827->g_133[(l_1034 + 2)])
                            continue;
                        (*l_1018) &= (-8L);
                    }
                    for (p_1827->g_245 = 0; (p_1827->g_245 <= 1); p_1827->g_245 += 1)
                    { /* block id: 520 */
                        l_1046 ^= 1L;
                    }
                    if (p_1827->g_277[p_1827->g_70][p_1827->g_70])
                        break;
                    (*p_1827->g_1065) = ((((((p_1827->g_277[p_1827->g_70][p_1827->g_70] , (l_1047 , (l_1010[1] <= (p_1827->g_700 & ((void*)0 == l_1048))))) && ((safe_div_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), GROUP_DIVERGE(1, 1))) & ((((((safe_mod_func_uint8_t_u_u((+((--p_1827->g_198[5][9][2]) & ((*l_1018) >= 0xA34AF237L))), (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 2)))) || (safe_sub_func_int32_t_s_s(((((((l_1047 <= l_1046) , l_1061) != p_1827->g_1063) , p_1827->g_277[p_1827->g_70][p_1827->g_70]) , (void*)0) == (void*)0), l_1047))) | (*p_44)) || (*p_43)) >= l_1047) >= (*p_43)))) , 0UL) && (**p_1827->g_567)) && 2L) , p_44);
                }
                for (l_1012 = 3; (l_1012 >= 0); l_1012 -= 1)
                { /* block id: 529 */
                    for (l_1043 = 3; (l_1043 >= 0); l_1043 -= 1)
                    { /* block id: 532 */
                        int32_t **l_1066 = &l_1020[6];
                        int i;
                        (*l_1066) = &l_1010[(l_1012 + 2)];
                        return l_1010[(l_1034 + 2)];
                    }
                    for (p_1827->g_99 = 0; (p_1827->g_99 <= 3); p_1827->g_99 += 1)
                    { /* block id: 538 */
                        return (*p_44);
                    }
                }
            }
            for (p_1827->g_55 = 0; (p_1827->g_55 <= 3); p_1827->g_55 += 1)
            { /* block id: 545 */
                int8_t *l_1067 = &l_1002;
                int8_t **l_1072[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_1074 = 1L;
                uint16_t **l_1076 = (void*)0;
                uint16_t **l_1077 = &l_1075[0][2];
                int i;
                (*p_1827->g_1078) = p_44;
            }
        }
        for (p_1827->g_67 = 0; (p_1827->g_67 <= 3); p_1827->g_67 += 1)
        { /* block id: 555 */
            int8_t l_1090 = 0x15L;
            int64_t l_1093 = 1L;
            uint32_t *l_1103 = &p_1827->g_277[1][1];
            int32_t l_1145[4][7][9] = {{{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)}},{{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)}},{{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)}},{{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)},{(-10L),0x2792BC30L,0x54643A49L,0x239BCA90L,0x51C74409L,0x2E9FCD10L,0x2D59B6B1L,(-6L),(-6L)}}};
            uint32_t *l_1169 = &p_1827->g_1170[8];
            int32_t **l_1186 = &l_1020[3];
            uint8_t l_1218 = 0x8FL;
            int i, j, k;
            (1 + 1);
        }
    }
    return (*p_1827->g_69);
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_23 p_1827->g_55 p_1827->g_8 p_1827->g_69 p_1827->g_67 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_70 p_1827->g_6 p_1827->g_167 p_1827->g_62 p_1827->g_132 p_1827->g_196 p_1827->g_198 p_1827->g_177 p_1827->g_25 p_1827->g_233 p_1827->g_245 p_1827->g_244 p_1827->g_133 p_1827->g_253 p_1827->g_300 p_1827->g_230 p_1827->g_214 p_1827->g_301 p_1827->g_335 p_1827->g_365 p_1827->g_242 p_1827->g_373 p_1827->g_388 p_1827->g_277 p_1827->g_446 p_1827->g_370 p_1827->g_512 p_1827->g_552 p_1827->g_567 p_1827->g_569 p_1827->g_550 p_1827->g_399 p_1827->g_513 p_1827->g_672 p_1827->g_700 p_1827->g_568 p_1827->g_913 p_1827->g_982 p_1827->g_166
 * writes: p_1827->g_55 p_1827->g_62 p_1827->g_67 p_1827->g_70 p_1827->g_99 p_1827->g_64 p_1827->g_134 p_1827->g_177 p_1827->g_230 p_1827->g_233 p_1827->g_242 p_1827->g_244 p_1827->g_245 p_1827->g_253 p_1827->g_277 p_1827->g_198 p_1827->g_301 p_1827->g_335 p_1827->g_370 p_1827->g_399 p_1827->g_512 p_1827->g_550 p_1827->g_672 p_1827->g_700 p_1827->g_446 p_1827->g_913
 */
int32_t * func_46(int64_t  p_47, struct S0 * p_1827)
{ /* block id: 32 */
    uint16_t *l_54 = &p_1827->g_55;
    int32_t *l_56 = &p_1827->g_8[7];
    int8_t *l_61 = &p_1827->g_62;
    int8_t *l_63[7] = {&p_1827->g_64[3],&p_1827->g_64[3],&p_1827->g_64[3],&p_1827->g_64[3],&p_1827->g_64[3],&p_1827->g_64[3],&p_1827->g_64[3]};
    int32_t l_65 = 1L;
    int32_t *l_66 = &p_1827->g_67;
    int32_t l_254 = 9L;
    int32_t **l_995 = &l_66;
    int i;
    (*p_1827->g_69) = ((*l_66) = ((safe_div_func_uint64_t_u_u(p_1827->g_23, GROUP_DIVERGE(2, 1))) != (safe_sub_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s(((*l_54) &= p_47), 15)) ^ (((l_56 != (void*)0) || p_1827->g_8[8]) == (safe_add_func_int64_t_s_s((-1L), (safe_mod_func_int16_t_s_s(p_47, (*l_56))))))), (l_65 = ((*l_61) = (l_56 == (void*)0)))))));
    (*l_995) = (((void*)0 != &p_1827->g_64[3]) , func_71(func_75(func_77((func_83(((safe_add_func_uint8_t_u_u((*l_66), p_1827->g_55)) , l_54), p_1827) & (((((p_47 || p_1827->g_6) && (((((safe_sub_func_uint8_t_u_u(((p_1827->g_253 = (safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s((*l_56), 13)), 8))) < (-1L)), p_47)) > GROUP_DIVERGE(1, 1)) , &p_1827->g_6) != l_54) < p_1827->g_198[1][0][2])) < l_254) < p_47) == 0L)), (*l_56), &p_1827->g_6, l_61, &p_1827->g_6, p_1827), p_1827), l_61, p_47, p_1827));
    (*p_1827->g_388) = (*l_995);
    return (*p_1827->g_552);
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_230 p_1827->g_62 p_1827->g_301 p_1827->g_133 p_1827->g_67 p_1827->g_982 p_1827->g_550 p_1827->g_70 p_1827->g_672 p_1827->g_700 p_1827->g_166 p_1827->g_8 p_1827->g_23
 * writes: p_1827->g_301 p_1827->g_230 p_1827->g_62 p_1827->g_70 p_1827->g_672 p_1827->g_335 p_1827->g_700
 */
int32_t * func_71(int32_t  p_72, int8_t * p_73, uint32_t  p_74, struct S0 * p_1827)
{ /* block id: 424 */
    int32_t *l_951 = &p_1827->g_301[2][1];
    int8_t l_957[7][5][7] = {{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}},{{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L},{(-1L),(-1L),0x0FL,0x35L,0x3EL,0x44L,0x34L}}};
    int32_t l_958[9] = {0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L,0x5D1F55E1L};
    uint64_t *l_969 = &p_1827->g_253;
    int32_t **l_981[7] = {&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335};
    int32_t ***l_980 = &l_981[2];
    int32_t *l_993 = &p_1827->g_8[7];
    int32_t *l_994 = &p_1827->g_301[0][6];
    int i, j, k;
    (*l_951) = (-1L);
    l_951 = l_951;
    for (p_1827->g_230 = (-4); (p_1827->g_230 <= 11); p_1827->g_230 = safe_add_func_int16_t_s_s(p_1827->g_230, 1))
    { /* block id: 429 */
        int32_t *l_954 = &p_1827->g_301[1][4];
        int32_t *l_955 = &p_1827->g_301[2][0];
        int32_t *l_956[5];
        uint64_t l_959 = 0x036BD65A42074E3FL;
        int i;
        for (i = 0; i < 5; i++)
            l_956[i] = &p_1827->g_67;
        l_959--;
        for (p_1827->g_62 = 4; (p_1827->g_62 >= 0); p_1827->g_62 -= 1)
        { /* block id: 433 */
            int32_t *l_962 = &p_1827->g_8[6];
            int i;
            if (l_958[p_1827->g_62])
                break;
            return l_962;
        }
        p_1827->g_70 ^= (FAKE_DIVERGE(p_1827->global_1_offset, get_global_id(1), 10) >= (safe_mod_func_int32_t_s_s(((safe_mul_func_int16_t_s_s(((((*l_951) , (safe_mul_func_int8_t_s_s((p_1827->g_133[5] != (((void*)0 == l_969) && ((p_1827->g_67 , ((safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((((*l_951) > (safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s((((0L && p_1827->g_301[3][2]) , l_980) != p_1827->g_982), (*p_73))), (*l_955))), 4))) , p_74), (*l_951))), (*l_951))) & (*p_73))) <= 0xCE0AC870L))), (*p_73)))) > 0x58L) | p_1827->g_550), p_72)) , 0x558F25C7L), p_74)));
        (*l_954) = p_74;
    }
    for (p_1827->g_672 = 0; (p_1827->g_672 <= 3); p_1827->g_672 += 1)
    { /* block id: 442 */
        int32_t *l_983 = &p_1827->g_301[1][4];
        uint16_t *l_986[9];
        int i;
        for (i = 0; i < 9; i++)
            l_986[i] = &p_1827->g_55;
        for (p_72 = 3; (p_72 >= 0); p_72 -= 1)
        { /* block id: 445 */
            int32_t * volatile l_988 = &p_1827->g_70;/* VOLATILE GLOBAL l_988 */
            int32_t *l_992 = &l_958[7];
            l_983 = ((**l_980) = l_983);
            for (p_1827->g_700 = 0; (p_1827->g_700 <= 3); p_1827->g_700 += 1)
            { /* block id: 450 */
                uint16_t *l_985 = &p_1827->g_99;
                int32_t *l_991[8] = {&p_1827->g_70,&p_1827->g_70,&p_1827->g_70,&p_1827->g_70,&p_1827->g_70,&p_1827->g_70,&p_1827->g_70,&p_1827->g_70};
                int i;
                for (p_74 = 0; (p_74 <= 0); p_74 += 1)
                { /* block id: 453 */
                    uint16_t **l_984[9] = {&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370,&p_1827->g_370};
                    int32_t * volatile *l_987[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j;
                    l_988 = p_1827->g_166[p_1827->g_672];
                }
                (*l_951) &= (safe_lshift_func_int16_t_s_s(0x03AEL, 0));
                return l_993;
            }
            (*l_951) |= (-2L);
        }
        if (p_74)
            continue;
        if ((*l_993))
            continue;
    }
    return l_994;
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_365 p_1827->g_242 p_1827->g_55 p_1827->g_373 p_1827->g_133 p_1827->g_134 p_1827->g_335 p_1827->g_388 p_1827->g_301 p_1827->g_69 p_1827->g_70 p_1827->g_233 p_1827->g_277 p_1827->g_8 p_1827->g_446 p_1827->g_167 p_1827->g_25 p_1827->g_245 p_1827->g_67 p_1827->g_370 p_1827->g_99 p_1827->g_300 p_1827->g_512 p_1827->g_552 p_1827->g_567 p_1827->g_569 p_1827->g_550 p_1827->g_177 p_1827->g_399 p_1827->g_198 p_1827->g_253 p_1827->g_513 p_1827->g_132 p_1827->g_672 p_1827->g_700 p_1827->g_244 p_1827->g_568 p_1827->g_6 p_1827->g_64 p_1827->g_913 p_1827->g_230
 * writes: p_1827->g_253 p_1827->g_335 p_1827->g_370 p_1827->g_55 p_1827->g_230 p_1827->g_99 p_1827->g_67 p_1827->g_233 p_1827->g_399 p_1827->g_301 p_1827->g_70 p_1827->g_512 p_1827->g_550 p_1827->g_177 p_1827->g_198 p_1827->g_242 p_1827->g_672 p_1827->g_700 p_1827->g_244 p_1827->g_446 p_1827->g_913
 */
int32_t  func_75(int32_t * p_76, struct S0 * p_1827)
{ /* block id: 125 */
    int64_t l_358 = 7L;
    uint16_t *l_362 = &p_1827->g_55;
    int32_t l_416[1];
    uint16_t l_422[3];
    uint32_t **l_493 = (void*)0;
    int8_t **l_503 = (void*)0;
    uint32_t *l_560 = &p_1827->g_446;
    uint32_t **l_559 = &l_560;
    int32_t **l_628[3][6][5] = {{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,&p_1827->g_335}}};
    uint64_t l_629[2];
    int32_t l_693 = (-3L);
    uint32_t l_703[4];
    uint8_t l_799[5];
    uint32_t l_801 = 0UL;
    int32_t *l_824 = &l_693;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_416[i] = 0L;
    for (i = 0; i < 3; i++)
        l_422[i] = 0UL;
    for (i = 0; i < 2; i++)
        l_629[i] = 1UL;
    for (i = 0; i < 4; i++)
        l_703[i] = 4294967295UL;
    for (i = 0; i < 5; i++)
        l_799[i] = 0x67L;
lbl_404:
    for (p_1827->g_253 = 0; (p_1827->g_253 >= 54); ++p_1827->g_253)
    { /* block id: 128 */
        int32_t *l_345 = (void*)0;
        int32_t l_359 = 0x51D51727L;
        int8_t *l_360 = (void*)0;
        int8_t *l_361 = &p_1827->g_62;
        uint16_t *l_363 = &p_1827->g_6;
        uint16_t *l_376[7][6][6] = {{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}},{{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0},{(void*)0,&p_1827->g_6,(void*)0,(void*)0,&p_1827->g_6,(void*)0}}};
        int32_t l_377 = 0x55C419F9L;
        int i, j, k;
        l_345 = (void*)0;
        (*p_1827->g_365) = &l_359;
        (*p_1827->g_335) = (safe_lshift_func_uint8_t_u_u(((safe_mod_func_int32_t_s_s(((((p_1827->g_370 = &p_1827->g_55) != ((p_1827->g_242 == ((((*l_362)--) & (GROUP_DIVERGE(1, 1) , (((void*)0 != p_1827->g_373) != (l_377 = 0UL)))) , (((l_377 | (safe_div_func_int8_t_s_s(1L, (safe_mod_func_uint16_t_u_u(((p_1827->g_133[1] || p_1827->g_134[4][5][1]) == (*p_1827->g_335)), 0x7198L))))) > l_358) <= p_1827->g_242))) , (void*)0)) <= l_359) != l_359), l_358)) , 1UL), 3));
        (*p_1827->g_335) = l_358;
    }
    for (p_1827->g_230 = (-4); (p_1827->g_230 < 26); p_1827->g_230++)
    { /* block id: 140 */
        uint32_t l_386[6];
        int32_t l_414 = 2L;
        int32_t l_417 = 0x06899A4EL;
        int32_t l_420 = 0x31949804L;
        uint32_t *l_469 = &p_1827->g_446;
        uint32_t **l_468 = &l_469;
        uint16_t l_481 = 0x4F6EL;
        uint32_t ***l_498 = &l_493;
        int8_t *l_566 = &p_1827->g_64[3];
        int8_t **l_565 = &l_566;
        uint16_t l_572 = 0xE38AL;
        int32_t *l_622 = &p_1827->g_70;
        uint32_t l_638[3][9][4] = {{{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL}},{{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL}},{{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL},{1UL,0xB8872402L,0x266B1C54L,0x160947BDL}}};
        int32_t *l_734[8][9] = {{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]},{&l_417,&p_1827->g_301[0][3],&l_417,&l_420,&l_417,&p_1827->g_301[0][3],&l_417,&l_416[0],&p_1827->g_301[1][4]}};
        int32_t *l_762 = &p_1827->g_672;
        int64_t l_898[9] = {0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L,0x1FFB770CE2F18511L};
        int32_t ***l_946 = (void*)0;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_386[i] = 1UL;
        for (p_1827->g_99 = 0; (p_1827->g_99 < 37); p_1827->g_99 = safe_add_func_int64_t_s_s(p_1827->g_99, 1))
        { /* block id: 143 */
            int16_t l_395[9][9];
            int32_t l_411 = 1L;
            int32_t l_412 = (-1L);
            int32_t l_413[6] = {0x626D77E6L,0x626D77E6L,0x626D77E6L,0x626D77E6L,0x626D77E6L,0x626D77E6L};
            int32_t l_441 = 0x201931ACL;
            int8_t *l_464 = &p_1827->g_245;
            int i, j;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 9; j++)
                    l_395[i][j] = 1L;
            }
            if (l_386[4])
            { /* block id: 144 */
                int8_t l_401 = 4L;
                int32_t l_402 = (-10L);
                int32_t **l_405 = &p_1827->g_335;
                int32_t l_415 = 1L;
                int32_t l_418 = 0x1884D486L;
                int32_t l_419 = 0x0112B496L;
                int32_t l_421 = (-1L);
                (*p_1827->g_388) = p_76;
                for (p_1827->g_67 = (-20); (p_1827->g_67 > 21); p_1827->g_67++)
                { /* block id: 148 */
                    int32_t l_398[8][1] = {{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L}};
                    int i, j;
                    for (p_1827->g_233 = 2; (p_1827->g_233 > (-22)); p_1827->g_233--)
                    { /* block id: 151 */
                        int8_t *l_400 = (void*)0;
                        int32_t *l_403 = &p_1827->g_301[2][3];
                        (*l_403) |= (l_402 = ((l_401 |= (safe_sub_func_int16_t_s_s(l_395[7][8], ((l_395[7][8] >= (safe_rshift_func_int8_t_s_u(0x29L, 1))) <= (p_1827->g_399[5][0] = l_398[2][0]))))) || p_1827->g_134[4][5][1]));
                        if ((*p_1827->g_69))
                            continue;
                        if (p_1827->g_55)
                            goto lbl_404;
                        return p_1827->g_70;
                    }
                    for (p_1827->g_233 = 6; (p_1827->g_233 >= 1); p_1827->g_233 -= 1)
                    { /* block id: 162 */
                        uint32_t l_406 = 1UL;
                        int32_t *l_407 = &l_398[2][0];
                        int32_t *l_408 = &p_1827->g_301[1][4];
                        int32_t *l_409 = &p_1827->g_301[1][4];
                        int32_t *l_410[10][9] = {{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]},{&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6],&p_1827->g_301[3][6]}};
                        int i, j;
                        l_406 &= (&p_76 != l_405);
                        l_422[0]++;
                        if (p_1827->g_70)
                            goto lbl_404;
                        if (p_1827->g_133[p_1827->g_233])
                            break;
                    }
                }
                for (p_1827->g_55 = 0; (p_1827->g_55 >= 27); p_1827->g_55 = safe_add_func_int16_t_s_s(p_1827->g_55, 4))
                { /* block id: 171 */
                    uint16_t l_431 = 1UL;
                    uint32_t *l_432[1];
                    int32_t l_461 = 4L;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_432[i] = &p_1827->g_134[4][5][1];
                    if (((safe_div_func_int32_t_s_s((((safe_add_func_int8_t_s_s((((l_419 &= (1L ^ ((l_416[0] &= l_431) , l_431))) < (safe_mul_func_int16_t_s_s((l_414 >= (((((&p_1827->g_374 == (void*)0) < ((safe_lshift_func_int16_t_s_s((((safe_add_func_int8_t_s_s(0x52L, ((0x5472084BL != (safe_mod_func_uint8_t_u_u(l_412, 0x6AL))) & l_431))) & p_1827->g_277[1][2]) , l_386[2]), 8)) ^ GROUP_DIVERGE(1, 1))) & l_431) & l_422[0]) && l_431)), 0x86C5L))) > l_422[1]), p_1827->g_134[7][2][1])) >= l_411) , l_431), l_441)) | l_431))
                    { /* block id: 174 */
                        int8_t *l_457[2][3][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int16_t *l_458 = &l_395[7][8];
                        int8_t l_459 = 0x6CL;
                        int16_t *l_460 = &p_1827->g_233;
                        int32_t *l_465[6];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_465[i] = &l_416[0];
                        (*p_1827->g_69) = (l_461 = (p_1827->g_8[7] && ((*l_460) = ((((void*)0 != &p_1827->g_167) <= (((((l_416[0] = (safe_add_func_int64_t_s_s((+(safe_mul_func_uint16_t_u_u(((((p_1827->g_446 && ((safe_rshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s(((*l_458) = (safe_lshift_func_uint8_t_u_s(0xEFL, (l_413[4] = (safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(l_431, 3)), 5)))))), (l_386[0] & l_459))), 10)) & ((*p_1827->g_167) || l_459))) , GROUP_DIVERGE(2, 1)) != l_419) == p_1827->g_25), 1L))), GROUP_DIVERGE(1, 1)))) > l_431) && 0UL) , (void*)0) == (void*)0)) || 0x6B806423L))));
                        l_416[0] = ((~(l_459 >= FAKE_DIVERGE(p_1827->global_2_offset, get_global_id(2), 10))) , ((((l_386[1] || l_386[4]) || (safe_lshift_func_int16_t_s_s(((FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10) <= p_1827->g_245) ^ ((l_459 | (p_1827->g_134[0][0][0] || 0x56112F3D80B044C6L)) < 3L)), 13))) <= ((void*)0 == l_464)) >= l_420));
                        l_412 = (l_416[0] = 0x45CF54DBL);
                    }
                    else
                    { /* block id: 184 */
                        return l_461;
                    }
                    for (l_412 = (-8); (l_412 == (-21)); l_412 = safe_sub_func_uint8_t_u_u(l_412, 2))
                    { /* block id: 189 */
                        uint32_t ***l_470 = &l_468;
                        (*l_470) = l_468;
                        return p_1827->g_25;
                    }
                }
                for (l_411 = 2; (l_411 >= 15); l_411++)
                { /* block id: 196 */
                    int32_t *l_473 = &p_1827->g_301[2][0];
                    int32_t *l_474 = &p_1827->g_301[1][5];
                    int32_t *l_475 = (void*)0;
                    int32_t *l_476 = (void*)0;
                    int32_t *l_477 = &l_418;
                    int32_t *l_478 = &l_415;
                    int32_t *l_479 = &l_413[5];
                    int32_t *l_480 = (void*)0;
                    l_481++;
                }
            }
            else
            { /* block id: 199 */
                uint8_t l_490 = 0xF3L;
                (*p_1827->g_300) = ((safe_div_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u(l_481, (0x6AL && (l_490 >= (((p_1827->g_67 != ((safe_rshift_func_int16_t_s_u(l_417, l_413[4])) , (l_386[0] && (((void*)0 == l_493) > 0x7AL)))) , (*p_1827->g_370)) & l_413[2]))))), l_422[0])), 0x1D0EB130L)) >= l_413[2]);
            }
        }
        if ((GROUP_DIVERGE(1, 1) | 0x4FF6407BL))
        { /* block id: 203 */
            int16_t l_511 = 0x599EL;
            int32_t l_614 = 3L;
            int8_t *l_636 = (void*)0;
            int64_t l_640[9][4] = {{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L},{0x5BF3CC12138187F7L,0x1F9EAA710321A37AL,0x5BF3CC12138187F7L,0x5BF3CC12138187F7L}};
            int64_t *l_641 = &l_358;
            uint32_t **l_642 = (void*)0;
            uint32_t ***l_643 = &l_642;
            uint32_t ***l_644 = &l_468;
            uint16_t *l_665 = &l_422[2];
            uint16_t *l_728[8] = {&l_572,&l_572,&l_572,&l_572,&l_572,&l_572,&l_572,&l_572};
            int32_t *l_748 = &p_1827->g_301[1][4];
            int i, j;
            for (l_481 = 0; (l_481 <= 3); l_481 += 1)
            { /* block id: 206 */
                int8_t **l_504 = (void*)0;
                uint32_t ****l_514 = &p_1827->g_512[1][4];
                int32_t l_515 = 9L;
                uint64_t l_545 = 1UL;
                uint32_t l_549[9];
                int64_t *l_580[1][10][5] = {{{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]},{&p_1827->g_242,&p_1827->g_242,&p_1827->g_399[8][0],&p_1827->g_399[5][0],&p_1827->g_399[8][0]}}};
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_549[i] = 0x9B9131E7L;
                if (p_1827->g_301[l_481][(l_481 + 2)])
                    break;
                if ((l_515 &= (0x5EF046F770A81F96L & ((+(safe_add_func_int16_t_s_s(((((*p_1827->g_370) = (safe_rshift_func_uint16_t_u_s(((((void*)0 != l_498) != (safe_lshift_func_int8_t_s_s(p_1827->g_133[(l_481 + 1)], 1))) ^ (((*l_514) = ((((safe_rshift_func_int16_t_s_u(((((*l_498) = &p_1827->g_375[2][2][3]) == (void*)0) , (l_503 != l_504)), 4)) == (safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(0x2AF8L, (*p_1827->g_370))), 5)), l_511))) , p_1827->g_301[l_481][(l_481 + 2)]) , p_1827->g_512[1][5])) != &p_1827->g_513[7])), p_1827->g_301[l_481][(l_481 + 2)]))) < l_416[0]) , 5L), GROUP_DIVERGE(0, 1)))) <= l_511))))
                { /* block id: 212 */
                    uint32_t l_518 = 0x5C484B9CL;
                    uint32_t ***l_528 = &p_1827->g_513[7];
                    int32_t *l_551 = &l_420;
                    uint64_t *l_571 = &p_1827->g_177;
                    int32_t **l_575 = &l_551;
                    int64_t **l_581 = (void*)0;
                    int64_t **l_582 = &l_580[0][7][3];
                    int16_t *l_589 = &p_1827->g_550;
                    int32_t *l_608 = &p_1827->g_70;
                    uint64_t *l_609[4] = {&p_1827->g_253,&p_1827->g_253,&p_1827->g_253,&p_1827->g_253};
                    int i;
                    for (l_511 = 0; (l_511 == (-28)); --l_511)
                    { /* block id: 215 */
                        uint32_t l_519[10][6] = {{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL},{0xEA05AB9BL,0x457B562DL,0xEA05AB9BL,0xEA05AB9BL,0x457B562DL,0xEA05AB9BL}};
                        uint32_t *l_533 = &p_1827->g_134[5][8][1];
                        uint32_t *l_539 = &l_518;
                        uint32_t **l_538 = &l_539;
                        uint64_t *l_542 = &p_1827->g_253;
                        uint8_t *l_546 = (void*)0;
                        uint8_t *l_547 = &p_1827->g_198[1][0][2];
                        int64_t l_548 = 0x04B668FCCD23C4DAL;
                        int16_t *l_570 = &p_1827->g_233;
                        int i, j;
                        l_519[7][3] = l_518;
                        if (l_519[7][3])
                            continue;
                        (*p_1827->g_552) = &l_416[0];
                        (*p_1827->g_335) = ((*p_1827->g_370) > ((safe_add_func_int64_t_s_s(((0xA0AC1C53L == (-10L)) , (((~(((safe_mul_func_int16_t_s_s(((*l_570) = ((l_559 != (void*)0) >= (safe_rshift_func_uint8_t_u_u(((((-2L) == (l_420 = ((GROUP_DIVERGE(0, 1) != 1L) != ((safe_rshift_func_uint16_t_u_u((((l_565 == p_1827->g_567) ^ 0x25E8C0D7L) < p_1827->g_569), 8)) <= (*l_551))))) != l_549[8]) , 0UL), 2)))), l_548)) , &p_1827->g_177) == l_571)) | l_572) >= l_358)), p_1827->g_134[4][5][1])) | l_511));
                    }
                    (*l_575) = p_76;
                    if (((((p_1827->g_253 |= ((safe_rshift_func_int16_t_s_s((p_1827->g_301[l_481][(l_481 + 2)] = (l_417 &= (!((GROUP_DIVERGE(0, 1) < ((safe_lshift_func_uint16_t_u_s((l_422[2] != (&p_1827->g_214 != ((*l_582) = l_580[0][7][3]))), 1)) > (safe_rshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s(((+l_414) == ((*l_608) |= (safe_rshift_func_int8_t_s_u(((~(((*l_589) |= p_1827->g_301[1][4]) & (l_511 >= ((0x9FL && (((--(*l_571)) > ((l_416[0] &= ((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 3)), (((safe_lshift_func_int16_t_s_u((((*p_1827->g_370)++) && ((*p_1827->g_370) = (((safe_mod_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((+(((safe_add_func_uint16_t_u_u((l_511 <= ((safe_add_func_int16_t_s_s(0x723AL, l_420)) , l_511)), l_386[4])) | 0x69L) || l_511)), 0L)), (-1L))) >= 0x79A9L) ^ FAKE_DIVERGE(p_1827->global_0_offset, get_global_id(0), 10)))), l_420)) , 0x4A1AL) , l_511))) , 0UL)) == p_1827->g_399[5][0])) != l_511)) ^ l_511)))) <= 0x0090C15F997C612BL), l_422[0])))), l_358)), 2)))) | 0L)))), p_1827->g_198[2][3][1])) <= 0L)) < FAKE_DIVERGE(p_1827->global_1_offset, get_global_id(1), 10)) & 0x8E2F843E862CA3F5L) , (*p_1827->g_300)))
                    { /* block id: 242 */
                        int32_t **l_615 = &p_1827->g_335;
                        (*l_615) = ((*l_575) = &l_416[0]);
                        (*l_615) = p_76;
                        (*l_575) = (*p_1827->g_552);
                    }
                    else
                    { /* block id: 248 */
                        uint64_t l_616 = 0x1234073C7A16D360L;
                        uint8_t *l_625 = (void*)0;
                        uint8_t *l_626 = &p_1827->g_198[1][0][2];
                        int32_t ***l_627[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_627[i] = (void*)0;
                        if (l_616)
                            break;
                        l_628[1][1][0] = (((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((*p_1827->g_370), ((-10L) < l_511))) , (safe_unary_minus_func_uint16_t_u(((void*)0 == l_622)))), ((void*)0 == (**l_514)))) && (safe_mul_func_uint8_t_u_u(246UL, ((*l_626) = 0x9BL)))) , &l_551);
                        if (l_629[1])
                            continue;
                    }
                }
                else
                { /* block id: 254 */
                    int8_t *l_635 = &p_1827->g_64[3];
                    int32_t l_637 = (-1L);
                    uint16_t **l_639 = &p_1827->g_370;
                    for (l_572 = 0; (l_572 <= 2); l_572 += 1)
                    { /* block id: 257 */
                        uint32_t ***l_630 = &l_559;
                        uint32_t ****l_634 = (void*)0;
                        int i;
                        (*l_622) |= (((l_422[l_572] && l_422[l_572]) > (((*l_630) = (void*)0) == (void*)0)) && (safe_rshift_func_int16_t_s_u((((safe_unary_minus_func_uint64_t_u((((((p_1827->g_399[2][0] = p_1827->g_242) >= (l_634 == l_514)) ^ ((((l_635 != ((*l_565) = l_636)) != 0L) ^ l_637) < l_422[l_572])) <= 0UL) <= l_637))) > l_638[2][6][3]) == 1UL), l_511)));
                        if (l_549[8])
                            break;
                        if (l_414)
                            goto lbl_404;
                        (*l_622) = (l_422[l_572] , ((-4L) != (l_636 == l_635)));
                    }
                    if (p_1827->g_133[(l_481 + 1)])
                        break;
                    l_640[3][0] = (p_1827->g_132 >= (((*l_639) = &p_1827->g_55) == (void*)0));
                }
                l_614 = (*l_622);
                for (p_1827->g_67 = 1; (p_1827->g_67 >= 0); p_1827->g_67 -= 1)
                { /* block id: 273 */
                    int i;
                    (*l_622) = l_629[p_1827->g_67];
                }
            }
            if ((((*l_643) = ((1L > ((*l_641) = (-1L))) , l_642)) == ((*l_644) = &l_560)))
            { /* block id: 280 */
                uint64_t l_647 = 18446744073709551615UL;
                for (p_1827->g_242 = 7; (p_1827->g_242 == (-29)); p_1827->g_242 = safe_sub_func_uint8_t_u_u(p_1827->g_242, 2))
                { /* block id: 283 */
                    ++l_647;
                }
            }
            else
            { /* block id: 286 */
                uint32_t l_660 = 4294967290UL;
                int32_t *l_666 = &l_420;
                int32_t l_729 = 0L;
                uint32_t ***l_737 = &l_468;
                uint16_t l_752[6][10] = {{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL},{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL},{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL},{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL},{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL},{3UL,0xC025L,0x7D51L,2UL,0x107CL,0x107CL,2UL,0x7D51L,0xC025L,3UL}};
                int8_t *l_768 = &p_1827->g_64[6];
                uint64_t l_771 = 0xEAAEE2AE55B24EE2L;
                uint32_t *l_786 = &p_1827->g_244;
                int16_t *l_787 = &p_1827->g_233;
                int i, j;
                if ((0xAC3FL & (-6L)))
                { /* block id: 287 */
                    int16_t *l_658 = &p_1827->g_550;
                    int32_t l_659 = 0x6B5031D2L;
                    int8_t *l_661 = &p_1827->g_64[7];
                    uint64_t *l_662 = &p_1827->g_177;
                    uint64_t *l_671 = &l_629[1];
                    (*p_1827->g_300) = (safe_mod_func_int16_t_s_s(l_511, (safe_add_func_int32_t_s_s(((((((((safe_rshift_func_uint16_t_u_u(((((l_614 >= ((((safe_mul_func_int16_t_s_s(((((l_658 != &l_511) || p_1827->g_550) != ((&l_511 != l_362) && (l_511 > (l_511 != 0xD7L)))) == l_659), (*p_1827->g_370))) , &p_1827->g_573) == (void*)0) , p_1827->g_198[3][5][0])) == 0x3CAA8820L) == 4294967293UL) || 0x0BL), (*l_622))) < 0x3A41L) , l_659) , l_640[3][0]) | l_660) <= l_659) > l_614) & l_659), (*p_1827->g_167)))));
                    l_622 = l_666;
                    (*l_622) = (safe_lshift_func_uint8_t_u_s((0x93AE576F374F6681L | ((safe_mod_func_uint64_t_u_u((p_1827->g_672 = ((*l_671) |= (p_1827->g_253 ^= ((*l_662) = (*l_622))))), (safe_add_func_uint64_t_u_u((safe_div_func_int8_t_s_s(((safe_lshift_func_int8_t_s_s(1L, (safe_sub_func_int32_t_s_s(((safe_mod_func_uint8_t_u_u(l_614, ((*p_1827->g_370) ^ ((*l_658) ^= 0x12CFL)))) || (*p_1827->g_300)), ((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(((*l_622) | 0x40BEFDB9L), 15)), l_640[1][2])), p_1827->g_233)) || 0x01F432DFL), l_693)), l_640[3][0])) == l_640[1][3]))))) , 1L), (*l_666))), l_511)))) != 0x10L)), p_1827->g_399[6][0]));
                    if (l_659)
                        break;
                }
                else
                { /* block id: 300 */
                    for (p_1827->g_672 = (-4); (p_1827->g_672 > (-18)); p_1827->g_672--)
                    { /* block id: 303 */
                        uint8_t l_696 = 0x73L;
                        int32_t l_699[5][1][9] = {{{0L,(-1L),2L,(-1L),(-10L),(-10L),(-1L),2L,(-1L)}},{{0L,(-1L),2L,(-1L),(-10L),(-10L),(-1L),2L,(-1L)}},{{0L,(-1L),2L,(-1L),(-10L),(-10L),(-1L),2L,(-1L)}},{{0L,(-1L),2L,(-1L),(-10L),(-10L),(-1L),2L,(-1L)}},{{0L,(-1L),2L,(-1L),(-10L),(-10L),(-1L),2L,(-1L)}}};
                        int i, j, k;
                        --l_696;
                        ++p_1827->g_700;
                        if (l_703[2])
                            break;
                    }
                }
                if ((*l_666))
                { /* block id: 309 */
                    uint16_t l_722 = 0xB5EDL;
                    int64_t l_726[5];
                    int32_t l_730[4];
                    int32_t *l_735 = &l_730[0];
                    uint32_t ***l_759 = (void*)0;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_726[i] = 0x6D1EC55BA65CF053L;
                    for (i = 0; i < 4; i++)
                        l_730[i] = (-1L);
                    for (p_1827->g_177 = 0; (p_1827->g_177 != 37); ++p_1827->g_177)
                    { /* block id: 312 */
                        int8_t l_715 = 0x7CL;
                        int8_t *l_725 = &p_1827->g_64[7];
                        int32_t *l_727[10] = {(void*)0,&p_1827->g_672,(void*)0,(void*)0,&p_1827->g_672,(void*)0,(void*)0,&p_1827->g_672,(void*)0,(void*)0};
                        int i;
                        p_76 = p_76;
                    }
                    for (p_1827->g_244 = 0; (p_1827->g_244 <= 6); p_1827->g_244 += 1)
                    { /* block id: 319 */
                        uint16_t l_731[9] = {65532UL,65532UL,65532UL,65532UL,65532UL,65532UL,65532UL,65532UL,65532UL};
                        int64_t *l_736 = &l_726[2];
                        int16_t *l_746 = &l_511;
                        int32_t l_747 = 8L;
                        int32_t *l_749 = (void*)0;
                        int i;
                        --l_731[7];
                        l_735 = l_734[1][6];
                        l_747 ^= (p_1827->g_301[2][4] |= ((((*l_666) <= (((((((void*)0 != l_736) || ((((&l_468 == l_737) | (0x687285DEL | (FAKE_DIVERGE(p_1827->group_2_offset, get_group_id(2), 10) , (*l_622)))) <= (((safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((((safe_mul_func_int8_t_s_s((-1L), (((*l_746) |= (safe_div_func_int32_t_s_s((*p_1827->g_69), 0x91F600D6L))) | (*p_1827->g_370)))) > (-1L)) != 1UL), l_731[7])), l_614)) != 255UL) , (-1L))) < (-6L))) < (*l_622)) >= 5UL) < l_731[7]) < 0x76BD9B269727EC06L)) != 0x47L) && p_1827->g_550));
                        l_749 = l_748;
                    }
                    l_748 = p_76;
                }
                else
                { /* block id: 329 */
                    int8_t l_763 = 6L;
                    (*l_666) = ((*l_748) ^ (*l_666));
                    (*l_748) = l_763;
                }
                l_729 &= (safe_rshift_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((((*l_622) ^ 6UL) < (((l_636 != l_768) <= (safe_add_func_int32_t_s_s(l_771, (safe_div_func_int32_t_s_s(((+((safe_sub_func_uint64_t_u_u(((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((((*l_787) &= (((*l_786) = ((safe_lshift_func_int8_t_s_s(((*l_666) & (safe_add_func_uint8_t_u_u((0x26A9EDC5EB9D8459L | (((void*)0 == l_362) > (*l_622))), (*p_1827->g_568)))), p_1827->g_550)) && p_1827->g_245)) , 0x7B95L)) | 0x4731L), (*p_1827->g_370))), (*l_666))) ^ (-1L)), 1L)) , 4UL)) != 0x32793B14CD167D4AL), GROUP_DIVERGE(2, 1)))))) & p_1827->g_6)), (*l_666))) , p_1827->g_70) <= (*l_666)), 6));
            }
        }
        else
        { /* block id: 337 */
            int16_t *l_789 = &p_1827->g_550;
            int32_t l_792 = 0L;
            uint64_t *l_800 = &p_1827->g_253;
            int32_t l_802 = 0x22B462C4L;
            uint16_t *l_803 = (void*)0;
            uint16_t *l_804 = &l_422[0];
            uint16_t l_935 = 65533UL;
            int32_t l_936 = 0x2B7FDDABL;
            p_76 = p_76;
            for (p_1827->g_55 = 0; (p_1827->g_55 <= 6); p_1827->g_55 += 1)
            { /* block id: 341 */
                int32_t *l_788 = &p_1827->g_301[3][0];
                int i;
                if (p_1827->g_64[p_1827->g_55])
                    break;
                l_734[2][0] = (l_788 = (p_76 = l_788));
            }
            if ((((((*p_1827->g_300) <= (*l_622)) , (((((*l_789) = 0x46D2L) | ((*l_804) = (((l_802 &= (safe_div_func_uint8_t_u_u((*l_622), ((l_792 , (((((((((*p_1827->g_370)--) || l_792) || (((*l_800) ^= (((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((*p_1827->g_370) ^ ((((void*)0 == &l_566) < 0x2CABL) >= (*l_622))) || p_1827->g_55), l_799[3])), 1L)) & 252UL) > (*p_1827->g_370))) ^ 9UL)) || l_792) , 0x5B7E9D60L) , p_1827->g_134[4][5][1]) , (void*)0) != (void*)0)) & l_801)))) >= (*l_622)) <= (*l_622)))) == 0x4E4EL) , (*p_1827->g_370))) > p_1827->g_67) & p_1827->g_233))
            { /* block id: 352 */
                int64_t l_816[5][7] = {{(-5L),(-8L),1L,0x3C9AB408826D1854L,1L,(-8L),(-5L)},{(-5L),(-8L),1L,0x3C9AB408826D1854L,1L,(-8L),(-5L)},{(-5L),(-8L),1L,0x3C9AB408826D1854L,1L,(-8L),(-5L)},{(-5L),(-8L),1L,0x3C9AB408826D1854L,1L,(-8L),(-5L)},{(-5L),(-8L),1L,0x3C9AB408826D1854L,1L,(-8L),(-5L)}};
                int32_t *l_821 = &p_1827->g_301[3][1];
                int32_t *l_825[3];
                int16_t *l_837[4][8] = {{&p_1827->g_233,&p_1827->g_233,&p_1827->g_550,(void*)0,&p_1827->g_233,&p_1827->g_233,(void*)0,(void*)0},{&p_1827->g_233,&p_1827->g_233,&p_1827->g_550,(void*)0,&p_1827->g_233,&p_1827->g_233,(void*)0,(void*)0},{&p_1827->g_233,&p_1827->g_233,&p_1827->g_550,(void*)0,&p_1827->g_233,&p_1827->g_233,(void*)0,(void*)0},{&p_1827->g_233,&p_1827->g_233,&p_1827->g_550,(void*)0,&p_1827->g_233,&p_1827->g_233,(void*)0,(void*)0}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_825[i] = &l_416[0];
                (*l_622) = (*p_1827->g_69);
                for (p_1827->g_446 = (-26); (p_1827->g_446 <= 16); p_1827->g_446 = safe_add_func_uint8_t_u_u(p_1827->g_446, 3))
                { /* block id: 356 */
                    uint8_t l_811 = 0x6BL;
                    int32_t l_817 = (-1L);
                    int32_t l_820 = 0x48977D53L;
                    l_820 = (safe_add_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((~6UL), ((*l_362) = l_811))), (((*l_622) = (safe_rshift_func_uint8_t_u_s(4UL, (((safe_sub_func_uint16_t_u_u(((*l_804) = ((+(l_817 = (p_1827->g_672 || l_816[1][1]))) , (((((safe_sub_func_int64_t_s_s(l_817, ((p_1827->g_67 , (*p_1827->g_567)) == ((*l_565) = &p_1827->g_62)))) , 0x884FL) && l_811) , (void*)0) == &p_1827->g_6))), 0L)) && 0xD3E5DFF5L) >= FAKE_DIVERGE(p_1827->global_1_offset, get_global_id(1), 10))))) || 0x98AC7AA7L)));
                }
                if (l_816[3][3])
                { /* block id: 364 */
                    l_821 = p_76;
                }
                else
                { /* block id: 366 */
                    uint8_t l_832 = 0UL;
                    int32_t l_847 = (-10L);
                    int32_t l_848 = 1L;
                    int32_t l_849[1][9][6] = {{{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)},{(-1L),0x101741B2L,1L,0x101741B2L,(-1L),(-1L)}}};
                    int64_t *l_855 = (void*)0;
                    int i, j, k;
                    for (l_417 = 0; (l_417 <= (-16)); l_417 = safe_sub_func_int64_t_s_s(l_417, 3))
                    { /* block id: 369 */
                        uint8_t *l_833 = &p_1827->g_198[1][0][2];
                        int64_t *l_836 = &p_1827->g_399[4][0];
                        uint8_t *l_842 = &l_799[1];
                        uint16_t *l_843 = &l_572;
                        int32_t *l_844 = &l_802;
                        l_825[0] = (l_824 = (l_821 = p_76));
                        l_844 = p_76;
                        return l_832;
                    }
                    for (p_1827->g_55 = (-19); (p_1827->g_55 != 27); p_1827->g_55 = safe_add_func_uint32_t_u_u(p_1827->g_55, 6))
                    { /* block id: 381 */
                        uint32_t l_850 = 0x72038600L;
                        --l_850;
                        (*l_821) = (safe_sub_func_int16_t_s_s((l_855 != &l_816[1][1]), (*p_1827->g_370)));
                    }
                }
            }
            else
            { /* block id: 386 */
                int16_t *l_860 = &p_1827->g_550;
                int32_t l_870 = 0x426A17ACL;
                uint32_t **l_871 = &p_1827->g_375[0][4][3];
                uint32_t ***l_917[1];
                uint32_t l_937 = 4294967286UL;
                int8_t *l_949 = &p_1827->g_25;
                int i;
                for (i = 0; i < 1; i++)
                    l_917[i] = &l_559;
                for (p_1827->g_244 = 10; (p_1827->g_244 < 6); --p_1827->g_244)
                { /* block id: 389 */
                    uint8_t l_867 = 1UL;
                    uint32_t **l_872[8][8][2] = {{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}},{{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]},{&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}}};
                    uint16_t **l_878 = &l_803;
                    int i, j, k;
                    if ((safe_lshift_func_int16_t_s_s((p_1827->g_550 = (l_860 == &p_1827->g_550)), ((safe_rshift_func_int16_t_s_u(((safe_div_func_uint32_t_u_u(((((*l_800) |= (safe_mod_func_uint32_t_u_u((((((l_867 && (safe_lshift_func_uint8_t_u_s(((((*p_1827->g_370) &= 0xC159L) , l_802) ^ l_870), 3))) , l_871) == l_872[3][4][0]) , p_1827->g_301[0][5]) > l_867), l_802))) != p_1827->g_177) , 0x82413FA5L), 0x3EAEAA18L)) , l_867), l_867)) && (*p_1827->g_370)))))
                    { /* block id: 393 */
                        int32_t *l_873 = &l_693;
                        p_76 = ((1L == l_870) , l_873);
                        return p_1827->g_198[5][5][1];
                    }
                    else
                    { /* block id: 396 */
                        uint16_t **l_875 = &p_1827->g_370;
                        uint16_t ***l_874 = &l_875;
                        int32_t l_897 = 1L;
                        uint64_t *l_899 = &l_629[0];
                        int32_t l_900 = 0x1C036B5DL;
                        uint32_t ****l_916 = &p_1827->g_913;
                        (*l_874) = (void*)0;
                        (*l_622) = ((!(safe_div_func_uint8_t_u_u((((l_878 = &l_362) == ((*l_874) = ((safe_sub_func_uint64_t_u_u(((*l_899) = (((safe_add_func_int16_t_s_s(((*l_789) = p_1827->g_64[3]), ((safe_sub_func_uint32_t_u_u(l_802, ((&p_1827->g_167 != &p_1827->g_166[3]) == p_1827->g_64[1]))) != (((safe_mul_func_uint8_t_u_u(1UL, (safe_mod_func_int16_t_s_s((((*l_622) <= (l_897 = (((((safe_lshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u(((*l_800) = ((safe_sub_func_int64_t_s_s((safe_add_func_int16_t_s_s((((-1L) > 1UL) == l_870), l_897)), p_1827->g_132)) > (-9L))), 0x12E0EFB879229CA2L)), p_1827->g_67)) > l_898[5]) | l_897) , (void*)0) == &l_572))) >= l_867), l_867)))) != 0xC0L) < p_1827->g_301[2][1])))) , 0xA7L) , p_1827->g_133[1])), 18446744073709551613UL)) , (void*)0))) || (*l_622)), l_900))) == (*p_1827->g_370));
                        l_936 ^= (((safe_sub_func_int32_t_s_s((((((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s((FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10) ^ (safe_rshift_func_int16_t_s_s((-10L), (((*l_916) = ((safe_sub_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(1L, l_792)), 1L)) , p_1827->g_913)) != l_917[0])))), (safe_div_func_uint8_t_u_u(p_1827->g_550, (safe_div_func_uint64_t_u_u((p_1827->g_700 = ((l_897 | (safe_add_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((safe_unary_minus_func_uint64_t_u((((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((FAKE_DIVERGE(p_1827->global_1_offset, get_global_id(1), 10) >= (l_870 == 0UL)) ^ (*p_1827->g_69)) && (*p_1827->g_370)), 0xD0F84333555EC297L)), 0x5DL)), (*l_824))) < p_1827->g_64[3]) , l_935))) , 0UL) || l_935), 0x4449L)), (-1L))), l_867))) , FAKE_DIVERGE(p_1827->local_0_offset, get_local_id(0), 10))), l_802)))))), p_1827->g_134[2][4][0])) <= l_867) , (void*)0) != &l_422[2]) != 5UL), p_1827->g_242)) > l_867) > l_867);
                        l_937--;
                    }
                    (*l_622) = (((safe_mul_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(0x05L, 1)), ((safe_div_func_uint16_t_u_u((((((p_76 != (l_734[1][6] = p_76)) & 0x69L) >= 0x0A695007L) & 0x22L) > (l_935 != (&l_878 != (void*)0))), p_1827->g_399[2][0])) >= l_867))) < l_867) , l_867);
                }
                if (((void*)0 == l_946))
                { /* block id: 413 */
                    uint16_t **l_947 = (void*)0;
                    uint16_t **l_948 = &p_1827->g_370;
                    int32_t l_950 = 0x2A4ECB0AL;
                    (*p_1827->g_365) = p_76;
                    return l_950;
                }
                else
                { /* block id: 417 */
                    return p_1827->g_133[5];
                }
            }
        }
    }
    return p_1827->g_67;
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_70 p_1827->g_244 p_1827->g_8 p_1827->g_133 p_1827->g_99 p_1827->g_67 p_1827->g_25 p_1827->g_198 p_1827->g_6 p_1827->g_253 p_1827->g_233 p_1827->g_300 p_1827->g_230 p_1827->g_214 p_1827->g_134 p_1827->g_64 p_1827->g_301 p_1827->g_335
 * writes: p_1827->g_70 p_1827->g_244 p_1827->g_277 p_1827->g_67 p_1827->g_198 p_1827->g_301 p_1827->g_62
 */
int32_t * func_77(int8_t  p_78, int8_t  p_79, uint16_t * p_80, int8_t * p_81, uint16_t * p_82, struct S0 * p_1827)
{ /* block id: 93 */
    int32_t l_275 = 0x5A84B2CCL;
    uint8_t l_295 = 250UL;
    int32_t l_322 = 0x08B18FD8L;
    int32_t l_325[9] = {0x3A752138L,0x306CAAE0L,0x3A752138L,0x3A752138L,0x306CAAE0L,0x3A752138L,0x3A752138L,0x306CAAE0L,0x3A752138L};
    int32_t *l_337[1];
    int64_t l_338 = 0x7B0A0D7B086B05DCL;
    int32_t l_339 = 0L;
    uint16_t l_340 = 0xADAEL;
    int i;
    for (i = 0; i < 1; i++)
        l_337[i] = &l_325[8];
    for (p_1827->g_70 = (-3); (p_1827->g_70 > (-8)); p_1827->g_70 = safe_sub_func_int8_t_s_s(p_1827->g_70, 8))
    { /* block id: 96 */
        int32_t *l_257 = &p_1827->g_8[7];
        int32_t **l_258 = &l_257;
        int64_t *l_297[2];
        int32_t l_327 = 0x6A34858AL;
        int32_t l_328 = (-1L);
        int32_t l_329 = 1L;
        int i;
        for (i = 0; i < 2; i++)
            l_297[i] = &p_1827->g_242;
        if (p_78)
            break;
        (*l_258) = l_257;
        for (p_1827->g_244 = 0; (p_1827->g_244 > 23); p_1827->g_244++)
        { /* block id: 101 */
            uint32_t *l_276 = &p_1827->g_277[1][1];
            int32_t *l_294 = &p_1827->g_67;
            uint8_t *l_296[3];
            int32_t *l_298 = (void*)0;
            int32_t *l_299 = (void*)0;
            int32_t l_326[7];
            int i;
            for (i = 0; i < 3; i++)
                l_296[i] = (void*)0;
            for (i = 0; i < 7; i++)
                l_326[i] = 0x04EC217BL;
            (*p_1827->g_300) = ((~((((safe_div_func_uint64_t_u_u((safe_div_func_uint16_t_u_u((**l_258), ((safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s(((0x69399026L >= (+((safe_lshift_func_int16_t_s_u(((safe_mod_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((&p_81 != (((*l_276) = l_275) , (void*)0)), ((safe_div_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((p_1827->g_198[0][9][0] |= ((safe_mod_func_uint32_t_u_u((safe_div_func_int64_t_s_s(((((safe_div_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s(((((((((*l_294) ^= ((((safe_mul_func_int16_t_s_s((((safe_add_func_int64_t_s_s(p_1827->g_133[4], 1UL)) | (0L >= 0x4C05FA39L)) || (**l_258)), 0x66E3L)) || 0x34CB3E640FDC778BL) == p_1827->g_99) < p_1827->g_70)) > 4294967295UL) , &p_1827->g_133[5]) != p_80) <= (-1L)) != 0x32DB2D0BL) , (-10L)), 0x13895B77L)) <= p_79) ^ l_295) || p_78), p_78)) , p_1827->g_25) <= p_1827->g_8[5]) & l_295), (*l_257))), 0x5385C189L)) < p_79)) , l_297[0]) == (void*)0), 0x781BL)), FAKE_DIVERGE(p_1827->global_2_offset, get_global_id(2), 10))) != (*p_82)))), p_78)) < l_275), (*p_80))) >= p_1827->g_253))) != 0xC5472C08L), 0x1FL)), (-1L))) | 1UL))), p_1827->g_233)) == p_79) != p_79) > p_79)) | p_78);
            if ((((*l_294) = (safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((+(((safe_rshift_func_int8_t_s_s((((*p_81) = p_1827->g_230) & ((~((safe_sub_func_uint32_t_u_u((((safe_add_func_int32_t_s_s(((+((safe_unary_minus_func_uint64_t_u((+p_1827->g_214))) > (p_1827->g_134[4][5][1] != (safe_unary_minus_func_uint64_t_u(GROUP_DIVERGE(1, 1)))))) >= 0x570FL), p_78)) != ((safe_mod_func_uint64_t_u_u((safe_add_func_int64_t_s_s(0x1891311902675DDCL, p_1827->g_64[8])), (safe_lshift_func_int8_t_s_s(p_1827->g_301[0][6], 4)))) | 0x23CF24CAD0B55079L)) == 0x622C585B56D45380L), l_295)) || 0x56L)) > p_1827->g_301[1][4])), p_79)) >= 0xCAL) & FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10))) < (**l_258)), p_78)), p_1827->g_233))) >= 0x1BCBEBB1L))
            { /* block id: 108 */
                int32_t *l_320 = (void*)0;
                int32_t *l_321 = (void*)0;
                int32_t *l_323 = (void*)0;
                int32_t *l_324[6][5][8] = {{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}},{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}},{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}},{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}},{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}},{{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0},{&p_1827->g_301[1][4],(void*)0,&p_1827->g_301[0][5],&p_1827->g_301[0][3],(void*)0,&p_1827->g_67,&p_1827->g_67,(void*)0}}};
                uint32_t l_330 = 0x5D8AD277L;
                int i, j, k;
                l_330++;
                for (p_78 = (-25); (p_78 < 26); ++p_78)
                { /* block id: 112 */
                    return p_1827->g_335;
                }
                return l_321;
            }
            else
            { /* block id: 116 */
                int32_t *l_336 = &p_1827->g_8[2];
                (*l_258) = l_336;
                return &p_1827->g_8[0];
            }
        }
        return &p_1827->g_8[8];
    }
    ++l_340;
    return &p_1827->g_301[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_99 p_1827->g_55 p_1827->g_64 p_1827->g_134 p_1827->g_23 p_1827->g_70 p_1827->g_67 p_1827->g_8 p_1827->g_6 p_1827->g_69 p_1827->g_167 p_1827->g_62 p_1827->g_132 p_1827->g_196 p_1827->g_198 p_1827->g_177 p_1827->g_25 p_1827->g_233 p_1827->g_245
 * writes: p_1827->g_67 p_1827->g_99 p_1827->g_55 p_1827->g_62 p_1827->g_64 p_1827->g_134 p_1827->g_70 p_1827->g_177 p_1827->g_230 p_1827->g_233 p_1827->g_242 p_1827->g_244 p_1827->g_245
 */
uint16_t  func_83(uint16_t * p_84, struct S0 * p_1827)
{ /* block id: 38 */
    int32_t *l_87 = &p_1827->g_67;
    int32_t *l_88 = &p_1827->g_70;
    int32_t *l_89 = &p_1827->g_70;
    int32_t *l_90 = &p_1827->g_67;
    int32_t *l_91 = &p_1827->g_70;
    int32_t *l_92 = (void*)0;
    int32_t *l_93 = &p_1827->g_67;
    int32_t *l_94 = &p_1827->g_67;
    int32_t *l_95 = &p_1827->g_70;
    int32_t *l_96 = &p_1827->g_70;
    int32_t *l_97 = (void*)0;
    int32_t *l_98[1];
    uint16_t *l_129 = &p_1827->g_55;
    uint32_t *l_184 = &p_1827->g_134[1][7][1];
    uint8_t *l_197 = &p_1827->g_198[1][0][2];
    int8_t *l_238 = &p_1827->g_62;
    int64_t *l_241 = &p_1827->g_242;
    int64_t *l_243 = (void*)0;
    uint32_t l_246 = 0x2D52900FL;
    int i;
    for (i = 0; i < 1; i++)
        l_98[i] = &p_1827->g_67;
    (*l_87) = 0L;
    --p_1827->g_99;
    for (p_1827->g_55 = 0; (p_1827->g_55 >= 39); ++p_1827->g_55)
    { /* block id: 43 */
        int32_t l_124 = (-1L);
        uint32_t *l_182 = &p_1827->g_134[4][5][1];
        int32_t l_212 = 1L;
        uint32_t l_217 = 0x4480FA8BL;
        uint32_t **l_229[8][8][4];
        uint32_t ***l_228 = &l_229[5][6][0];
        uint16_t *l_231 = &p_1827->g_6;
        int16_t *l_232 = &p_1827->g_233;
        int i, j, k;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 4; k++)
                    l_229[i][j][k] = &l_184;
            }
        }
        for (p_1827->g_62 = (-7); (p_1827->g_62 <= 6); ++p_1827->g_62)
        { /* block id: 46 */
            int16_t l_120 = 0x6208L;
            int8_t *l_130 = &p_1827->g_64[5];
            int32_t l_168 = 3L;
            int32_t l_191 = 0x7DF757B9L;
            int8_t l_213 = (-2L);
            int32_t l_215 = 5L;
            int32_t l_216 = 0L;
            l_168 = func_106((safe_mul_func_int8_t_s_s(0x7BL, ((safe_div_func_uint64_t_u_u((safe_add_func_int8_t_s_s(p_1827->g_64[3], 0x0DL)), p_1827->g_55)) , (safe_sub_func_int16_t_s_s(((~((safe_mul_func_uint8_t_u_u(250UL, ((l_120 && func_121(((*l_130) ^= (0x3999L != (l_124 || (safe_sub_func_int32_t_s_s((safe_add_func_uint32_t_u_u(((p_84 = &p_1827->g_6) != l_129), 0x728A6F30L)), l_120))))), &p_1827->g_6, p_1827)) != l_124))) > p_1827->g_23)) >= 0x165BL), p_1827->g_70))))), (*l_96), (*l_90), p_1827);
            for (p_1827->g_99 = (-12); (p_1827->g_99 <= 46); p_1827->g_99++)
            { /* block id: 60 */
                uint8_t l_178 = 0x0DL;
                uint32_t **l_183 = &l_182;
                uint8_t *l_189 = &l_178;
                int32_t l_190[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_190[i] = 0x0C125104L;
                l_191 ^= ((safe_mod_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(((0x378FL && (((safe_mul_func_uint16_t_u_u((p_1827->g_177 = FAKE_DIVERGE(p_1827->global_0_offset, get_global_id(0), 10)), l_178)) > 4294967295UL) , (safe_unary_minus_func_int32_t_s(((*l_93) = (l_124 & (safe_rshift_func_int8_t_s_u((((((((*l_189) ^= (((((*l_183) = l_182) != (l_184 = &p_1827->g_134[4][5][1])) >= l_124) , (((safe_rshift_func_int16_t_s_u(0x34C8L, (safe_div_func_uint16_t_u_u(p_1827->g_62, p_1827->g_64[3])))) != 1UL) ^ 65535UL))) , 4294967293UL) , &p_1827->g_134[4][5][1]) == l_88) == l_168) & l_190[0]), 4)))))))) == GROUP_DIVERGE(1, 1)), p_1827->g_132)) != l_124), 0xC0FFB38DL)) , l_124);
                (*l_87) = (*p_1827->g_69);
            }
            l_124 = (safe_rshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((p_1827->g_196 != l_197), 3)), ((((((*l_89) = (safe_unary_minus_func_int8_t_s((l_124 , ((*l_130) = (l_191 ^ ((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(p_1827->g_198[2][1][1], (safe_div_func_uint8_t_u_u((((safe_add_func_int32_t_s_s(l_124, (((*l_93) ^= (safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((void*)0 == &p_1827->g_99), ((p_1827->g_99 < l_124) , l_124))), FAKE_DIVERGE(p_1827->local_1_offset, get_local_id(1), 10)))) && l_124))) , (void*)0) != &p_1827->g_198[3][8][2]), p_1827->g_64[7])))), (*p_84))) >= 0x51L))))))) <= p_1827->g_55) , p_1827->g_64[3]) > p_1827->g_6) ^ p_1827->g_177)));
            l_217++;
        }
        l_124 = ((*l_95) = ((*l_93) == 4294967295UL));
        (*l_96) &= 0x09BA9FC3L;
        (*l_87) = (l_212 &= ((+((p_1827->g_25 == ((*l_93) >= ((*l_232) ^= ((((safe_sub_func_int64_t_s_s((safe_div_func_uint16_t_u_u((*p_84), (safe_rshift_func_int8_t_s_u(p_1827->g_134[4][5][1], (safe_rshift_func_int16_t_s_u(((((((((p_1827->g_230 = ((*p_1827->g_167) &= (((*l_228) = (void*)0) != (p_1827->g_23 , &l_182)))) ^ p_1827->g_62) < (((&p_1827->g_55 != l_231) , p_1827->g_177) ^ 0x72F9L)) < (-1L)) || 1UL) != p_1827->g_55) > p_1827->g_23) == l_124), 5)))))), 1UL)) & l_217) && (*l_93)) & (*l_87))))) != p_1827->g_23)) ^ 9UL));
    }
    l_246 |= ((*l_94) = (p_1827->g_245 ^= (((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_1827->group_0_offset, get_group_id(0), 10) | ((((*l_89) , ((!((((((*l_238) = ((*l_96) != p_1827->g_25)) | (safe_mul_func_int16_t_s_s((*l_87), (((+0x71FAL) != ((p_1827->g_244 = ((*l_241) = (*l_93))) || (*l_93))) == ((((void*)0 != l_184) >= p_1827->g_233) != (*l_87)))))) <= (*l_94)) == (*l_95)) == (*l_96))) || (*l_89))) <= 1L) >= (*l_90))), 0x5BL)) != 1UL) > (*p_84))));
    return (*p_84);
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_8 p_1827->g_70 p_1827->g_23 p_1827->g_6 p_1827->g_99 p_1827->g_69 p_1827->g_167
 * writes: p_1827->g_134 p_1827->g_70
 */
int32_t  func_106(uint64_t  p_107, int32_t  p_108, int64_t  p_109, struct S0 * p_1827)
{ /* block id: 52 */
    uint32_t *l_137 = &p_1827->g_134[0][4][1];
    int32_t l_140 = (-1L);
    uint16_t *l_147 = (void*)0;
    int8_t *l_156 = &p_1827->g_64[3];
    int8_t **l_157 = (void*)0;
    int8_t **l_158 = &l_156;
    int8_t *l_159 = &p_1827->g_25;
    (*p_1827->g_167) = (p_108 != (((*l_137) = p_1827->g_8[8]) || (((safe_add_func_uint32_t_u_u(l_140, (safe_div_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_140 <= (l_147 != (((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((((((*l_158) = l_156) != l_159) && p_1827->g_70) , (((safe_div_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((FAKE_DIVERGE(p_1827->global_1_offset, get_global_id(1), 10) == (safe_div_func_int32_t_s_s(0x3C8D22F8L, 8UL))), p_108)), p_109)) ^ 0L) == l_140)) , p_1827->g_23), p_107)), p_1827->g_6)), l_140)), l_140)) , p_1827->g_70) , l_147))), p_109)), p_108)))) ^ p_1827->g_99) , (*p_1827->g_69))));
    return (*p_1827->g_167);
}


/* ------------------------------------------ */
/* 
 * reads : p_1827->g_134
 * writes: p_1827->g_134
 */
int64_t  func_121(int8_t  p_122, uint16_t * p_123, struct S0 * p_1827)
{ /* block id: 49 */
    int32_t *l_131[7] = {&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67};
    int i;
    --p_1827->g_134[4][5][1];
    return p_122;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1828;
    struct S0* p_1827 = &c_1828;
    struct S0 c_1829 = {
        7UL, // p_1827->g_6
        {0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L,0x64E91208L}, // p_1827->g_8
        0L, // p_1827->g_23
        0x76L, // p_1827->g_25
        2UL, // p_1827->g_55
        (-1L), // p_1827->g_62
        {0x1BL,0x1BL,0x1BL,0x1BL,0x1BL,0x1BL,0x1BL,0x1BL,0x1BL,0x1BL}, // p_1827->g_64
        0x66C4949FL, // p_1827->g_67
        (void*)0, // p_1827->g_68
        (-1L), // p_1827->g_70
        &p_1827->g_70, // p_1827->g_69
        0x0EFCL, // p_1827->g_99
        0x783BFB6AL, // p_1827->g_132
        {0x5727L,0x5727L,0x5727L,0x5727L,0x5727L,0x5727L,0x5727L}, // p_1827->g_133
        {{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}},{{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL},{0x801D493DL,0x071A0B9AL}}}, // p_1827->g_134
        {&p_1827->g_67,&p_1827->g_67,&p_1827->g_67,&p_1827->g_67}, // p_1827->g_166
        &p_1827->g_70, // p_1827->g_167
        4UL, // p_1827->g_177
        (void*)0, // p_1827->g_196
        {{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}},{{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL},{0xB1L,0xFCL,2UL}}}, // p_1827->g_198
        0x4165A5B556FB2AC5L, // p_1827->g_214
        0x7BFBAB55B0BACE06L, // p_1827->g_230
        0x76D6L, // p_1827->g_233
        (-1L), // p_1827->g_242
        0xD4BF2FAAL, // p_1827->g_244
        1L, // p_1827->g_245
        0x7F6F1940B1ADA1DAL, // p_1827->g_253
        {{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL}}, // p_1827->g_277
        {{0x37C97616L,3L,(-1L),1L,3L,1L,(-1L)},{0x37C97616L,3L,(-1L),1L,3L,1L,(-1L)},{0x37C97616L,3L,(-1L),1L,3L,1L,(-1L)},{0x37C97616L,3L,(-1L),1L,3L,1L,(-1L)}}, // p_1827->g_301
        &p_1827->g_301[1][4], // p_1827->g_300
        &p_1827->g_8[6], // p_1827->g_335
        {{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335},{&p_1827->g_335}}, // p_1827->g_364
        &p_1827->g_335, // p_1827->g_365
        &p_1827->g_99, // p_1827->g_370
        {{{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]}},{{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]}},{{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]}},{{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]},{&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[4][9][0],&p_1827->g_244,&p_1827->g_244,&p_1827->g_134[2][8][0],&p_1827->g_134[4][5][1],&p_1827->g_134[7][2][1]}}}, // p_1827->g_375
        &p_1827->g_375[2][2][3], // p_1827->g_374
        &p_1827->g_374, // p_1827->g_373
        {{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0},{(void*)0,&p_1827->g_335,&p_1827->g_335,(void*)0}}}, // p_1827->g_387
        &p_1827->g_335, // p_1827->g_388
        {{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L},{0x2D3CB1D23E2E65C6L}}, // p_1827->g_399
        0x4C15E694L, // p_1827->g_446
        {&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3],&p_1827->g_375[2][2][3]}, // p_1827->g_513
        {{&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7]},{&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7]},{&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7]},{&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7]},{&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7],&p_1827->g_513[7]}}, // p_1827->g_512
        0x3D5EL, // p_1827->g_550
        &p_1827->g_335, // p_1827->g_552
        1L, // p_1827->g_569
        &p_1827->g_569, // p_1827->g_568
        &p_1827->g_568, // p_1827->g_567
        (void*)0, // p_1827->g_573
        (void*)0, // p_1827->g_574
        0L, // p_1827->g_672
        1UL, // p_1827->g_700
        0xB4L, // p_1827->g_710
        (void*)0, // p_1827->g_915
        &p_1827->g_915, // p_1827->g_914
        &p_1827->g_914, // p_1827->g_913
        (void*)0, // p_1827->g_982
        {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}},{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}}, // p_1827->g_996
        5L, // p_1827->g_1009
        (void*)0, // p_1827->g_1017
        &p_1827->g_335, // p_1827->g_1024
        &p_1827->g_242, // p_1827->g_1064
        &p_1827->g_1064, // p_1827->g_1063
        &p_1827->g_335, // p_1827->g_1065
        &p_1827->g_62, // p_1827->g_1073
        &p_1827->g_335, // p_1827->g_1078
        {{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}},{{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0},{&p_1827->g_335,&p_1827->g_335,&p_1827->g_335,(void*)0}}}, // p_1827->g_1162
        {0x66FCB326L,0x2AF6C490L,0x66FCB326L,0x66FCB326L,0x2AF6C490L,0x66FCB326L,0x66FCB326L,0x2AF6C490L,0x66FCB326L,0x66FCB326L}, // p_1827->g_1170
        {(-4L),(-4L),(-4L),(-4L)}, // p_1827->g_1195
        0xE54B3AAD820219ADL, // p_1827->g_1214
        &p_1827->g_133[5], // p_1827->g_1325
        {{&p_1827->g_1325},{&p_1827->g_1325},{&p_1827->g_1325}}, // p_1827->g_1324
        &p_1827->g_67, // p_1827->g_1326
        0UL, // p_1827->g_1335
        &p_1827->g_1335, // p_1827->g_1334
        {&p_1827->g_1334,&p_1827->g_1334}, // p_1827->g_1333
        &p_1827->g_1333[1], // p_1827->g_1332
        &p_1827->g_335, // p_1827->g_1406
        0L, // p_1827->g_1457
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1827->g_1460
        {{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}},{{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0},{&p_1827->g_67,&p_1827->g_67,&p_1827->g_301[1][4],&p_1827->g_8[7],(void*)0}}}, // p_1827->g_1461
        (-7L), // p_1827->g_1477
        0UL, // p_1827->g_1634
        &p_1827->g_335, // p_1827->g_1638
        &p_1827->g_335, // p_1827->g_1664
        1UL, // p_1827->g_1682
        &p_1827->g_1682, // p_1827->g_1681
        &p_1827->g_1681, // p_1827->g_1680
        (void*)0, // p_1827->g_1698
        &p_1827->g_1698, // p_1827->g_1697
        &p_1827->g_1697, // p_1827->g_1696
        7L, // p_1827->g_1737
        0x76843B81L, // p_1827->g_1769
        9UL, // p_1827->g_1770
        0x625B9C28L, // p_1827->g_1796
        0x49366E4A24964DA8L, // p_1827->g_1803
        3L, // p_1827->g_1818
        sequence_input[get_global_id(0)], // p_1827->global_0_offset
        sequence_input[get_global_id(1)], // p_1827->global_1_offset
        sequence_input[get_global_id(2)], // p_1827->global_2_offset
        sequence_input[get_local_id(0)], // p_1827->local_0_offset
        sequence_input[get_local_id(1)], // p_1827->local_1_offset
        sequence_input[get_local_id(2)], // p_1827->local_2_offset
        sequence_input[get_group_id(0)], // p_1827->group_0_offset
        sequence_input[get_group_id(1)], // p_1827->group_1_offset
        sequence_input[get_group_id(2)], // p_1827->group_2_offset
    };
    c_1828 = c_1829;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1827);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1827->g_6, "p_1827->g_6", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1827->g_8[i], "p_1827->g_8[i]", print_hash_value);

    }
    transparent_crc(p_1827->g_23, "p_1827->g_23", print_hash_value);
    transparent_crc(p_1827->g_25, "p_1827->g_25", print_hash_value);
    transparent_crc(p_1827->g_55, "p_1827->g_55", print_hash_value);
    transparent_crc(p_1827->g_62, "p_1827->g_62", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1827->g_64[i], "p_1827->g_64[i]", print_hash_value);

    }
    transparent_crc(p_1827->g_67, "p_1827->g_67", print_hash_value);
    transparent_crc(p_1827->g_70, "p_1827->g_70", print_hash_value);
    transparent_crc(p_1827->g_99, "p_1827->g_99", print_hash_value);
    transparent_crc(p_1827->g_132, "p_1827->g_132", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1827->g_133[i], "p_1827->g_133[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1827->g_134[i][j][k], "p_1827->g_134[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1827->g_177, "p_1827->g_177", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1827->g_198[i][j][k], "p_1827->g_198[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1827->g_214, "p_1827->g_214", print_hash_value);
    transparent_crc(p_1827->g_230, "p_1827->g_230", print_hash_value);
    transparent_crc(p_1827->g_233, "p_1827->g_233", print_hash_value);
    transparent_crc(p_1827->g_242, "p_1827->g_242", print_hash_value);
    transparent_crc(p_1827->g_244, "p_1827->g_244", print_hash_value);
    transparent_crc(p_1827->g_245, "p_1827->g_245", print_hash_value);
    transparent_crc(p_1827->g_253, "p_1827->g_253", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1827->g_277[i][j], "p_1827->g_277[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1827->g_301[i][j], "p_1827->g_301[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1827->g_399[i][j], "p_1827->g_399[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1827->g_446, "p_1827->g_446", print_hash_value);
    transparent_crc(p_1827->g_550, "p_1827->g_550", print_hash_value);
    transparent_crc(p_1827->g_569, "p_1827->g_569", print_hash_value);
    transparent_crc(p_1827->g_672, "p_1827->g_672", print_hash_value);
    transparent_crc(p_1827->g_700, "p_1827->g_700", print_hash_value);
    transparent_crc(p_1827->g_710, "p_1827->g_710", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1827->g_996[i][j][k], "p_1827->g_996[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1827->g_1009, "p_1827->g_1009", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1827->g_1170[i], "p_1827->g_1170[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1827->g_1195[i], "p_1827->g_1195[i]", print_hash_value);

    }
    transparent_crc(p_1827->g_1214, "p_1827->g_1214", print_hash_value);
    transparent_crc(p_1827->g_1335, "p_1827->g_1335", print_hash_value);
    transparent_crc(p_1827->g_1457, "p_1827->g_1457", print_hash_value);
    transparent_crc(p_1827->g_1477, "p_1827->g_1477", print_hash_value);
    transparent_crc(p_1827->g_1634, "p_1827->g_1634", print_hash_value);
    transparent_crc(p_1827->g_1682, "p_1827->g_1682", print_hash_value);
    transparent_crc(p_1827->g_1737, "p_1827->g_1737", print_hash_value);
    transparent_crc(p_1827->g_1769, "p_1827->g_1769", print_hash_value);
    transparent_crc(p_1827->g_1770, "p_1827->g_1770", print_hash_value);
    transparent_crc(p_1827->g_1796, "p_1827->g_1796", print_hash_value);
    transparent_crc(p_1827->g_1803, "p_1827->g_1803", print_hash_value);
    transparent_crc(p_1827->g_1818, "p_1827->g_1818", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
