// ---fake_divergence -g 1,7,1 -l 1,1,1
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


// Seed: 47

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t  f0;
   int64_t  f1;
   uint32_t  f2;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
   uint32_t  f2;
};

union U2 {
   uint16_t  f0;
   volatile int16_t  f1;
};

struct S3 {
    volatile int32_t g_3;
    volatile int32_t g_4;
    int32_t g_5;
    int32_t g_10;
    volatile int8_t g_16;
    int64_t g_17;
    int32_t * volatile g_31;
    int32_t g_34;
    int8_t g_41[5];
    union U0 g_61[3];
    uint64_t g_71;
    int32_t ** volatile g_74;
    int32_t *g_76[9][6][2];
    int32_t ** volatile g_75;
    int8_t *g_84;
    int8_t **g_83;
    volatile union U1 g_85[10];
    int32_t * volatile g_86;
    uint64_t g_98[10][3][5];
    int32_t g_101;
    int8_t g_114;
    int32_t ** volatile g_133;
    int32_t ** volatile g_134[3][5];
    uint64_t *g_148;
    union U2 g_168;
    union U2 *g_167;
    union U2 ** volatile g_169;
    uint64_t **g_180;
    int64_t *g_185;
    int32_t ** volatile g_198[10];
    int32_t ** volatile g_199[5];
    int32_t ** volatile g_200;
    int32_t ** volatile g_201;
    uint16_t g_223[1][10][9];
    uint64_t * volatile g_231;
    uint64_t * volatile *g_230;
    union U2 g_247;
    uint16_t g_262;
    uint16_t g_402;
    int16_t g_406[7];
    uint8_t g_422;
    union U1 g_424;
    union U1 *g_426;
    union U1 ** volatile g_425;
    uint32_t g_524;
    int32_t * volatile g_533;
    volatile uint64_t g_538;
    volatile uint64_t *g_537;
    volatile uint64_t **g_536;
    int64_t g_542;
    int64_t g_543;
    uint64_t g_546;
    int16_t g_548;
    union U2 g_577;
    uint32_t g_590;
    union U2 g_619;
    volatile uint16_t g_636;
    volatile uint16_t *g_635;
    volatile uint16_t * volatile *g_634[1];
    union U1 **g_671;
    uint8_t g_690[5];
    uint32_t g_712;
    int16_t g_751[7][4];
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
union U0  func_1(struct S3 * p_757);
int32_t * func_21(int32_t  p_22, int64_t  p_23, int32_t  p_24, int64_t  p_25, int32_t * p_26, struct S3 * p_757);
int64_t  func_27(uint32_t  p_28, int32_t  p_29, struct S3 * p_757);
int8_t * func_42(int64_t  p_43, int32_t * p_44, struct S3 * p_757);
int8_t  func_45(int32_t * p_46, uint32_t  p_47, struct S3 * p_757);
uint32_t  func_48(int32_t  p_49, struct S3 * p_757);
union U1  func_50(uint32_t  p_51, union U1  p_52, struct S3 * p_757);
int16_t  func_57(int32_t  p_58, union U0  p_59, int8_t  p_60, struct S3 * p_757);
int8_t  func_62(uint64_t  p_63, struct S3 * p_757);
uint32_t  func_64(int8_t * p_65, int32_t * p_66, struct S3 * p_757);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_757->g_5 p_757->g_10 p_757->g_590 p_757->g_247.f0 p_757->g_223 p_757->g_85.f0 p_757->g_690 p_757->g_524 p_757->g_543 p_757->g_83 p_757->g_84 p_757->g_61.f0 p_757->g_422 p_757->g_712 p_757->g_101 p_757->g_201 p_757->g_76 p_757->g_41 p_757->g_34 p_757->g_577 p_757->g_168.f0 p_757->g_185 p_757->g_546 p_757->g_17 p_757->g_114 p_757->g_3 p_757->g_619 p_757->g_634 p_757->g_635 p_757->g_636 p_757->g_548 p_757->g_71 p_757->g_424.f0 p_757->g_751 p_757->g_533 p_757->g_61
 * writes: p_757->g_5 p_757->g_10 p_757->g_590 p_757->g_247.f0 p_757->g_524 p_757->g_406 p_757->g_98 p_757->g_101 p_757->g_84 p_757->g_17 p_757->g_543 p_757->g_548 p_757->g_422 p_757->g_41 p_757->g_671
 */
union U0  func_1(struct S3 * p_757)
{ /* block id: 4 */
    uint16_t l_2[7][2] = {{0x5925L,0xA5FEL},{0x5925L,0xA5FEL},{0x5925L,0xA5FEL},{0x5925L,0xA5FEL},{0x5925L,0xA5FEL},{0x5925L,0xA5FEL},{0x5925L,0xA5FEL}};
    int32_t l_14 = (-1L);
    uint8_t l_18 = 255UL;
    int32_t l_549 = 8L;
    union U1 ***l_676[7][2] = {{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671},{&p_757->g_671,&p_757->g_671}};
    int64_t *l_723 = (void*)0;
    int32_t *l_752[10][6][4] = {{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}},{{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10},{&l_14,&l_14,&p_757->g_101,&p_757->g_10}}};
    int16_t l_754 = 5L;
    uint32_t l_755 = 4294967292UL;
    uint16_t l_756 = 6UL;
    int i, j, k;
    for (p_757->g_5 = 0; (p_757->g_5 <= 1); p_757->g_5 += 1)
    { /* block id: 7 */
        uint32_t l_6 = 0x5F5F996FL;
        int32_t *l_9 = &p_757->g_10;
        int32_t *l_11 = &p_757->g_10;
        int32_t *l_12 = (void*)0;
        int32_t l_13 = 0x0488F4F3L;
        int32_t *l_15[8][2] = {{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5},{&l_14,&p_757->g_5}};
        uint64_t *l_545 = &p_757->g_546;
        uint64_t **l_544 = &l_545;
        int16_t l_725 = (-1L);
        union U0 l_726 = {-1L};
        int i, j;
        ++l_6;
        l_18--;
        for (p_757->g_10 = 0; (p_757->g_10 <= 1); p_757->g_10 += 1)
        { /* block id: 12 */
            int64_t *l_541 = &p_757->g_542;
            int16_t *l_547[5][1][1];
            int32_t *l_550 = (void*)0;
            int32_t **l_675 = &l_550;
            union U1 ****l_677 = &l_676[2][0];
            int32_t l_684[3];
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_547[i][j][k] = &p_757->g_548;
                }
            }
            for (i = 0; i < 3; i++)
                l_684[i] = (-8L);
            (1 + 1);
        }
        for (p_757->g_590 = 0; (p_757->g_590 <= 4); p_757->g_590 += 1)
        { /* block id: 356 */
            uint8_t l_685 = 1UL;
            int32_t l_697 = (-1L);
            uint32_t l_750[1];
            int32_t *l_753[10] = {&l_14,&l_14,&l_14,&l_14,&l_14,&l_14,&l_14,&l_14,&l_14,&l_14};
            int i;
            for (i = 0; i < 1; i++)
                l_750[i] = 2UL;
            (*l_9) &= l_685;
            for (l_685 = 0; (l_685 <= 4); l_685 += 1)
            { /* block id: 360 */
                union U0 l_704[7][5] = {{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}},{{-1L},{0x63L},{0x7BL},{0x71L},{0x7BL}}};
                int64_t **l_724 = &p_757->g_185;
                uint32_t *l_736[2][6] = {{&l_6,&l_6,&l_6,&l_6,&l_6,&l_6},{&l_6,&l_6,&l_6,&l_6,&l_6,&l_6}};
                int i, j;
                for (p_757->g_247.f0 = 0; (p_757->g_247.f0 <= 0); p_757->g_247.f0 += 1)
                { /* block id: 363 */
                    uint32_t *l_698 = (void*)0;
                    uint32_t *l_699 = &p_757->g_424.f2;
                    uint32_t *l_700 = (void*)0;
                    uint32_t *l_701[6][3][2] = {{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}},{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}},{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}},{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}},{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}},{{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524},{&p_757->g_524,&p_757->g_524}}};
                    union U0 l_705 = {-1L};
                    int16_t *l_706 = &p_757->g_406[2];
                    uint64_t *l_709 = &p_757->g_98[6][1][3];
                    uint64_t *l_710 = (void*)0;
                    int32_t l_711 = 0L;
                    uint32_t l_720 = 4294967287UL;
                    uint16_t *l_749 = &l_2[2][0];
                    int i, j, k;
                    if (((p_757->g_223[p_757->g_247.f0][(p_757->g_590 + 1)][(p_757->g_247.f0 + 6)] ^ GROUP_DIVERGE(0, 1)) < (safe_div_func_uint64_t_u_u((l_711 |= ((*l_709) = ((safe_add_func_int16_t_s_s(p_757->g_85[1].f0, p_757->g_690[4])) == (safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(0xED91L, ((l_705 = ((p_757->g_524++) , l_704[0][2])) , ((*l_706) = (*l_11))))) ^ p_757->g_543) != 0xE510L), (((safe_add_func_int8_t_s_s(l_18, (**p_757->g_83))) != p_757->g_422) , l_704[0][2].f0))), 1))))), p_757->g_712))))
                    { /* block id: 369 */
                        uint16_t l_715 = 0xEAABL;
                        int32_t *l_722[7][4][7] = {{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}},{{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0},{&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0,&p_757->g_424.f0}}};
                        int32_t **l_721 = &l_722[3][3][1];
                        int i, j, k;
                        l_725 |= ((((l_711 , (~((safe_mul_func_uint16_t_u_u(l_715, 0xBC95L)) < ((((((1UL ^ 0xE72DL) | (((*l_721) = func_21(l_705.f0, p_757->g_422, (safe_mul_func_uint8_t_u_u(p_757->g_422, (safe_rshift_func_uint8_t_u_s(l_720, (*p_757->g_84))))), l_697, &l_697, p_757)) != p_757->g_76[2][1][1])) || 0x69285C1163CB3770L) , l_545) != l_723) > l_2[4][0])))) , (void*)0) != l_724) && l_715);
                    }
                    else
                    { /* block id: 372 */
                        return l_726;
                    }
                    (*l_9) = ((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u(((safe_sub_func_int32_t_s_s(0x372809A1L, 0x2CE9C009L)) && (safe_mod_func_int64_t_s_s(((safe_unary_minus_func_uint8_t_u(((((**p_757->g_83) < (l_736[0][4] != (void*)0)) && ((((safe_unary_minus_func_uint16_t_u((l_726 , (safe_mul_func_int8_t_s_s((p_757->g_41[(p_757->g_5 + 1)] = (safe_lshift_func_int8_t_s_s(l_704[0][2].f0, (safe_mul_func_uint16_t_u_u(((*l_749) |= (((safe_div_func_uint64_t_u_u((((safe_unary_minus_func_int64_t_s((l_697 ^= (*p_757->g_185)))) | (((safe_add_func_uint16_t_u_u(l_720, l_685)) == 18446744073709551608UL) == l_685)) && p_757->g_114), 0x6AE9339AAF0435D8L)) >= (-1L)) >= p_757->g_10)), p_757->g_424.f0))))), (*l_9)))))) <= l_685) == (*p_757->g_84)) || l_750[0])) , p_757->g_751[1][0]))) ^ p_757->g_3), 1UL))), p_757->g_590)) == l_711), 0)) | p_757->g_546);
                    if (l_704[0][2].f0)
                        break;
                    for (l_726.f0 = 0; (l_726.f0 >= 0); l_726.f0 -= 1)
                    { /* block id: 382 */
                        l_753[5] = l_752[7][0][3];
                    }
                }
            }
        }
    }
    (*p_757->g_533) = (!(l_754 = 0x41AF4BABL));
    l_756 &= ((p_757->g_751[1][0] <= (0x759FAA101229743DL >= l_755)) != (&p_757->g_167 != (void*)0));
    return p_757->g_61[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_101 p_757->g_201 p_757->g_76 p_757->g_41 p_757->g_34 p_757->g_577 p_757->g_83 p_757->g_84 p_757->g_168.f0 p_757->g_185 p_757->g_546 p_757->g_590 p_757->g_543 p_757->g_17 p_757->g_114 p_757->g_247.f0 p_757->g_3 p_757->g_619 p_757->g_634 p_757->g_635 p_757->g_636 p_757->g_548 p_757->g_71 p_757->g_223
 * writes: p_757->g_101 p_757->g_84 p_757->g_17 p_757->g_543 p_757->g_524 p_757->g_548 p_757->g_422 p_757->g_41 p_757->g_671
 */
int32_t * func_21(int32_t  p_22, int64_t  p_23, int32_t  p_24, int64_t  p_25, int32_t * p_26, struct S3 * p_757)
{ /* block id: 291 */
    int32_t *l_551 = &p_757->g_101;
    int32_t l_552[8][7][4] = {{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}},{{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L},{0x780E2DE9L,(-1L),0x2370FA9FL,1L}}};
    uint32_t l_565 = 4294967287UL;
    int16_t l_584 = 0x0F2EL;
    uint16_t *l_633 = (void*)0;
    uint16_t **l_632 = &l_633;
    uint8_t *l_650 = &p_757->g_422;
    union U1 ***l_668 = (void*)0;
    union U1 **l_670 = &p_757->g_426;
    union U1 ***l_669[9] = {&l_670,&l_670,&l_670,&l_670,&l_670,&l_670,&l_670,&l_670,&l_670};
    int32_t *l_672 = &l_552[0][2][3];
    int32_t *l_673 = &l_552[0][2][3];
    int32_t *l_674 = &p_757->g_34;
    int i, j, k;
lbl_642:
    (*l_551) ^= (-3L);
    for (p_22 = 1; (p_22 <= 4); p_22 += 1)
    { /* block id: 295 */
        int32_t *l_553 = &l_552[0][2][3];
        int32_t *l_554 = &p_757->g_34;
        int32_t l_555[9][3] = {{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L},{(-1L),1L,0x6EB74076L}};
        int32_t *l_556 = &p_757->g_101;
        int32_t *l_557 = &p_757->g_101;
        int32_t *l_558 = &l_555[1][0];
        int32_t *l_559 = &p_757->g_34;
        int32_t *l_560 = &p_757->g_101;
        int32_t *l_561 = &l_555[1][0];
        int32_t *l_562 = &p_757->g_34;
        int32_t *l_563 = (void*)0;
        int32_t *l_564[9] = {&p_757->g_101,&l_552[6][6][3],&p_757->g_101,&p_757->g_101,&l_552[6][6][3],&p_757->g_101,&p_757->g_101,&l_552[6][6][3],&p_757->g_101};
        uint32_t l_640 = 4294967292UL;
        uint8_t *l_651 = &p_757->g_422;
        union U0 *l_667 = &p_757->g_61[2];
        int i, j;
        p_26 = (*p_757->g_201);
        ++l_565;
        if ((safe_unary_minus_func_uint64_t_u((safe_add_func_uint32_t_u_u(4294967292UL, p_757->g_41[p_22])))))
        { /* block id: 298 */
            int8_t *l_578 = &p_757->g_114;
            uint32_t *l_583 = &l_565;
            int32_t l_585 = (-1L);
            if (((p_25 , ((safe_mul_func_uint8_t_u_u(0x53L, (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u(((p_757->g_543 = ((*l_554) , ((*p_757->g_185) = ((((p_757->g_577 , l_578) == ((*p_757->g_83) = (*p_757->g_83))) != (FAKE_DIVERGE(p_757->local_0_offset, get_local_id(0), 10) && (p_23 < (safe_add_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s((((void*)0 == l_583) || l_584), l_585)) <= p_22) != 8UL), l_585))))) ^ p_757->g_168.f0)))) | l_585), 1)), p_23)))) < 0UL)) ^ p_22))
            { /* block id: 302 */
                int32_t l_587 = 1L;
                for (p_757->g_524 = 1; (p_757->g_524 <= 4); p_757->g_524 += 1)
                { /* block id: 305 */
                    int32_t **l_586[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_586[i] = &l_563;
                    l_551 = &p_22;
                    for (l_584 = 0; (l_584 <= 0); l_584 += 1)
                    { /* block id: 309 */
                        uint8_t l_595 = 0x10L;
                        if (l_587)
                            break;
                        (*l_557) = ((l_587 = (((p_757->g_546 , ((l_587 != ((safe_rshift_func_uint8_t_u_s(4UL, 2)) == p_757->g_590)) > ((((p_24 || (l_585 < FAKE_DIVERGE(p_757->local_0_offset, get_local_id(0), 10))) == (((((safe_mod_func_int64_t_s_s((((*p_757->g_185) &= ((safe_sub_func_int16_t_s_s(l_587, p_757->g_543)) >= p_24)) | 0x2A4874C2CAE26F82L), p_757->g_114)) & (-1L)) && (*l_551)) | p_24) || 0x157B1E161B919511L)) || p_757->g_247.f0) || l_595))) ^ 0xCD13A49AL) && 0x9954L)) , l_587);
                    }
                }
            }
            else
            { /* block id: 316 */
                uint64_t l_607[2][6];
                uint64_t *l_613 = &p_757->g_98[8][1][4];
                uint64_t **l_612 = &l_613;
                uint8_t *l_618 = &p_757->g_422;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_607[i][j] = 18446744073709551606UL;
                }
                for (p_757->g_524 = 0; (p_757->g_524 <= 8); p_757->g_524 += 1)
                { /* block id: 319 */
                    uint64_t **l_614 = &l_613;
                    int32_t l_639 = (-1L);
                    for (p_757->g_548 = 2; (p_757->g_548 >= 0); p_757->g_548 -= 1)
                    { /* block id: 322 */
                        uint8_t *l_602 = &p_757->g_422;
                        int32_t l_615[10];
                        int32_t **l_641 = &l_554;
                        int i, j;
                        for (i = 0; i < 10; i++)
                            l_615[i] = 0x7495E257L;
                        (*l_557) = (((safe_sub_func_uint8_t_u_u((((+(safe_add_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u((((*l_602) = 0x0FL) == (p_757->g_41[p_22] ^= (safe_rshift_func_uint8_t_u_s(((FAKE_DIVERGE(p_757->local_2_offset, get_local_id(2), 10) >= (((safe_mul_func_uint8_t_u_u((l_607[0][5] && (safe_mul_func_int16_t_s_s((+(-7L)), (l_585 , (safe_lshift_func_int16_t_s_s(((((l_612 != (p_757->g_3 , (l_607[1][4] , l_614))) || 2L) | (-1L)) || GROUP_DIVERGE(1, 1)), p_25)))))), 0x33L)) <= 0x4509L) ^ l_615[3])) || 0x42C894702FB12787L), (*l_551))))), 1)) , l_585), l_607[0][5]))) || p_23) ^ 0xFEL), 0x15L)) & l_607[0][5]) || 0x52L);
                        (*l_641) = ((((((((void*)0 != l_618) | (((p_757->g_619 , (safe_mul_func_uint16_t_u_u(((((*l_551) || (((((((!p_22) , ((safe_mul_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(((((l_632 == p_757->g_634[0]) ^ (*l_551)) > ((safe_add_func_int32_t_s_s(((p_757->g_101 , GROUP_DIVERGE(0, 1)) >= 0L), l_607[1][3])) && p_23)) < 7L), 3L)) ^ l_639), (*p_757->g_635))), p_24)), p_22)) , p_23) != 0x567C6649L) , GROUP_DIVERGE(2, 1)), p_757->g_546)) & (*p_757->g_185))) > p_22) != p_25) , l_585) != (-4L)) || 0x5CC39AEBL)) >= 9L) || p_24), l_640))) & p_23) > 0L)) <= 1L) <= (*l_551)) >= 4L) | (-6L)) , (void*)0);
                        (*l_557) |= (((p_22 & 0L) , (*p_757->g_83)) != l_578);
                    }
                }
                if (p_757->g_548)
                    goto lbl_642;
                return (*p_757->g_201);
            }
        }
        else
        { /* block id: 333 */
            uint8_t l_664[2];
            int i;
            for (i = 0; i < 2; i++)
                l_664[i] = 255UL;
            for (p_24 = 0; (p_24 <= 4); p_24 += 1)
            { /* block id: 336 */
                uint32_t l_645 = 0xF99DB237L;
                uint32_t *l_660 = &l_565;
                uint32_t *l_662 = &l_640;
                uint32_t **l_661 = &l_662;
                int16_t *l_663[5];
                union U0 *l_665[2];
                union U0 **l_666 = &l_665[0];
                int i;
                for (i = 0; i < 5; i++)
                    l_663[i] = &p_757->g_406[4];
                for (i = 0; i < 2; i++)
                    l_665[i] = &p_757->g_61[0];
                (*l_556) = (safe_add_func_uint8_t_u_u((l_645 >= (safe_mod_func_int8_t_s_s((p_757->g_71 && (safe_sub_func_int32_t_s_s(((l_650 == l_651) ^ (!(safe_div_func_int64_t_s_s(1L, p_23)))), ((safe_rshift_func_int16_t_s_s((l_664[0] = ((safe_lshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s(((l_660 == ((*l_661) = p_757->g_76[1][4][0])) == 8L), p_24)) != p_757->g_223[0][4][7]), p_22)) >= (*l_553))), p_757->g_636)) || 65532UL)))), (*l_551)))), 0L));
                l_667 = ((*l_666) = l_665[0]);
            }
        }
    }
    (*l_551) = ((p_757->g_671 = (void*)0) != &p_757->g_426);
    return l_674;
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_61 p_757->g_34 p_757->g_17 p_757->g_75 p_757->g_71 p_757->g_83 p_757->g_85 p_757->g_84 p_757->g_61.f0 p_757->g_86 p_757->g_76 p_757->g_16 p_757->g_98 p_757->g_101 p_757->g_114 p_757->g_5 p_757->g_167 p_757->g_169 p_757->g_180 p_757->g_201 p_757->g_185 p_757->g_10 p_757->g_223 p_757->g_230 p_757->g_247 p_757->g_247.f0 p_757->g_3 p_757->g_262 p_757->g_422 p_757->g_425 p_757->g_402 p_757->g_424.f0 p_757->g_406 p_757->g_4 p_757->g_168 p_757->g_85.f0 p_757->g_424.f2 p_757->g_533
 * writes: p_757->g_34 p_757->g_41 p_757->g_71 p_757->g_17 p_757->g_76 p_757->g_98 p_757->g_101 p_757->g_61.f0 p_757->g_114 p_757->g_148 p_757->g_167 p_757->g_168.f0 p_757->g_185 p_757->g_169 p_757->g_223 p_757->g_180 p_757->g_262 p_757->g_247.f0 p_757->g_426 p_757->g_402 p_757->g_424.f0 p_757->g_61.f2 p_757->g_424.f2 p_757->g_524 p_757->g_84
 */
int64_t  func_27(uint32_t  p_28, int32_t  p_29, struct S3 * p_757)
{ /* block id: 13 */
    int32_t *l_30 = (void*)0;
    int32_t *l_32 = (void*)0;
    int32_t *l_33 = &p_757->g_34;
    uint32_t l_39 = 1UL;
    int8_t *l_40 = &p_757->g_41[0];
    int8_t *l_68 = &p_757->g_61[2].f0;
    int8_t **l_67 = &l_68;
    uint64_t *l_70 = &p_757->g_71;
    union U1 l_87 = {-7L};
    (*l_33) = (&p_757->g_10 != &p_29);
    (*l_33) = (safe_mod_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(((*l_40) = l_39), (((*l_67) = ((*p_757->g_83) = func_42(((func_45(&p_757->g_34, func_48((func_50((((safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(func_57(p_29, p_757->g_61[2], func_62(((*l_70) = ((p_29 , ((func_64(((*l_67) = l_40), &p_29, p_757) & 1UL) || (*l_33))) || p_757->g_17)), p_757), p_757), GROUP_DIVERGE(1, 1))), 2)) == l_39) == 0L), l_87, p_757) , (*l_33)), p_757), p_757) || p_757->g_422) && 0xFB2FB07FBAF6D048L), &p_757->g_10, p_757))) != (void*)0))), 1L));
    return (*l_33);
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_10 p_757->g_425 p_757->g_83 p_757->g_84 p_757->g_402 p_757->g_424.f0 p_757->g_406 p_757->g_4 p_757->g_34 p_757->g_17 p_757->g_169 p_757->g_167 p_757->g_168 p_757->g_85.f0 p_757->g_262 p_757->g_424.f2 p_757->g_533 p_757->g_101
 * writes: p_757->g_426 p_757->g_402 p_757->g_424.f0 p_757->g_17 p_757->g_76 p_757->g_34 p_757->g_61.f2 p_757->g_424.f2 p_757->g_524 p_757->g_101
 */
int8_t * func_42(int64_t  p_43, int32_t * p_44, struct S3 * p_757)
{ /* block id: 209 */
    int16_t *l_427 = (void*)0;
    int32_t l_433 = (-9L);
    int32_t l_439[4];
    uint32_t l_445 = 0xF95343EEL;
    int8_t *l_448 = (void*)0;
    union U2 *l_461 = &p_757->g_168;
    int32_t **l_475 = &p_757->g_76[6][4][1];
    int32_t ***l_474 = &l_475;
    uint64_t *l_495 = &p_757->g_98[0][0][2];
    uint64_t **l_494 = &l_495;
    uint16_t *l_509 = &p_757->g_402;
    int i;
    for (i = 0; i < 4; i++)
        l_439[i] = 0x2778C0CBL;
lbl_449:
    if ((*p_44))
    { /* block id: 210 */
        union U1 *l_423[2];
        int i;
        for (i = 0; i < 2; i++)
            l_423[i] = &p_757->g_424;
        (*p_757->g_425) = l_423[1];
    }
    else
    { /* block id: 212 */
        return (*p_757->g_83);
    }
    if ((&p_757->g_406[4] == l_427))
    { /* block id: 215 */
        int32_t *l_428 = &p_757->g_34;
        int32_t *l_429 = (void*)0;
        int32_t *l_430 = (void*)0;
        int32_t *l_431 = &p_757->g_34;
        int32_t *l_432 = &p_757->g_34;
        int32_t l_434[9] = {0x3BF3638FL,0x7E2F7704L,0x3BF3638FL,0x3BF3638FL,0x7E2F7704L,0x3BF3638FL,0x3BF3638FL,0x7E2F7704L,0x3BF3638FL};
        int32_t *l_435 = &l_434[2];
        int32_t *l_436 = &p_757->g_34;
        int32_t *l_437 = &l_434[5];
        int32_t *l_438 = (void*)0;
        int32_t *l_440 = (void*)0;
        int32_t *l_441 = &l_434[3];
        int32_t *l_442 = &l_433;
        int32_t *l_443 = &l_434[4];
        int32_t *l_444 = &l_439[0];
        int i;
        --l_445;
        for (p_757->g_402 = 2; (p_757->g_402 <= 6); p_757->g_402 += 1)
        { /* block id: 219 */
            return l_448;
        }
        if (p_757->g_402)
            goto lbl_449;
        for (p_757->g_424.f0 = 8; (p_757->g_424.f0 == (-21)); --p_757->g_424.f0)
        { /* block id: 225 */
            int32_t *l_452 = &l_433;
            int32_t **l_453 = &l_435;
            l_452 = (void*)0;
            if ((*p_44))
                break;
            (*l_453) = l_452;
        }
    }
    else
    { /* block id: 230 */
        int32_t *l_454 = &l_433;
        (*l_454) ^= (*p_44);
        (*l_454) = (safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u(p_757->g_406[4], ((void*)0 == l_461))), FAKE_DIVERGE(p_757->group_0_offset, get_group_id(0), 10))), (-1L)));
    }
    if ((0xCBC35E81L && (((-1L) < (+(safe_add_func_int64_t_s_s(((safe_add_func_int8_t_s_s(0x5EL, (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((safe_sub_func_uint64_t_u_u((safe_mod_func_int32_t_s_s((l_433 = l_433), p_43)), (p_757->g_4 | 6L))) && (&p_757->g_200 == l_474)), 13)), p_757->g_406[4])))) == p_757->g_34), GROUP_DIVERGE(1, 1))))) | p_43)))
    { /* block id: 235 */
        uint32_t l_478 = 0x28B163A9L;
        int32_t l_480 = 0x3C8E6075L;
        int32_t l_484 = 0x58C8A325L;
        int32_t l_487[2];
        int i;
        for (i = 0; i < 2; i++)
            l_487[i] = 0x2F7E8750L;
        for (p_757->g_17 = 14; (p_757->g_17 <= 4); p_757->g_17 = safe_sub_func_int32_t_s_s(p_757->g_17, 3))
        { /* block id: 238 */
            int64_t **l_479 = &p_757->g_185;
            int32_t *l_481 = (void*)0;
            int32_t *l_482 = (void*)0;
            int32_t *l_483[3];
            int i;
            for (i = 0; i < 3; i++)
                l_483[i] = &l_439[0];
            l_439[0] |= ((l_478 , l_479) == (void*)0);
            l_484 |= (l_480 = (*p_44));
            (**l_474) = ((**p_757->g_169) , p_44);
        }
        for (p_757->g_34 = (-18); (p_757->g_34 < (-16)); p_757->g_34++)
        { /* block id: 246 */
            if (l_487[1])
                break;
        }
        return l_448;
    }
    else
    { /* block id: 250 */
        uint64_t ***l_488 = &p_757->g_180;
        int32_t *l_489 = &l_439[3];
        uint64_t ***l_503 = (void*)0;
        (*l_489) = (l_488 == &p_757->g_230);
        for (p_43 = 0; (p_43 != 24); p_43 = safe_add_func_uint16_t_u_u(p_43, 1))
        { /* block id: 254 */
            uint64_t **l_496 = &l_495;
            for (l_445 = 2; (l_445 > 16); l_445 = safe_add_func_int64_t_s_s(l_445, 3))
            { /* block id: 257 */
                uint64_t ***l_504 = &p_757->g_180;
                uint16_t *l_508 = &p_757->g_262;
                uint16_t **l_507 = &l_508;
                uint16_t **l_510 = &l_509;
                int32_t *l_511[4];
                int32_t l_512 = 1L;
                uint32_t *l_513 = (void*)0;
                uint32_t *l_514 = &p_757->g_61[2].f2;
                int32_t l_515[6];
                int i;
                for (i = 0; i < 4; i++)
                    l_511[i] = &p_757->g_424.f0;
                for (i = 0; i < 6; i++)
                    l_515[i] = 9L;
                l_515[5] = ((((*l_514) = ((l_494 == l_496) < ((safe_lshift_func_uint16_t_u_s(((p_757->g_85[1].f0 < ((safe_sub_func_uint8_t_u_u(((l_503 != l_504) >= (*p_44)), (safe_rshift_func_int8_t_s_s((((*l_489) = (((*l_507) = &p_757->g_223[0][0][0]) != ((*l_510) = ((1UL ^ 0x4F5FCC2FL) , l_509)))) , 4L), 2)))) > 0x73L)) >= p_757->g_262), l_512)) ^ 0x64L))) , l_514) == (void*)0);
                return l_448;
            }
            for (p_757->g_424.f2 = 1; (p_757->g_424.f2 >= 41); p_757->g_424.f2++)
            { /* block id: 267 */
                uint32_t l_518 = 1UL;
                uint32_t *l_523 = &p_757->g_524;
                (*l_489) = l_518;
                (*l_489) = (safe_lshift_func_int16_t_s_u((((*l_523) = (!(safe_add_func_int16_t_s_s(p_43, 9L)))) , (safe_mod_func_int8_t_s_s(l_518, (safe_add_func_int16_t_s_s((*l_489), 1UL))))), 8));
                (**l_474) = p_44;
            }
            for (p_757->g_424.f2 = (-28); (p_757->g_424.f2 == 3); p_757->g_424.f2++)
            { /* block id: 275 */
                int64_t l_531 = 0x7F98B9E5D6C40414L;
                uint32_t l_532 = 2UL;
                if (l_531)
                    break;
                (*p_757->g_533) ^= (l_532 = ((*l_489) = (*p_44)));
            }
        }
        return l_448;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_83 p_757->g_84 p_757->g_61.f0
 * writes:
 */
int8_t  func_45(int32_t * p_46, uint32_t  p_47, struct S3 * p_757)
{ /* block id: 206 */
    int32_t *l_418[6][1] = {{&p_757->g_101},{&p_757->g_101},{&p_757->g_101},{&p_757->g_101},{&p_757->g_101},{&p_757->g_101}};
    uint32_t l_419 = 0x979B59C9L;
    int i, j;
    l_419++;
    return (**p_757->g_83);
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_167 p_757->g_169 p_757->g_101 p_757->g_98 p_757->g_34 p_757->g_180 p_757->g_201 p_757->g_185 p_757->g_10 p_757->g_84 p_757->g_86 p_757->g_83 p_757->g_223 p_757->g_85 p_757->g_230 p_757->g_16 p_757->g_247 p_757->g_247.f0 p_757->g_61.f0 p_757->g_3 p_757->g_71 p_757->g_17 p_757->g_5 p_757->g_262
 * writes: p_757->g_101 p_757->g_167 p_757->g_168.f0 p_757->g_185 p_757->g_76 p_757->g_169 p_757->g_34 p_757->g_17 p_757->g_61.f0 p_757->g_223 p_757->g_180 p_757->g_262 p_757->g_247.f0 p_757->g_98
 */
uint32_t  func_48(int32_t  p_49, struct S3 * p_757)
{ /* block id: 71 */
    int16_t l_159 = (-1L);
    int32_t l_163[8][1] = {{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL},{0x5A8CB6BDL}};
    uint8_t l_164 = 247UL;
    int32_t l_220 = 7L;
    union U0 l_246 = {1L};
    uint64_t **l_255 = (void*)0;
    uint16_t *l_261 = (void*)0;
    union U1 l_290 = {0x2292C396L};
    int32_t **l_353 = &p_757->g_76[5][5][0];
    int32_t l_370 = 0L;
    int8_t *l_411 = (void*)0;
    int i, j;
    for (p_49 = 0; (p_49 <= 9); p_49 += 1)
    { /* block id: 74 */
        int16_t l_156 = 0L;
        int32_t *l_157 = &p_757->g_34;
        int32_t *l_158 = &p_757->g_34;
        int32_t *l_160 = &p_757->g_101;
        int32_t *l_161 = &p_757->g_34;
        int32_t *l_162[9] = {&p_757->g_34,&p_757->g_101,&p_757->g_34,&p_757->g_34,&p_757->g_101,&p_757->g_34,&p_757->g_34,&p_757->g_101,&p_757->g_34};
        union U2 **l_189 = &p_757->g_167;
        int64_t *l_260 = &p_757->g_17;
        uint16_t l_308 = 1UL;
        int64_t l_356[8] = {0L,(-4L),0L,0L,(-4L),0L,0L,(-4L)};
        int16_t l_358 = (-2L);
        int32_t *l_417 = &l_163[2][0];
        int i;
        --l_164;
        for (p_757->g_101 = 2; (p_757->g_101 >= 0); p_757->g_101 -= 1)
        { /* block id: 78 */
            int32_t l_268 = 0x4AC8E357L;
            union U1 l_293 = {0x1D19BCE1L};
            int32_t l_303 = (-7L);
            int32_t l_305 = 0x45BB3ADCL;
            uint64_t *l_311[5][5][1] = {{{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]}},{{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]}},{{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]}},{{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]}},{{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]},{&p_757->g_98[6][1][3]}}};
            int i, j, k;
            if (l_163[1][0])
                break;
            (*p_757->g_169) = p_757->g_167;
            for (p_757->g_168.f0 = 1; (p_757->g_168.f0 <= 9); p_757->g_168.f0 += 1)
            { /* block id: 83 */
                union U0 l_170 = {0x13L};
                int32_t **l_211 = &l_162[5];
                uint16_t *l_221 = (void*)0;
                uint16_t *l_222 = &p_757->g_223[0][9][4];
                uint64_t **l_228 = (void*)0;
                uint64_t ***l_229 = &p_757->g_180;
                int32_t l_248 = (-7L);
                int32_t l_307[2][9][4] = {{{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L}},{{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L},{0x3ED55680L,0x68A5E5BAL,0x3ED55680L,0x3ED55680L}}};
                int i, j, k;
                for (l_156 = 1; (l_156 >= 0); l_156 -= 1)
                { /* block id: 86 */
                    uint64_t *l_187 = &p_757->g_98[6][1][3];
                    uint64_t **l_186 = &l_187;
                    uint32_t *l_195 = &l_170.f2;
                    uint32_t *l_196 = &p_757->g_61[2].f2;
                    uint32_t *l_197 = &l_170.f2;
                    union U0 l_208[8][10][3] = {{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}},{{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}},{{5L},{1L},{-9L}}}};
                    int32_t l_210 = 1L;
                    int i, j, k;
                    if ((p_757->g_98[p_49][p_757->g_101][(p_757->g_101 + 2)] | p_757->g_34))
                    { /* block id: 87 */
                        uint64_t **l_173 = (void*)0;
                        uint64_t *l_175 = &p_757->g_98[6][1][3];
                        uint64_t **l_174 = &l_175;
                        uint64_t ***l_181 = &l_173;
                        int32_t l_182 = 0x718DE1EEL;
                        int64_t *l_184 = &p_757->g_17;
                        int64_t **l_183[4] = {&l_184,&l_184,&l_184,&l_184};
                        uint64_t ***l_188 = &l_186;
                        union U2 ***l_190[10] = {&l_189,(void*)0,&l_189,(void*)0,&l_189,&l_189,(void*)0,&l_189,(void*)0,&l_189};
                        int32_t **l_191 = &l_162[7];
                        int i, j, k;
                        p_757->g_76[(p_757->g_101 + 6)][l_156][l_156] = ((l_170 , (safe_sub_func_int8_t_s_s(((((*l_174) = (void*)0) == (void*)0) <= (safe_rshift_func_int8_t_s_u(((~1UL) , (safe_div_func_int16_t_s_s((((*l_181) = p_757->g_180) == ((*l_188) = ((l_182 , ((p_757->g_185 = &p_757->g_17) == &p_757->g_17)) , l_186))), 1UL))), l_182))), p_757->g_34))) , (void*)0);
                        p_757->g_169 = l_189;
                        (*l_191) = l_162[(p_757->g_101 + 4)];
                        (*l_158) = (*l_160);
                    }
                    else
                    { /* block id: 96 */
                        uint64_t l_192[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_192[i] = 0xE445ACCD3D93C69FL;
                        if (l_192[3])
                            break;
                        if (l_170.f0)
                            break;
                    }
                    if ((0L <= (0x65B959E1L < (safe_div_func_uint32_t_u_u(((*l_158) ^= p_49), p_49)))))
                    { /* block id: 101 */
                        (*p_757->g_201) = l_158;
                        if (p_49)
                            break;
                    }
                    else
                    { /* block id: 104 */
                        int64_t *l_209[3][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        (*p_757->g_86) &= (safe_rshift_func_int16_t_s_s((0x9E2E3184L & p_49), (((*p_757->g_185) = (1UL && 0UL)) ^ (l_210 = ((safe_add_func_int8_t_s_s(((((((((*p_757->g_84) = (p_757->g_10 > (((void*)0 == &p_757->g_167) || p_49))) , &p_757->g_167) != (void*)0) | p_49) , l_208[6][5][2]) , (void*)0) != &p_757->g_31), l_159)) != l_163[3][0])))));
                    }
                }
                (*l_211) = &l_163[3][0];
                (*l_161) = (safe_mul_func_int16_t_s_s(((((**p_757->g_83) = (GROUP_DIVERGE(2, 1) <= (**l_211))) && 0L) > p_49), (safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(p_49, 4)), (safe_mul_func_uint16_t_u_u((l_170 , (((*l_222)--) & ((safe_mul_func_uint16_t_u_u((((*l_229) = l_228) != (p_757->g_85[4] , p_757->g_230)), (safe_div_func_int32_t_s_s(((safe_div_func_int64_t_s_s((l_170 , p_49), l_164)) && 18446744073709551615UL), p_49)))) > l_164))), 0L))))));
                if ((l_163[3][0] , (*p_757->g_86)))
                { /* block id: 116 */
                    uint32_t *l_244 = &l_170.f2;
                    int32_t l_245 = 0L;
                    int16_t *l_267 = &l_156;
                    int32_t l_281 = 0L;
                    l_220 = (GROUP_DIVERGE(2, 1) != (((p_757->g_16 < 0L) > (safe_mod_func_int8_t_s_s((safe_div_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(6L, (*l_158))), (-7L))), 0x1CL))) & (safe_sub_func_uint64_t_u_u((((*l_244) = p_49) && (l_245 &= (p_757->g_10 && ((*l_222) ^= 0x0D85L)))), 0x2D45AEAADFABC0FDL))));
                    l_248 |= (l_246 , (p_757->g_247 , ((*l_158) = (p_49 > 0xF9AB17AEFA5C7AFDL))));
                    for (l_246.f2 = 2; (l_246.f2 <= 9); l_246.f2 += 1)
                    { /* block id: 125 */
                        uint16_t *l_256 = &p_757->g_247.f0;
                        int32_t l_259 = (-1L);
                        (*l_211) = &l_163[3][0];
                        l_245 = (**l_211);
                        p_757->g_262 = (l_245 ^ ((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((((void*)0 == l_255) > l_245) | (l_256 != ((((p_49 >= ((safe_div_func_int8_t_s_s((((((l_259 , l_260) != (void*)0) >= p_757->g_247.f0) && 0UL) >= (**l_211)), (*p_757->g_84))) >= 1L)) != p_49) || l_245) , l_261))), 6)), p_49)) == (*l_161)));
                        (*l_211) = &l_163[0][0];
                    }
                    l_281 ^= (safe_mul_func_int8_t_s_s((l_268 = (safe_mul_func_uint16_t_u_u(l_245, ((*l_267) = (**l_211))))), (safe_rshift_func_uint8_t_u_s((((*p_757->g_185) = ((0x93499C1F7F4DD995L < p_49) || (safe_mod_func_uint32_t_u_u((p_49 == ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(1L, ((*p_757->g_84) = (((safe_rshift_func_uint8_t_u_s(p_49, 0)) && (safe_rshift_func_uint16_t_u_s(0x903AL, 1))) & 0x45E5L)))), p_49)) ^ p_49)), (**l_211))))) & (-4L)), p_49))));
                }
                else
                { /* block id: 136 */
                    union U1 *l_291 = (void*)0;
                    union U1 *l_292[3];
                    int32_t l_302 = 0x2E7622B3L;
                    int32_t l_304 = 0L;
                    int32_t l_306[9][5][2];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_292[i] = &l_290;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 5; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_306[i][j][k] = 0x6B78D52CL;
                        }
                    }
                    l_248 ^= (safe_sub_func_uint16_t_u_u(((((**p_757->g_83) = ((safe_add_func_uint16_t_u_u(((void*)0 == (*l_211)), (((safe_lshift_func_int8_t_s_s((&p_757->g_231 != &p_757->g_231), 0)) >= p_757->g_223[0][9][4]) , (safe_lshift_func_int16_t_s_s(0x0D9EL, (((l_293 = l_290) , (safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_sub_func_int64_t_s_s((((l_220 |= (safe_rshift_func_int16_t_s_s((6UL == p_757->g_98[6][1][3]), (**l_211)))) , (**l_211)) , 0x535495EADD201607L), l_163[2][0])), 255UL)), 1UL))) >= (**p_757->g_83))))))) | (*p_757->g_84))) <= p_49) , p_757->g_3), l_302));
                    (*l_158) |= l_163[3][0];
                    l_308--;
                    if ((*p_757->g_86))
                        break;
                }
            }
            l_163[3][0] |= (((((*p_757->g_84) |= ((0x7228L & p_49) | ((*l_158) ^= 0x6889BC5D18551CB4L))) < (safe_div_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u(4294967288UL, GROUP_DIVERGE(1, 1))) | (safe_mul_func_int8_t_s_s(((p_49 < (safe_lshift_func_uint16_t_u_u(p_757->g_16, (l_293 , (safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((&l_293 != &l_290), l_164)), 2)))))) , l_220), p_49))), p_757->g_71))) == (*p_757->g_185)) , 0x649DA2CCL);
        }
        for (p_757->g_247.f0 = 2; (p_757->g_247.f0 <= 9); p_757->g_247.f0 += 1)
        { /* block id: 152 */
            int32_t ***l_354 = &l_353;
            uint16_t *l_355[2];
            uint64_t *l_357 = &p_757->g_98[6][1][3];
            int32_t l_362 = 0x2FAA862AL;
            int32_t l_363 = 0L;
            int32_t l_365[2];
            uint32_t l_373[10][3] = {{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL},{4294967294UL,4294967295UL,4294967292UL}};
            int32_t *l_409[8][1] = {{&l_362},{&l_362},{&l_362},{&l_362},{&l_362},{&l_362},{&l_362},{&l_362}};
            int8_t *l_410 = &p_757->g_61[2].f0;
            int i, j;
            for (i = 0; i < 2; i++)
                l_355[i] = &l_308;
            for (i = 0; i < 2; i++)
                l_365[i] = 1L;
            if (((safe_div_func_uint16_t_u_u(p_757->g_223[0][9][3], (1UL | (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_unary_minus_func_uint64_t_u((safe_div_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(0x3F17D5CF267E313EL, ((*l_357) = (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((p_49 , (safe_add_func_int16_t_s_s(((((safe_mod_func_int64_t_s_s((l_246 , p_49), (l_356[4] = (safe_lshift_func_int16_t_s_s((((*l_158) = ((((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((((p_757->g_168.f0 = (p_49 ^ (safe_div_func_int8_t_s_s(((l_163[3][0] = (((((*l_354) = l_353) != (void*)0) , 1L) , p_49)) < GROUP_DIVERGE(1, 1)), (*p_757->g_84))))) >= l_159) <= 8UL), 7)), p_757->g_98[6][1][3])) && p_757->g_17) & 0x19L) != (-10L))) != FAKE_DIVERGE(p_757->global_0_offset, get_global_id(0), 10)), p_49))))) , p_757->g_5) , FAKE_DIVERGE(p_757->local_2_offset, get_local_id(2), 10)) | FAKE_DIVERGE(p_757->group_0_offset, get_group_id(0), 10)), 1L))), 9)), 10))))), l_358)))) ^ l_164))), p_49)), p_49))))) , p_49))
            { /* block id: 159 */
                uint32_t l_361 = 0x2D0FDD6FL;
                (*l_157) = ((~(safe_mul_func_uint16_t_u_u(l_164, (p_757->g_262 & (l_361 = p_49))))) != GROUP_DIVERGE(1, 1));
            }
            else
            { /* block id: 162 */
                int32_t l_364 = (-3L);
                int32_t l_366 = 0x269A8903L;
                int32_t l_367 = 0x0DBCB418L;
                int32_t l_368 = (-7L);
                int32_t l_369 = 0x01433D74L;
                int32_t l_371 = 7L;
                int32_t l_372 = 0x15DC1193L;
                int i;
                l_373[8][1]++;
                if ((*l_161))
                    continue;
            }
        }
        l_417 = l_162[0];
        for (l_358 = 9; (l_358 >= 0); l_358 -= 1)
        { /* block id: 197 */
            for (p_757->g_101 = 1; (p_757->g_101 <= 8); p_757->g_101 += 1)
            { /* block id: 200 */
                return p_49;
            }
        }
    }
    return p_757->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_75 p_757->g_76 p_757->g_17 p_757->g_61.f0 p_757->g_16 p_757->g_98 p_757->g_101 p_757->g_71 p_757->g_83 p_757->g_84 p_757->g_34 p_757->g_114 p_757->g_5 p_757->g_86
 * writes: p_757->g_98 p_757->g_34 p_757->g_101 p_757->g_17 p_757->g_71 p_757->g_61.f0 p_757->g_114 p_757->g_148
 */
union U1  func_50(uint32_t  p_51, union U1  p_52, struct S3 * p_757)
{ /* block id: 32 */
    int32_t *l_88 = &p_757->g_34;
    uint64_t *l_97 = &p_757->g_98[6][1][3];
    int32_t *l_99 = &p_757->g_34;
    int32_t *l_100 = &p_757->g_101;
    int32_t l_112[3][7][4] = {{{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L}},{{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L}},{{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L},{(-4L),8L,1L,0x1033EFA0L}}};
    uint64_t **l_145 = (void*)0;
    uint64_t *l_147 = (void*)0;
    uint64_t **l_146 = &l_147;
    union U1 l_155[3][6] = {{{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L}},{{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L}},{{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L},{0x65D78F82L}}};
    int i, j, k;
    l_88 = (*p_757->g_75);
    (*l_100) ^= ((*l_99) = ((safe_add_func_int32_t_s_s(p_51, p_52.f0)) || (((*l_97) &= (safe_sub_func_int64_t_s_s((!(p_757->g_17 ^ p_757->g_61[2].f0)), (safe_add_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), p_757->g_16))))) == 18446744073709551610UL)));
    for (p_757->g_17 = 2; (p_757->g_17 >= 0); p_757->g_17 -= 1)
    { /* block id: 39 */
        int64_t l_106[3];
        int32_t l_131 = (-1L);
        int32_t *l_132 = &l_131;
        int i;
        for (i = 0; i < 3; i++)
            l_106[i] = 0x3C3D1A69E2847586L;
        for (p_757->g_71 = 0; (p_757->g_71 <= 1); p_757->g_71 += 1)
        { /* block id: 42 */
            uint16_t l_107 = 1UL;
            int32_t l_120 = 1L;
            int32_t **l_135 = &l_132;
            for (p_52.f2 = 0; (p_52.f2 <= 2); p_52.f2 += 1)
            { /* block id: 45 */
                int32_t *l_102 = &p_757->g_34;
                int32_t *l_103 = &p_757->g_34;
                int32_t *l_104 = &p_757->g_101;
                int32_t *l_105[2][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int8_t *l_113 = &p_757->g_114;
                int32_t **l_117[10];
                int64_t *l_118 = (void*)0;
                int64_t *l_119[7][4][6] = {{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}},{{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]},{&l_106[0],&l_106[1],&l_106[1],&l_106[1],&l_106[0],&l_106[0]}}};
                int i, j, k;
                for (i = 0; i < 10; i++)
                    l_117[i] = &p_757->g_76[4][1][1];
                --l_107;
                (*l_103) = ((safe_sub_func_int8_t_s_s(((**p_757->g_83) &= p_757->g_98[(p_757->g_71 + 6)][p_52.f2][(p_757->g_17 + 1)]), ((*l_113) = l_112[0][0][2]))) > (safe_mod_func_int64_t_s_s((l_120 = ((l_100 = (*p_757->g_75)) != &l_112[1][6][2])), (0xB7D55596E0544DDAL || p_52.f2))));
                l_131 &= (safe_sub_func_uint8_t_u_u((0xF8C06C6856C27949L <= (6UL & (((((*p_757->g_84) > ((safe_mul_func_uint8_t_u_u((((*l_113) |= (((p_52.f2 > (safe_rshift_func_uint16_t_u_u(((*l_103) == 2UL), 6))) | p_52.f2) != (4294967286UL & (safe_mod_func_int16_t_s_s(p_757->g_61[2].f0, 0x6423L))))) ^ GROUP_DIVERGE(0, 1)), 0x5FL)) | (*p_757->g_84))) < p_757->g_34) , &l_112[1][5][1]) == &l_112[0][0][2]))), l_120));
                l_132 = &l_131;
            }
            (*l_132) = p_52.f2;
            (*l_135) = &l_112[0][1][2];
            for (p_757->g_101 = 0; (p_757->g_101 <= 2); p_757->g_101 += 1)
            { /* block id: 60 */
                uint8_t l_136 = 251UL;
                l_136--;
            }
        }
        if (p_51)
            break;
        return p_52;
    }
    (*l_99) = (safe_mul_func_uint16_t_u_u(p_51, ((p_51 >= ((p_757->g_5 < 18446744073709551615UL) | (safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((((p_757->g_148 = ((*l_146) = &p_757->g_71)) == l_97) && (safe_lshift_func_uint8_t_u_u(254UL, ((safe_add_func_int64_t_s_s(1L, ((safe_sub_func_int32_t_s_s(p_51, (*p_757->g_86))) || p_51))) , FAKE_DIVERGE(p_757->group_0_offset, get_group_id(0), 10))))), 7)), 5UL)))) ^ p_51)));
    return l_155[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_83 p_757->g_85 p_757->g_84 p_757->g_61.f0 p_757->g_86
 * writes: p_757->g_34
 */
int16_t  func_57(int32_t  p_58, union U0  p_59, int8_t  p_60, struct S3 * p_757)
{ /* block id: 28 */
    int32_t *l_78 = &p_757->g_34;
    l_78 = (void*)0;
    (*p_757->g_86) = (safe_mod_func_uint16_t_u_u(0UL, (safe_lshift_func_int8_t_s_s((p_757->g_83 != (void*)0), (p_757->g_85[1] , (**p_757->g_83))))));
    return p_59.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_757->g_17 p_757->g_75 p_757->g_71
 * writes: p_757->g_17 p_757->g_76
 */
int8_t  func_62(uint64_t  p_63, struct S3 * p_757)
{ /* block id: 20 */
    union U1 l_72[9] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
    int32_t *l_77 = &p_757->g_10;
    int i;
    for (p_757->g_17 = 8; (p_757->g_17 >= 0); p_757->g_17 -= 1)
    { /* block id: 23 */
        int32_t *l_73 = &p_757->g_10;
        (*p_757->g_75) = l_73;
    }
    l_77 = l_77;
    return p_757->g_71;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_64(int8_t * p_65, int32_t * p_66, struct S3 * p_757)
{ /* block id: 17 */
    int16_t l_69 = 0x25D8L;
    return l_69;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_758;
    struct S3* p_757 = &c_758;
    struct S3 c_759 = {
        0x36544D18L, // p_757->g_3
        1L, // p_757->g_4
        1L, // p_757->g_5
        3L, // p_757->g_10
        0x72L, // p_757->g_16
        1L, // p_757->g_17
        (void*)0, // p_757->g_31
        0x17232793L, // p_757->g_34
        {0x43L,0x43L,0x43L,0x43L,0x43L}, // p_757->g_41
        {{0x13L},{0x13L},{0x13L}}, // p_757->g_61
        0x039B7C392AD5889EL, // p_757->g_71
        (void*)0, // p_757->g_74
        {{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}},{{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5},{(void*)0,&p_757->g_5}}}, // p_757->g_76
        &p_757->g_76[6][4][1], // p_757->g_75
        &p_757->g_61[2].f0, // p_757->g_84
        &p_757->g_84, // p_757->g_83
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_757->g_85
        &p_757->g_34, // p_757->g_86
        {{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}},{{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL},{0xDAA6E977603CC2EDL,18446744073709551608UL,0xE7B4C6B90ED9ABD1L,0x7DF30550D74AE622L,1UL}}}, // p_757->g_98
        0x507BD828L, // p_757->g_101
        0x30L, // p_757->g_114
        (void*)0, // p_757->g_133
        {{&p_757->g_76[3][5][0],&p_757->g_76[2][1][0],&p_757->g_76[3][5][0],&p_757->g_76[3][5][0],&p_757->g_76[2][1][0]},{&p_757->g_76[3][5][0],&p_757->g_76[2][1][0],&p_757->g_76[3][5][0],&p_757->g_76[3][5][0],&p_757->g_76[2][1][0]},{&p_757->g_76[3][5][0],&p_757->g_76[2][1][0],&p_757->g_76[3][5][0],&p_757->g_76[3][5][0],&p_757->g_76[2][1][0]}}, // p_757->g_134
        &p_757->g_71, // p_757->g_148
        {0UL}, // p_757->g_168
        &p_757->g_168, // p_757->g_167
        &p_757->g_167, // p_757->g_169
        (void*)0, // p_757->g_180
        &p_757->g_17, // p_757->g_185
        {&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0],&p_757->g_76[8][1][0]}, // p_757->g_198
        {&p_757->g_76[2][0][1],&p_757->g_76[2][0][1],&p_757->g_76[2][0][1],&p_757->g_76[2][0][1],&p_757->g_76[2][0][1]}, // p_757->g_199
        (void*)0, // p_757->g_200
        &p_757->g_76[8][0][0], // p_757->g_201
        {{{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,0UL,65535UL,0UL,65535UL,65535UL,65535UL}}}, // p_757->g_223
        (void*)0, // p_757->g_231
        &p_757->g_231, // p_757->g_230
        {1UL}, // p_757->g_247
        0x53EAL, // p_757->g_262
        0UL, // p_757->g_402
        {5L,5L,5L,5L,5L,5L,5L}, // p_757->g_406
        0x48L, // p_757->g_422
        {0x173867C8L}, // p_757->g_424
        &p_757->g_424, // p_757->g_426
        &p_757->g_426, // p_757->g_425
        1UL, // p_757->g_524
        &p_757->g_101, // p_757->g_533
        18446744073709551609UL, // p_757->g_538
        &p_757->g_538, // p_757->g_537
        &p_757->g_537, // p_757->g_536
        0x34067BA06D7C374AL, // p_757->g_542
        (-2L), // p_757->g_543
        1UL, // p_757->g_546
        (-5L), // p_757->g_548
        {0x4733L}, // p_757->g_577
        4294967293UL, // p_757->g_590
        {0x0D09L}, // p_757->g_619
        1UL, // p_757->g_636
        &p_757->g_636, // p_757->g_635
        {&p_757->g_635}, // p_757->g_634
        (void*)0, // p_757->g_671
        {9UL,9UL,9UL,9UL,9UL}, // p_757->g_690
        5UL, // p_757->g_712
        {{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L},{0L,0x4F38L,0x29DAL,0x4F38L}}, // p_757->g_751
        sequence_input[get_global_id(0)], // p_757->global_0_offset
        sequence_input[get_global_id(1)], // p_757->global_1_offset
        sequence_input[get_global_id(2)], // p_757->global_2_offset
        sequence_input[get_local_id(0)], // p_757->local_0_offset
        sequence_input[get_local_id(1)], // p_757->local_1_offset
        sequence_input[get_local_id(2)], // p_757->local_2_offset
        sequence_input[get_group_id(0)], // p_757->group_0_offset
        sequence_input[get_group_id(1)], // p_757->group_1_offset
        sequence_input[get_group_id(2)], // p_757->group_2_offset
    };
    c_758 = c_759;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_757);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_757->g_3, "p_757->g_3", print_hash_value);
    transparent_crc(p_757->g_4, "p_757->g_4", print_hash_value);
    transparent_crc(p_757->g_5, "p_757->g_5", print_hash_value);
    transparent_crc(p_757->g_10, "p_757->g_10", print_hash_value);
    transparent_crc(p_757->g_16, "p_757->g_16", print_hash_value);
    transparent_crc(p_757->g_17, "p_757->g_17", print_hash_value);
    transparent_crc(p_757->g_34, "p_757->g_34", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_757->g_41[i], "p_757->g_41[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_757->g_61[i].f0, "p_757->g_61[i].f0", print_hash_value);

    }
    transparent_crc(p_757->g_71, "p_757->g_71", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_757->g_85[i].f0, "p_757->g_85[i].f0", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_757->g_98[i][j][k], "p_757->g_98[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_757->g_101, "p_757->g_101", print_hash_value);
    transparent_crc(p_757->g_114, "p_757->g_114", print_hash_value);
    transparent_crc(p_757->g_168.f0, "p_757->g_168.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_757->g_223[i][j][k], "p_757->g_223[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_757->g_247.f0, "p_757->g_247.f0", print_hash_value);
    transparent_crc(p_757->g_262, "p_757->g_262", print_hash_value);
    transparent_crc(p_757->g_402, "p_757->g_402", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_757->g_406[i], "p_757->g_406[i]", print_hash_value);

    }
    transparent_crc(p_757->g_422, "p_757->g_422", print_hash_value);
    transparent_crc(p_757->g_424.f0, "p_757->g_424.f0", print_hash_value);
    transparent_crc(p_757->g_524, "p_757->g_524", print_hash_value);
    transparent_crc(p_757->g_538, "p_757->g_538", print_hash_value);
    transparent_crc(p_757->g_542, "p_757->g_542", print_hash_value);
    transparent_crc(p_757->g_543, "p_757->g_543", print_hash_value);
    transparent_crc(p_757->g_546, "p_757->g_546", print_hash_value);
    transparent_crc(p_757->g_548, "p_757->g_548", print_hash_value);
    transparent_crc(p_757->g_577.f0, "p_757->g_577.f0", print_hash_value);
    transparent_crc(p_757->g_590, "p_757->g_590", print_hash_value);
    transparent_crc(p_757->g_619.f0, "p_757->g_619.f0", print_hash_value);
    transparent_crc(p_757->g_636, "p_757->g_636", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_757->g_690[i], "p_757->g_690[i]", print_hash_value);

    }
    transparent_crc(p_757->g_712, "p_757->g_712", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_757->g_751[i][j], "p_757->g_751[i][j]", print_hash_value);

        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
