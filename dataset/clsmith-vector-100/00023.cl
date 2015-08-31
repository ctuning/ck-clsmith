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


// Seed: 23

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_14;
    uint32_t g_34;
    VECTOR(uint32_t, 8) g_38;
    uint16_t g_73[10][5];
    int32_t g_75;
    int32_t *g_77;
    int32_t ** volatile g_76;
    VECTOR(int32_t, 16) g_78;
    VECTOR(int8_t, 16) g_89;
    int8_t g_96;
    int32_t ** volatile g_98;
    int8_t *g_111;
    int8_t *g_113;
    VECTOR(int8_t, 2) g_114;
    VECTOR(int8_t, 16) g_115;
    VECTOR(int8_t, 16) g_116;
    int16_t g_118;
    uint8_t g_119[2];
    uint16_t g_163;
    uint64_t g_170;
    int64_t g_206[5];
    int32_t ** volatile g_210;
    uint64_t g_231;
    VECTOR(uint8_t, 2) g_273;
    VECTOR(uint8_t, 2) g_284;
    int64_t g_299;
    volatile VECTOR(int16_t, 8) g_311;
    uint64_t g_334;
    uint32_t *g_337;
    int32_t * volatile g_362;
    int32_t * volatile g_363[6];
    int32_t * volatile g_382[4];
    int32_t * volatile g_384;
    uint8_t *g_389;
    uint8_t **g_388;
    uint64_t g_393;
    int32_t ** volatile g_439;
    VECTOR(uint8_t, 2) g_476;
    uint64_t *g_508[5][2];
    uint64_t g_514;
    VECTOR(uint64_t, 4) g_543;
    VECTOR(uint64_t, 8) g_555;
    volatile VECTOR(uint64_t, 4) g_558;
    VECTOR(uint64_t, 8) g_563;
    uint8_t ***g_577[9][5];
    int32_t g_580;
    volatile VECTOR(int32_t, 4) g_586;
    uint64_t g_601;
    volatile int64_t g_606;
    volatile int64_t g_607[5][9];
    volatile int64_t g_608;
    volatile int64_t g_609;
    volatile int64_t g_610;
    volatile int64_t g_611;
    volatile int64_t g_612;
    volatile int64_t g_613;
    volatile int64_t g_614[8];
    volatile int64_t g_615[1][4];
    volatile int64_t g_616;
    volatile int64_t g_617;
    volatile int64_t g_618;
    volatile int64_t g_619[5][3];
    volatile int64_t g_620;
    volatile int64_t g_621;
    volatile int64_t g_622;
    volatile int64_t g_623;
    volatile int64_t g_624;
    volatile int64_t g_625;
    volatile int64_t g_626;
    volatile int64_t g_627[7];
    volatile int64_t g_628;
    volatile int64_t g_629;
    volatile int64_t g_630;
    volatile int64_t g_631;
    volatile int64_t g_632;
    volatile int64_t * volatile g_605[9][8][3];
    volatile int64_t * volatile *g_604;
    uint32_t g_672;
    int32_t ** volatile g_676;
    int8_t g_684;
    volatile int32_t g_685;
    int32_t g_691;
    int64_t g_750;
    VECTOR(uint64_t, 4) g_774;
    VECTOR(uint32_t, 8) g_775;
    volatile VECTOR(uint8_t, 8) g_799;
    volatile int16_t *g_800;
    int16_t *g_801;
    volatile VECTOR(int16_t, 4) g_810;
    volatile int8_t g_826;
    volatile int8_t *g_825;
    volatile int8_t * volatile * volatile g_824;
    volatile int8_t * volatile * volatile *g_823[3];
    VECTOR(int8_t, 4) g_859;
    volatile VECTOR(int8_t, 4) g_860;
    VECTOR(int16_t, 8) g_861;
    volatile VECTOR(int16_t, 2) g_862;
    VECTOR(int16_t, 8) g_863;
    VECTOR(int16_t, 4) g_865;
    volatile int32_t g_878;
    volatile int32_t *g_877;
    volatile int32_t **g_876[6];
    VECTOR(int16_t, 8) g_912;
    volatile VECTOR(int64_t, 2) g_915;
    volatile VECTOR(int64_t, 8) g_917;
    VECTOR(int64_t, 2) g_918;
    VECTOR(int64_t, 8) g_920;
    VECTOR(int64_t, 8) g_921;
    VECTOR(int64_t, 4) g_927;
    VECTOR(int64_t, 8) g_942;
    volatile VECTOR(int64_t, 16) g_943;
    VECTOR(int64_t, 8) g_949;
    volatile VECTOR(uint32_t, 2) g_977;
    VECTOR(int8_t, 16) g_983;
    VECTOR(int8_t, 4) g_984;
    volatile VECTOR(int32_t, 16) g_1005;
    VECTOR(uint16_t, 4) g_1017;
    volatile int64_t *g_1026;
    volatile int64_t **g_1025;
    VECTOR(int32_t, 4) g_1028;
    volatile VECTOR(int32_t, 4) g_1030;
    VECTOR(int32_t, 2) g_1033;
    volatile VECTOR(int32_t, 2) g_1034;
    int32_t ** volatile g_1059;
    int32_t ** volatile g_1074;
    volatile VECTOR(int32_t, 8) g_1076;
    volatile int16_t g_1078;
    VECTOR(int64_t, 4) g_1093;
    VECTOR(int64_t, 16) g_1094;
    int64_t g_1103;
    VECTOR(uint8_t, 16) g_1109;
    int32_t g_1116[5];
    int32_t **g_1136;
    VECTOR(uint64_t, 2) g_1169;
    VECTOR(int8_t, 2) g_1192;
    VECTOR(int8_t, 8) g_1194;
    VECTOR(int8_t, 8) g_1195;
    volatile VECTOR(uint8_t, 16) g_1212;
    uint16_t g_1227;
    uint16_t g_1228;
    VECTOR(int8_t, 4) g_1238;
    volatile VECTOR(int16_t, 16) g_1247;
    VECTOR(uint32_t, 8) g_1248;
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
uint8_t  func_1(struct S0 * p_1266);
int8_t  func_7(uint32_t  p_8, int32_t  p_9, uint32_t  p_10, int16_t  p_11, uint16_t  p_12, struct S0 * p_1266);
uint16_t  func_27(uint64_t  p_28, int64_t  p_29, uint64_t  p_30, struct S0 * p_1266);
uint64_t  func_31(uint32_t * p_32, uint64_t  p_33, struct S0 * p_1266);
int32_t  func_41(uint32_t  p_42, uint32_t * p_43, struct S0 * p_1266);
uint8_t  func_44(uint64_t  p_45, uint32_t * p_46, struct S0 * p_1266);
uint32_t * func_47(int32_t  p_48, struct S0 * p_1266);
uint16_t  func_52(uint32_t  p_53, uint32_t  p_54, uint32_t * p_55, int8_t  p_56, uint16_t  p_57, struct S0 * p_1266);
int32_t  func_58(int64_t  p_59, uint64_t  p_60, int8_t  p_61, uint64_t  p_62, struct S0 * p_1266);
uint32_t * func_67(uint16_t  p_68, int32_t  p_69, int8_t  p_70, int64_t  p_71, struct S0 * p_1266);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1266->g_34 p_1266->g_38 p_1266->g_73 p_1266->g_76 p_1266->g_78 p_1266->g_75 p_1266->g_113 p_1266->g_96 p_1266->g_77 p_1266->g_163 p_1266->g_114 p_1266->g_337 p_1266->g_170 p_1266->g_393 p_1266->g_273 p_1266->g_439 p_1266->g_206 p_1266->g_311 p_1266->g_231 p_1266->g_389 p_1266->g_119 p_1266->g_514 p_1266->g_299 p_1266->g_601 p_1266->g_586 p_1266->g_604 p_1266->g_543 p_1266->g_580 p_1266->g_672 p_1266->g_210 p_1266->g_691 p_1266->g_630 p_1266->g_116 p_1266->g_684 p_1266->g_89 p_1266->g_555 p_1266->g_476 p_1266->g_750 p_1266->g_615 p_1266->g_774 p_1266->g_775 p_1266->g_800 p_1266->g_801 p_1266->g_810 p_1266->g_631 p_1266->g_823 p_1266->g_118 p_1266->g_563 p_1266->g_859 p_1266->g_860 p_1266->g_861 p_1266->g_862 p_1266->g_863 p_1266->g_865 p_1266->g_824 p_1266->g_825 p_1266->g_826 p_1266->g_876 p_1266->g_912 p_1266->g_915 p_1266->g_917 p_1266->g_918 p_1266->g_920 p_1266->g_921 p_1266->g_927 p_1266->g_942 p_1266->g_943 p_1266->g_949 p_1266->g_14 p_1266->g_977 p_1266->g_983 p_1266->g_984 p_1266->g_1005 p_1266->g_1017 p_1266->g_612 p_1266->g_1025 p_1266->g_1028 p_1266->g_1030 p_1266->g_1033 p_1266->g_1034 p_1266->g_1059 p_1266->g_605 p_1266->g_1074 p_1266->g_1076 p_1266->g_1109 p_1266->g_1169 p_1266->g_620 p_1266->g_1192 p_1266->g_1194 p_1266->g_1195 p_1266->g_1094 p_1266->g_1212 p_1266->g_1136 p_1266->g_1227 p_1266->g_1238 p_1266->g_1247 p_1266->g_1248
 * writes: p_1266->g_14 p_1266->g_73 p_1266->g_77 p_1266->g_75 p_1266->g_337 p_1266->g_299 p_1266->g_388 p_1266->g_393 p_1266->g_206 p_1266->g_334 p_1266->g_34 p_1266->g_96 p_1266->g_38 p_1266->g_170 p_1266->g_163 p_1266->g_508 p_1266->g_514 p_1266->g_580 p_1266->g_601 p_1266->g_382 p_1266->g_691 p_1266->g_118 p_1266->g_801 p_1266->g_231 p_1266->g_750 p_1266->g_119 p_1266->g_920 p_1266->g_577 p_1266->g_1136 p_1266->g_672 p_1266->g_1094 p_1266->g_1228 p_1266->g_1028
 */
uint8_t  func_1(struct S0 * p_1266)
{ /* block id: 4 */
    int8_t l_4 = 0x7EL;
    uint32_t *l_13 = &p_1266->g_14;
    int32_t l_16 = 0x2CED45B0L;
    uint8_t l_21 = 0x78L;
    VECTOR(uint32_t, 2) l_22 = (VECTOR(uint32_t, 2))(0xEB8E136DL, 0x9220C436L);
    VECTOR(int16_t, 16) l_23 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x54AAL), 0x54AAL), 0x54AAL, (-1L), 0x54AAL, (VECTOR(int16_t, 2))((-1L), 0x54AAL), (VECTOR(int16_t, 2))((-1L), 0x54AAL), (-1L), 0x54AAL, (-1L), 0x54AAL);
    VECTOR(uint16_t, 4) l_26 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xDE2AL), 0xDE2AL);
    int32_t l_701 = 0x2D4D27EEL;
    uint64_t *l_702 = (void*)0;
    uint64_t *l_703 = (void*)0;
    uint64_t *l_704 = (void*)0;
    uint64_t *l_705 = (void*)0;
    uint64_t *l_706 = (void*)0;
    uint64_t *l_707[10][6][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_708 = 9L;
    int32_t l_736 = 0x7A7C6B1CL;
    int64_t l_737 = 0x49D0F47FF0A14277L;
    VECTOR(int32_t, 2) l_738 = (VECTOR(int32_t, 2))(0x4318BD54L, 0x681ED348L);
    uint64_t l_739 = 18446744073709551613UL;
    uint64_t *l_791 = &p_1266->g_231;
    VECTOR(int8_t, 2) l_858 = (VECTOR(int8_t, 2))(0x4EL, 0x55L);
    int32_t l_896 = 1L;
    uint64_t l_897 = 0xD51787AF39159126L;
    int8_t **l_900[6][6] = {{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111},{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111},{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111},{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111},{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111},{&p_1266->g_113,&p_1266->g_113,&p_1266->g_111,&p_1266->g_111,&p_1266->g_113,&p_1266->g_111}};
    int8_t **l_903 = &p_1266->g_111;
    VECTOR(int64_t, 4) l_914 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-3L)), (-3L));
    VECTOR(int64_t, 2) l_916 = (VECTOR(int64_t, 2))(0x539591FCDBC630A0L, (-1L));
    VECTOR(int64_t, 16) l_919 = (VECTOR(int64_t, 16))(0x1A39EBB396988E7AL, (VECTOR(int64_t, 4))(0x1A39EBB396988E7AL, (VECTOR(int64_t, 2))(0x1A39EBB396988E7AL, 0x33571E145E2FA28CL), 0x33571E145E2FA28CL), 0x33571E145E2FA28CL, 0x1A39EBB396988E7AL, 0x33571E145E2FA28CL, (VECTOR(int64_t, 2))(0x1A39EBB396988E7AL, 0x33571E145E2FA28CL), (VECTOR(int64_t, 2))(0x1A39EBB396988E7AL, 0x33571E145E2FA28CL), 0x1A39EBB396988E7AL, 0x33571E145E2FA28CL, 0x1A39EBB396988E7AL, 0x33571E145E2FA28CL);
    VECTOR(int64_t, 2) l_923 = (VECTOR(int64_t, 2))(0x4A23C3A1CA330447L, 0x1E820C57CF916CC8L);
    VECTOR(int64_t, 8) l_924 = (VECTOR(int64_t, 8))(0x1E6697C2C786F506L, (VECTOR(int64_t, 4))(0x1E6697C2C786F506L, (VECTOR(int64_t, 2))(0x1E6697C2C786F506L, 1L), 1L), 1L, 0x1E6697C2C786F506L, 1L);
    VECTOR(int64_t, 16) l_926 = (VECTOR(int64_t, 16))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x257E0129FAC1527BL), 0x257E0129FAC1527BL), 0x257E0129FAC1527BL, 8L, 0x257E0129FAC1527BL, (VECTOR(int64_t, 2))(8L, 0x257E0129FAC1527BL), (VECTOR(int64_t, 2))(8L, 0x257E0129FAC1527BL), 8L, 0x257E0129FAC1527BL, 8L, 0x257E0129FAC1527BL);
    VECTOR(int64_t, 2) l_928 = (VECTOR(int64_t, 2))(0x637FDE51E883CB38L, 6L);
    int32_t l_937 = 0x0F46C609L;
    VECTOR(int64_t, 8) l_947 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x619456E19BE3EC64L), 0x619456E19BE3EC64L), 0x619456E19BE3EC64L, 0L, 0x619456E19BE3EC64L);
    VECTOR(int64_t, 2) l_948 = (VECTOR(int64_t, 2))(9L, 1L);
    VECTOR(int64_t, 8) l_952 = (VECTOR(int64_t, 8))(0x2A6A551899B2D46AL, (VECTOR(int64_t, 4))(0x2A6A551899B2D46AL, (VECTOR(int64_t, 2))(0x2A6A551899B2D46AL, 0L), 0L), 0L, 0x2A6A551899B2D46AL, 0L);
    int16_t l_955 = (-1L);
    int16_t l_971 = 0x3E52L;
    uint16_t l_991 = 6UL;
    VECTOR(uint16_t, 8) l_1016 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x05AEL), 0x05AEL), 0x05AEL, 0UL, 0x05AEL);
    VECTOR(int32_t, 4) l_1031 = (VECTOR(int32_t, 4))(0x6549C834L, (VECTOR(int32_t, 2))(0x6549C834L, 0x0149BD4CL), 0x0149BD4CL);
    VECTOR(int32_t, 16) l_1032 = (VECTOR(int32_t, 16))(0x663D7BDDL, (VECTOR(int32_t, 4))(0x663D7BDDL, (VECTOR(int32_t, 2))(0x663D7BDDL, 0L), 0L), 0L, 0x663D7BDDL, 0L, (VECTOR(int32_t, 2))(0x663D7BDDL, 0L), (VECTOR(int32_t, 2))(0x663D7BDDL, 0L), 0x663D7BDDL, 0L, 0x663D7BDDL, 0L);
    VECTOR(int16_t, 2) l_1037 = (VECTOR(int16_t, 2))(0x06CBL, 7L);
    int16_t l_1042 = (-1L);
    int32_t l_1045 = 1L;
    int32_t *l_1088 = &p_1266->g_75;
    uint32_t l_1090 = 0UL;
    VECTOR(int32_t, 8) l_1091 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x43F04D4CL), 0x43F04D4CL), 0x43F04D4CL, 1L, 0x43F04D4CL);
    int8_t l_1148 = 0x04L;
    uint8_t ***l_1179 = &p_1266->g_388;
    int32_t l_1186 = 0x2A9667C3L;
    VECTOR(int16_t, 2) l_1189 = (VECTOR(int16_t, 2))((-6L), 0x72D5L);
    VECTOR(int64_t, 16) l_1202 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int64_t, 2))((-1L), 1L), (VECTOR(int64_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    int32_t ***l_1226 = (void*)0;
    int i, j, k;
    if (((safe_mod_func_uint8_t_u_u(l_4, ((safe_mul_func_int8_t_s_s(func_7(((*l_13) = 0xCBCEF054L), (((((safe_unary_minus_func_uint32_t_u((l_16 > (GROUP_DIVERGE(1, 1) ^ (safe_add_func_int32_t_s_s((-1L), (safe_sub_func_uint32_t_u_u(l_21, ((VECTOR(uint32_t, 2))(l_22.yy)).even)))))))) <= (l_708 &= (((VECTOR(int16_t, 8))(l_23.s41a80d1c)).s1 , ((l_701 = (((p_1266->g_206[0] = (safe_sub_func_uint32_t_u_u((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 2))(l_26.yx)), (uint16_t)func_27(func_31(l_13, p_1266->g_34, p_1266), l_21, l_22.x, p_1266), (uint16_t)p_1266->g_73[7][3]))).lo ^ 0x5DE7L), FAKE_DIVERGE(p_1266->local_2_offset, get_local_id(2), 10)))) && p_1266->g_630) == p_1266->g_116.s9)) && p_1266->g_684)))) == p_1266->g_89.s1) , l_26.w) && l_23.s6), p_1266->g_555.s2, l_22.y, p_1266->g_89.s8, p_1266), 0UL)) , l_16))) & p_1266->g_476.y))
    { /* block id: 267 */
        int32_t *l_735[3];
        uint8_t **l_804 = &p_1266->g_389;
        VECTOR(int16_t, 16) l_809 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x1922L), 0x1922L), 0x1922L, 1L, 0x1922L, (VECTOR(int16_t, 2))(1L, 0x1922L), (VECTOR(int16_t, 2))(1L, 0x1922L), 1L, 0x1922L, 1L, 0x1922L);
        int32_t l_841 = 8L;
        int i;
        for (i = 0; i < 3; i++)
            l_735[i] = &l_701;
lbl_778:
        l_739--;
        for (p_1266->g_601 = (-19); (p_1266->g_601 < 27); p_1266->g_601 = safe_add_func_int8_t_s_s(p_1266->g_601, 5))
        { /* block id: 271 */
            return (*p_1266->g_389);
        }
        for (p_1266->g_299 = 0; (p_1266->g_299 != 13); ++p_1266->g_299)
        { /* block id: 276 */
            int32_t l_761 = 0x2FEB685DL;
            int32_t l_762 = 0x1C341E6FL;
            int16_t *l_763 = &p_1266->g_118;
            uint64_t l_764 = 1UL;
            int32_t *l_765 = (void*)0;
            int32_t *l_766 = &l_16;
            uint32_t **l_767 = &l_13;
            uint64_t *l_792 = &p_1266->g_231;
            int8_t ***l_822 = (void*)0;
            uint64_t l_827 = 18446744073709551608UL;
            l_738.y = (safe_add_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s((((*l_767) = func_67(p_1266->g_750, ((*l_766) = ((VECTOR(int32_t, 16))((-1L), p_1266->g_631, (safe_lshift_func_int16_t_s_u((0x7FEE6383L == (((((safe_mul_func_uint8_t_u_u(((&p_1266->g_672 != (l_737 , l_735[1])) ^ (((safe_add_func_int8_t_s_s((l_764 = ((*p_1266->g_113) ^= (p_1266->g_608 ^ (((((*l_763) = (safe_rshift_func_uint16_t_u_u(l_737, ((l_762 &= (((void*)0 != &p_1266->g_388) , l_761)) , 0xCBE4L)))) == 0x3C8AL) > 0UL) , FAKE_DIVERGE(p_1266->local_0_offset, get_local_id(0), 10))))), 0UL)) >= l_761) | l_761)), l_761)) < p_1266->g_393) , &l_735[1]) == &p_1266->g_77) >= 0x24A7L)), l_761)), p_1266->g_299, ((VECTOR(int32_t, 8))(0x4C88921BL)), l_764, p_1266->g_116.s1, (-9L), 6L)).s3), p_1266->g_73[7][3], l_761, p_1266)) == &p_1266->g_672), 10)) , p_1266->g_615[0][0]), 2L));
            if ((safe_mod_func_uint8_t_u_u(l_22.y, (((*p_1266->g_113) != (1L == ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 4))(p_1266->g_774.zzyy)).hi, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 16))(p_1266->g_775.s6160314441451600)).s346e, ((VECTOR(uint32_t, 2))(0x1F1FE3BBL, 0UL)).yyyx))).odd))) << ((VECTOR(uint64_t, 2))(64))))).even)) & (safe_lshift_func_uint8_t_u_u(l_761, 3))))))
            { /* block id: 284 */
                int32_t l_831 = 1L;
                int32_t l_837 = 1L;
                VECTOR(int32_t, 4) l_844 = (VECTOR(int32_t, 4))(0x37915BA1L, (VECTOR(int32_t, 2))(0x37915BA1L, 0x22C4FDA0L), 0x22C4FDA0L);
                int i;
                if (l_708)
                    goto lbl_778;
                (*p_1266->g_210) = (*p_1266->g_210);
                if (l_22.y)
                    break;
                for (p_1266->g_580 = (-20); (p_1266->g_580 <= 10); p_1266->g_580 = safe_add_func_uint8_t_u_u(p_1266->g_580, 2))
                { /* block id: 290 */
                    int32_t l_785 = 0x49F08157L;
                    int32_t l_834 = 1L;
                    int32_t l_835 = 7L;
                    VECTOR(int32_t, 8) l_836 = (VECTOR(int32_t, 8))(0x1FE6DA95L, (VECTOR(int32_t, 4))(0x1FE6DA95L, (VECTOR(int32_t, 2))(0x1FE6DA95L, 0x10936DA2L), 0x10936DA2L), 0x10936DA2L, 0x1FE6DA95L, 0x10936DA2L);
                    int64_t l_842[5] = {0x4F24665EAC0188C1L,0x4F24665EAC0188C1L,0x4F24665EAC0188C1L,0x4F24665EAC0188C1L,0x4F24665EAC0188C1L};
                    int i;
                    for (l_736 = (-13); (l_736 > 4); l_736++)
                    { /* block id: 293 */
                        int32_t **l_784 = (void*)0;
                        int32_t ***l_783 = &l_784;
                        uint64_t **l_790[2];
                        int16_t **l_802[9][5] = {{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763},{&p_1266->g_801,&p_1266->g_801,&l_763,&p_1266->g_801,&l_763}};
                        uint8_t **l_803[4][4] = {{&p_1266->g_389,&p_1266->g_389,&p_1266->g_389,&p_1266->g_389},{&p_1266->g_389,&p_1266->g_389,&p_1266->g_389,&p_1266->g_389},{&p_1266->g_389,&p_1266->g_389,&p_1266->g_389,&p_1266->g_389},{&p_1266->g_389,&p_1266->g_389,&p_1266->g_389,&p_1266->g_389}};
                        uint32_t **l_805 = (void*)0;
                        int32_t **l_806 = &l_735[1];
                        VECTOR(int16_t, 8) l_811 = (VECTOR(int16_t, 8))(0x07FCL, (VECTOR(int16_t, 4))(0x07FCL, (VECTOR(int16_t, 2))(0x07FCL, 0x106AL), 0x106AL), 0x106AL, 0x07FCL, 0x106AL);
                        int32_t l_828 = 0L;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_790[i] = &p_1266->g_508[3][1];
                        (*l_783) = (void*)0;
                        (*l_806) = ((l_785 != (((safe_lshift_func_uint8_t_u_s(((l_791 = &p_1266->g_231) == (l_792 = l_792)), l_785)) ^ ((safe_lshift_func_int16_t_s_u((p_1266->g_118 = l_785), (((((((*p_1266->g_113) = (1UL != 8UL)) ^ (safe_lshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_u(((((VECTOR(uint8_t, 8))(p_1266->g_799.s71073156)).s1 , p_1266->g_800) == (p_1266->g_801 = p_1266->g_801)), 0)), 3))) , l_803[2][3]) == l_804) , &l_13) == l_805))) < GROUP_DIVERGE(1, 1))) != l_785)) , (void*)0);
                        l_828 ^= ((safe_lshift_func_int8_t_s_u(l_761, (1UL > ((((((((*l_763) |= ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(l_809.s3ed48ca55b2248f2)).s62, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x67E0L, (-4L))) || ((VECTOR(int16_t, 2))(p_1266->g_810.yz)))))))).yyyyyyxyxyxxyyxx, ((VECTOR(int16_t, 2))(l_811.s21)).xxyyxyyyyxyxxyxx, ((VECTOR(int16_t, 16))(((safe_mul_func_int8_t_s_s((*p_1266->g_113), ((*p_1266->g_210) != &p_1266->g_580))) ^ 0x11FFF1C5L), (((safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u((((safe_sub_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u(((((void*)0 != (*l_767)) | p_1266->g_774.w) , p_1266->g_170), p_1266->g_631)) , l_822) != p_1266->g_823[2]), 0UL)) <= (*p_1266->g_113)) & l_26.y), 0x5E0FF363BF8DD0BCL)), 0L)) && 0x667FL) > 0x9FL), (-9L), ((VECTOR(int16_t, 2))(0x6D2CL)), ((VECTOR(int16_t, 4))(0x6FC8L)), 0L, 0x137FL, ((VECTOR(int16_t, 4))(0x45F5L)), 0x4335L))))).sa0 && ((VECTOR(int16_t, 2))((-1L)))))).xxxx && ((VECTOR(int16_t, 4))(0x0633L))))).x) & 0x073DL) <= 1L) || p_1266->g_38.s1) ^ l_827) >= p_1266->g_38.s7) & 1UL)))) , (**p_1266->g_439));
                    }
                    for (p_1266->g_231 = 0; (p_1266->g_231 == 41); p_1266->g_231++)
                    { /* block id: 306 */
                        int16_t l_832 = 0x6E44L;
                        int32_t l_833 = 0x10751D3DL;
                        int32_t l_838 = 8L;
                        int32_t l_839 = (-6L);
                        int32_t l_840 = 0L;
                        int32_t l_843 = 0x204EA309L;
                        uint64_t l_845 = 18446744073709551612UL;
                        l_831 |= (+l_761);
                        l_845--;
                        if (l_21)
                            break;
                    }
                    return l_844.x;
                }
            }
            else
            { /* block id: 313 */
                if ((**p_1266->g_439))
                    break;
            }
        }
    }
    else
    { /* block id: 317 */
        VECTOR(uint16_t, 16) l_852 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x631CL), 0x631CL), 0x631CL, 65535UL, 0x631CL, (VECTOR(uint16_t, 2))(65535UL, 0x631CL), (VECTOR(uint16_t, 2))(65535UL, 0x631CL), 65535UL, 0x631CL, 65535UL, 0x631CL);
        VECTOR(uint16_t, 2) l_853 = (VECTOR(uint16_t, 2))(0UL, 1UL);
        VECTOR(int16_t, 16) l_864 = (VECTOR(int16_t, 16))(0x42A7L, (VECTOR(int16_t, 4))(0x42A7L, (VECTOR(int16_t, 2))(0x42A7L, 0x7EF1L), 0x7EF1L), 0x7EF1L, 0x42A7L, 0x7EF1L, (VECTOR(int16_t, 2))(0x42A7L, 0x7EF1L), (VECTOR(int16_t, 2))(0x42A7L, 0x7EF1L), 0x42A7L, 0x7EF1L, 0x42A7L, 0x7EF1L);
        int32_t *l_879 = &p_1266->g_580;
        int i;
        (*l_879) |= ((((p_1266->g_89.s7 != p_1266->g_563.s0) || ((safe_rshift_func_int8_t_s_u((!((*p_1266->g_113) ^= (FAKE_DIVERGE(p_1266->group_1_offset, get_group_id(1), 10) < ((&p_1266->g_382[3] != (void*)0) & ((((l_707[6][4][1] != &p_1266->g_231) ^ (((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(l_852.s8ff7715eca90abed)).sd5, ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))(l_853.xy)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(65535UL, (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((-2L), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(l_858.yyyxxxyyyxxxyxxy)).s95 >= ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(p_1266->g_859.xxywzwyzzzyyzxyx)).s7d0e, ((VECTOR(int8_t, 4))(p_1266->g_860.zwww))))).even))), (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((!((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(p_1266->g_775.s5, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 16))((!((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(p_1266->g_861.s2464123100052367)) && ((VECTOR(int16_t, 2))(p_1266->g_862.xx)).yyyxyxyxyyyyyyxy))).sb8 & ((VECTOR(int16_t, 2))(p_1266->g_863.s04))))), 0x3189L, (-1L))) >= ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(7L, ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(l_864.s47cf64344fa140ca)) < ((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(p_1266->g_865.zyxyyxxxyzxxzxxz)) && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(0x46A0L, ((VECTOR(int16_t, 2))(0x383EL, 0x3B5DL)), (safe_lshift_func_uint16_t_u_u(0x9867L, (safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((void*)0 == &p_1266->g_508[0][0]), l_852.s9)), l_26.x)), l_852.s8)), l_852.s3)))), 0x3E10L, ((VECTOR(int16_t, 8))(3L)), ((VECTOR(int16_t, 2))(1L)), 0x10F0L)) && ((VECTOR(int16_t, 16))(0x3F3EL)))))))).sc948 == ((VECTOR(int16_t, 4))(2L))))), ((VECTOR(int16_t, 4))(0x77FBL))))).yxzwzzyx, ((VECTOR(int16_t, 8))(1L))))).s0477565231470702))).se7, ((VECTOR(int16_t, 2))(0x61E3L))))), (-6L))))))))).yzzwwzyyxxyzwwyy, (int16_t)(-1L)))), ((VECTOR(int16_t, 16))((-3L))), ((VECTOR(int16_t, 16))(0x6BB3L)))))))).s64, ((VECTOR(int16_t, 2))((-2L)))))), 0x4BADL, ((VECTOR(int16_t, 2))((-1L))), 0x642DL, 0x508FL)).s4450527433567450 && ((VECTOR(int16_t, 16))(9L))))).odd, ((VECTOR(uint16_t, 8))(65534UL))))).s7566045034164255 && ((VECTOR(int32_t, 16))(0x3B5DA25BL))))).s0896 != ((VECTOR(int32_t, 4))(1L))))) && ((VECTOR(int32_t, 4))(1L))))).hi && ((VECTOR(int32_t, 2))((-6L)))))).yxyyyxyy == ((VECTOR(int32_t, 8))(0x12F9D060L)))))))) && ((VECTOR(int32_t, 8))((-2L)))))).s3772434365030675 && ((VECTOR(int32_t, 16))(0x46FFBBCCL))))).sa5 != ((VECTOR(int32_t, 2))(3L))))).hi , (**p_1266->g_824)), ((VECTOR(int8_t, 2))((-1L))), 9L, 0L)) && ((VECTOR(int8_t, 8))(0x4CL))))).lo, ((VECTOR(int8_t, 4))(0x05L))))).x, 0x0BL)), 0xE8E0L, 0x73B8L)) + ((VECTOR(uint16_t, 4))(65532UL))))).lo))).yyyxxyxxxyyyxxxy, ((VECTOR(uint16_t, 16))(65535UL))))).s35))).even <= 0x82D7L)) && 1UL) >= l_864.sc))))), FAKE_DIVERGE(p_1266->group_2_offset, get_group_id(2), 10))) ^ (*p_1266->g_337))) , p_1266->g_876[1]) != &p_1266->g_877);
    }
    if (l_21)
    { /* block id: 321 */
        uint16_t l_880 = 0x09CEL;
        int64_t *l_881 = &p_1266->g_750;
        int32_t *l_884 = (void*)0;
        int32_t *l_885 = &l_736;
        (*p_1266->g_77) = (+((*l_885) ^= ((((0x0BL == l_880) != (4294967289UL >= (*p_1266->g_337))) & ((((((*l_881) ^= (l_21 & l_23.s6)) , (safe_div_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) | (-4L)), (*p_1266->g_337)))) , 0x6CC86E96L) ^ 0x7403F0CEL) && 255UL)) | 18446744073709551607UL)));
    }
    else
    { /* block id: 325 */
        int32_t *l_886 = (void*)0;
        int32_t *l_887 = &l_708;
        int32_t *l_888 = &p_1266->g_75;
        int32_t l_889 = 0x7C39CBEBL;
        int32_t *l_890 = &l_889;
        int32_t *l_891 = (void*)0;
        int32_t *l_892 = &p_1266->g_691;
        int32_t *l_893 = (void*)0;
        int32_t *l_894 = (void*)0;
        int32_t *l_895[2][8] = {{(void*)0,&p_1266->g_75,&p_1266->g_691,&p_1266->g_75,(void*)0,(void*)0,&p_1266->g_75,&p_1266->g_691},{(void*)0,&p_1266->g_75,&p_1266->g_691,&p_1266->g_75,(void*)0,(void*)0,&p_1266->g_75,&p_1266->g_691}};
        int8_t ***l_901 = (void*)0;
        int8_t ***l_902 = &l_900[4][3];
        VECTOR(int32_t, 16) l_911 = (VECTOR(int32_t, 16))(0x45AC5A84L, (VECTOR(int32_t, 4))(0x45AC5A84L, (VECTOR(int32_t, 2))(0x45AC5A84L, 1L), 1L), 1L, 0x45AC5A84L, 1L, (VECTOR(int32_t, 2))(0x45AC5A84L, 1L), (VECTOR(int32_t, 2))(0x45AC5A84L, 1L), 0x45AC5A84L, 1L, 0x45AC5A84L, 1L);
        VECTOR(int64_t, 2) l_913 = (VECTOR(int64_t, 2))(0x6980DE6750CA1D51L, 0x6FC250FFD158DCCEL);
        VECTOR(int64_t, 8) l_922 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        VECTOR(int64_t, 2) l_925 = (VECTOR(int64_t, 2))(2L, (-6L));
        VECTOR(int64_t, 2) l_940 = (VECTOR(int64_t, 2))(6L, 0x1F524DF0287D58E7L);
        VECTOR(int64_t, 16) l_941 = (VECTOR(int64_t, 16))(0x70A5D357B7751DC6L, (VECTOR(int64_t, 4))(0x70A5D357B7751DC6L, (VECTOR(int64_t, 2))(0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL), 0x3948F2127F7EA81DL), 0x3948F2127F7EA81DL, 0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL, (VECTOR(int64_t, 2))(0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL), (VECTOR(int64_t, 2))(0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL), 0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL, 0x70A5D357B7751DC6L, 0x3948F2127F7EA81DL);
        VECTOR(int64_t, 4) l_944 = (VECTOR(int64_t, 4))(0x2AC472D707C0DEC1L, (VECTOR(int64_t, 2))(0x2AC472D707C0DEC1L, 0x4F0B1ED638CB1C18L), 0x4F0B1ED638CB1C18L);
        VECTOR(int64_t, 8) l_945 = (VECTOR(int64_t, 8))(0x3FA28EE5991ED9DCL, (VECTOR(int64_t, 4))(0x3FA28EE5991ED9DCL, (VECTOR(int64_t, 2))(0x3FA28EE5991ED9DCL, 3L), 3L), 3L, 0x3FA28EE5991ED9DCL, 3L);
        VECTOR(int64_t, 16) l_946 = (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L, (VECTOR(int64_t, 2))((-5L), 1L), (VECTOR(int64_t, 2))((-5L), 1L), (-5L), 1L, (-5L), 1L);
        VECTOR(int64_t, 16) l_950 = (VECTOR(int64_t, 16))(0x34DFDF85E30527C5L, (VECTOR(int64_t, 4))(0x34DFDF85E30527C5L, (VECTOR(int64_t, 2))(0x34DFDF85E30527C5L, 0L), 0L), 0L, 0x34DFDF85E30527C5L, 0L, (VECTOR(int64_t, 2))(0x34DFDF85E30527C5L, 0L), (VECTOR(int64_t, 2))(0x34DFDF85E30527C5L, 0L), 0x34DFDF85E30527C5L, 0L, 0x34DFDF85E30527C5L, 0L);
        VECTOR(int64_t, 16) l_951 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x39165956395B0EDEL), 0x39165956395B0EDEL), 0x39165956395B0EDEL, (-1L), 0x39165956395B0EDEL, (VECTOR(int64_t, 2))((-1L), 0x39165956395B0EDEL), (VECTOR(int64_t, 2))((-1L), 0x39165956395B0EDEL), (-1L), 0x39165956395B0EDEL, (-1L), 0x39165956395B0EDEL);
        VECTOR(int8_t, 16) l_953 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int8_t, 2))(6L, 1L), (VECTOR(int8_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
        int32_t l_954 = 0x7E34EF4BL;
        uint16_t *l_994 = &p_1266->g_73[7][3];
        uint8_t ***l_999 = &p_1266->g_388;
        int32_t l_1048 = 3L;
        int32_t l_1050 = 0x1AAA497AL;
        int64_t l_1054 = 0x49C1671E9530305FL;
        int32_t **l_1077[8][8] = {{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892,&l_892}};
        uint8_t l_1099[6][10][4] = {{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}}};
        int32_t *l_1122 = (void*)0;
        int32_t **l_1121 = &l_1122;
        int32_t ***l_1120 = &l_1121;
        uint8_t *l_1137[5];
        VECTOR(uint32_t, 4) l_1149 = (VECTOR(uint32_t, 4))(0x61BF8F9AL, (VECTOR(uint32_t, 2))(0x61BF8F9AL, 0UL), 0UL);
        uint8_t l_1150 = 0x43L;
        int32_t l_1197[7][6][6] = {{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}},{{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L},{0x325F2068L,0x7F4F7E60L,0L,1L,0x78A73B1AL,0x325F2068L}}};
        uint16_t l_1198 = 1UL;
        uint32_t l_1229 = 0x186A7F06L;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1137[i] = &p_1266->g_119[0];
        l_897++;
        if (((VECTOR(int32_t, 16))((((*l_902) = l_900[4][3]) != l_903), (((*l_890) = (safe_sub_func_uint64_t_u_u((safe_div_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(8L, 0x0B9268C2L)).yyyxxyyx))).s53, ((VECTOR(int32_t, 16))(6L, ((*l_892) |= l_701), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(l_911.s60c84f43c2e3cc8b)).s0785, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(p_1266->g_912.s37)).yyyyyyxxxyyyxxxy, (int16_t)((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x2052153A0C1F5395L, 0x693284278B6F61B5L)), 0x238D0DF4E493A853L, (-1L))) <= ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(l_913.xy)).xxyxyxyyyxyxxyyy > ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(l_914.xx)).yxxx ^ ((VECTOR(int64_t, 8))((!((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(p_1266->g_915.xyyyxyxy)).hi && ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(l_916.xyxyyyxx)).s51, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(p_1266->g_917.s0533)).zyxyyzzzyxwyzxwy & ((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(p_1266->g_918.yx)), ((VECTOR(int64_t, 2))(l_919.s90)), ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(p_1266->g_920.s5055)).wzzzwywx && ((VECTOR(int64_t, 2))(p_1266->g_921.s43)).xxyxyyyy))).s05))).yyxyxxyyyyyyxxxy))).s935b, ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x4C8A899B3BEB897EL, 0x08DCEDD801E24E65L)), 0x2F994141D5998E6EL, (-10L), ((VECTOR(int64_t, 2))(l_922.s20)).odd, ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))(l_923.xyyyyxyyyyyyxxxy)).s00f3))).even && ((VECTOR(int64_t, 4))(l_924.s0657)).odd))).yyyxxyyxxxyyxxxx >= ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_925.yy)), 1L, 0x628C98153ABB5230L)).zyxwzzyzzwwyyxxx))).s28 <= ((VECTOR(int64_t, 8))(0x32D9A09DC056D605L, ((VECTOR(int64_t, 4))(l_926.sd1a3)).x, 0x40E92088C259EE56L, 0x476F449ED7E04CB4L, (-8L), ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(0x3A384D1CB582FE4BL, ((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(0x57C96ED3EA796037L, 0x3939CF9E7C652166L)).xyxy, ((VECTOR(int64_t, 4))(p_1266->g_927.wyzy)), ((VECTOR(int64_t, 2))(l_928.yx)).xyyx))).yzzxzzxx | ((VECTOR(int64_t, 8))((safe_rshift_func_int16_t_s_u(((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((!((safe_lshift_func_int16_t_s_s(((l_937 , &p_1266->g_388) != ((&p_1266->g_206[0] == ((safe_rshift_func_uint8_t_u_u(((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(1L, 0x134B6F22027A830BL)), (-9L), 0x241C89E3E23FF4B8L)) && ((VECTOR(int64_t, 2))(l_940.xx)).xyxy))).odd && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_941.s353e49c92cb7d72e)) & ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 2))(p_1266->g_942.s52)).xyyx, ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(p_1266->g_943.se3)).xxxx, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(l_944.yw)).yxxy && ((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(l_945.s61)).xxxxyxxyxyyyxyxx, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_946.s683984fca92e1185)) && ((VECTOR(int64_t, 16))(l_947.s7361236417442503)))))))).s9cfc))))))))), l_26.w, 0x542E5E7D1429341FL, 0x36F05A4ED4E0C418L, 0L)).s7731770374175130))).even && ((VECTOR(int64_t, 4))(l_948.yyxx)).yxywxxzy))).s31))).xxxyxxyy || ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((-1L), (-3L))).yxxxxxyyxyxxyxxy & ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 2))(p_1266->g_949.s50)).yxxy, ((VECTOR(int64_t, 2))(l_950.sd5)).yxyx))).xzxwzzxy, ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(0x7D568F11E2605D23L, (-3L)))))), (-2L), 1L)).zwyyxxxxxwzwwwyy, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(l_951.s554f488e4a7360aa)).s6bce, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(l_952.s4506)), ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))(3L, (-1L), (0xAC84D4F1L & (((FAKE_DIVERGE(p_1266->global_2_offset, get_global_id(2), 10) && ((*p_1266->g_389) ^= (l_953.se < (*l_887)))) && 0UL) != (-1L))), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(0x2C40EC52C762E0C6L)), 0x306B303FB35ACAE9L)).s45, ((VECTOR(int64_t, 2))(0L))))).xyxy)))))).wzzwwxzzywzyzxyx))).hi))).s7072246463604466))).even))).even & ((VECTOR(int64_t, 4))(0x7C5CE6994E46B4F0L))))).z != (*l_887)) <= l_21), 1)) , &p_1266->g_206[1])) , &p_1266->g_388)), 15)) , l_897)), l_954)), p_1266->g_273.y)) , 0x370CL), p_1266->g_34)), l_926.sd, l_947.s7, (-3L), p_1266->g_949.s0, ((VECTOR(int64_t, 2))((-1L))), (-1L)))))).even, ((VECTOR(int64_t, 4))((-4L)))))).hi))), ((VECTOR(int64_t, 2))(0x1D7E141D01D7D629L))))), ((VECTOR(int64_t, 2))(0x11F40FDD51D85147L)), l_948.y, 0x2649154CABAFEB8CL, 7L)) > ((VECTOR(int64_t, 8))(1L))))).s02 && ((VECTOR(int64_t, 2))(0x6A12E3BC92210867L))))).xxxxxxxx, ((VECTOR(int64_t, 8))((-3L))), ((VECTOR(int64_t, 8))(0x28257E19EECA2D44L))))).s51 > ((VECTOR(int64_t, 2))(1L))))).xxxyyyxyxyxyxyxx && ((VECTOR(int64_t, 16))(0x7625B43FC1E36B42L))))).s15, ((VECTOR(int64_t, 2))(0x0237D806A1F36DDDL)), ((VECTOR(int64_t, 2))(0L))))).xxxxxyxyyyyxyyyy | ((VECTOR(int64_t, 16))(2L))))).odd, (int64_t)0L, (int64_t)(*l_888)))).s04, ((VECTOR(int64_t, 2))((-10L)))))) && ((VECTOR(int64_t, 2))(0x745917D5A8CCC7F5L))))), 0x72CC59C31FBA936DL)).s65))), ((VECTOR(int64_t, 2))(0x5B1157C7B9A45390L))))), 9L)) && ((VECTOR(int64_t, 8))(0x7924975BE41D4B9BL))))).lo, ((VECTOR(int64_t, 4))(5L)))))))), ((VECTOR(int64_t, 4))(0x58DD289557CC87FFL)), l_923.x, ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 2))(0x119FDECB7F864C11L)), 0x366DDA2701DD6E08L)).odd == ((VECTOR(int64_t, 8))(0x4280ED5B8CDCA2D2L))))).s05))).yxyx && ((VECTOR(int64_t, 4))(0x651A4035D2C3BFBAL))))) | ((VECTOR(int64_t, 4))(0x40128AF82EB6402AL))))), ((VECTOR(int64_t, 4))(1L)))).s6571111662023106 | ((VECTOR(int64_t, 16))(0x5C7B8841E12334B4L))))).scae3))).yzxyzwwy))).even))).yzxyzyxzxxxwzxwy))).s7f2d && ((VECTOR(int64_t, 4))(0x585C71D87661ED0EL))))).odd, ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 2))(0x6D63B5AC4C6124A9L))))).xxyy))).w , 0xE9L) || l_897)))) && ((VECTOR(int16_t, 16))(1L))))).s48, ((VECTOR(uint16_t, 2))(0xF653L))))).xyyx))) > ((VECTOR(int32_t, 4))(0x2273CAF7L))))), ((VECTOR(int32_t, 2))((-7L))), l_955, 0L, 0x3D80FE59L, (*l_887), ((VECTOR(int32_t, 2))(0x3E4403FFL)), (-10L), 0x6BF9042EL)).se5))), l_22.x, 0L, (-9L), ((VECTOR(int32_t, 2))(0x5AEEAAA6L)), 0x7DB64C34L, 0x3CE7CC50L, 0x219796CAL, ((VECTOR(int32_t, 2))(0x431170C5L)), ((VECTOR(int32_t, 2))(0x257BA343L)), 0x68AC6D9EL, 0x72726628L)).s0)) == p_1266->g_601), l_4)) , 0x560DL), p_1266->g_865.z)), 0xB43389FE517F9EC7L))) <= 6L), (-1L), l_739, ((VECTOR(int32_t, 2))(0x1D1E3147L)), 0x5C66F1C3L, 0x1872DD87L, (**p_1266->g_439), 0x71222AB4L, (**p_1266->g_76), 0L, ((VECTOR(int32_t, 2))(0x2A0AB341L)), (-6L), 1L)).se)
        { /* block id: 331 */
            int16_t l_969 = 0x28F2L;
            uint8_t ***l_1000 = &p_1266->g_388;
            VECTOR(int32_t, 2) l_1035 = (VECTOR(int32_t, 2))(0L, (-5L));
            int i;
            for (p_1266->g_14 = 5; (p_1266->g_14 < 9); ++p_1266->g_14)
            { /* block id: 334 */
                uint32_t l_964 = 5UL;
                uint64_t *l_970 = (void*)0;
                for (p_1266->g_514 = 26; (p_1266->g_514 < 55); p_1266->g_514++)
                { /* block id: 337 */
                    int8_t l_974 = 6L;
                    VECTOR(int64_t, 8) l_987 = (VECTOR(int64_t, 8))(0x13151C22B0D7CDBFL, (VECTOR(int64_t, 4))(0x13151C22B0D7CDBFL, (VECTOR(int64_t, 2))(0x13151C22B0D7CDBFL, (-7L)), (-7L)), (-7L), 0x13151C22B0D7CDBFL, (-7L));
                    int i;
                    l_738.x = (safe_add_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s(((((p_1266->g_860.y | FAKE_DIVERGE(p_1266->group_0_offset, get_group_id(0), 10)) != 0xA5A6E1F6B5D4114CL) , (void*)0) != (void*)0), ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((-10L), (((((((*p_1266->g_113) = l_964) <= 0x5AL) & (*p_1266->g_337)) >= ((((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(l_964, (((VECTOR(uint32_t, 4))(1UL, 0xDF973714L, 4294967295UL, 0xE6B188C2L)).y ^ (-3L)))), 8L)) , l_969) , l_970) != l_970)) <= l_964) , p_1266->g_75), l_708, p_1266->g_775.s4, 0x595B7CC969E8BFB6L, ((VECTOR(int64_t, 4))(0x3B78143C42468718L)), l_971, ((VECTOR(int64_t, 2))(0x42DB276EB429D0B4L)), 0x5E1C7110678B0635L, l_964, 0x5DFCF5F9875EA0EDL, 1L)) && ((VECTOR(int64_t, 16))(0x58C26BABD708CE62L))))).sa)) , GROUP_DIVERGE(0, 1)), p_1266->g_601));
                    if ((safe_rshift_func_int8_t_s_s(l_974, 4)))
                    { /* block id: 340 */
                        uint8_t *l_978 = &l_21;
                        int64_t *l_988 = (void*)0;
                        int64_t *l_989 = (void*)0;
                        int64_t *l_990 = (void*)0;
                        (*p_1266->g_77) ^= (safe_rshift_func_uint8_t_u_u(((*l_978) |= (((0x59B79189L && l_974) ^ ((VECTOR(uint32_t, 16))(p_1266->g_977.yxxyxxyxyyxxxyxy)).sd) , ((*p_1266->g_389) = (&p_1266->g_508[4][1] == (void*)0)))), (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))((-2L), (safe_add_func_int64_t_s_s((!p_1266->g_34), 0x397CAF822B8A006BL)), ((VECTOR(int8_t, 8))(p_1266->g_983.sb313d3e7)), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(p_1266->g_984.xyzzxxxxwyxzyxxy)).s15b6, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((-7L), 0x51L, (safe_add_func_int32_t_s_s(((void*)0 != &p_1266->g_877), (((l_991 = ((VECTOR(int64_t, 8))(l_987.s15753704)).s7) > (safe_add_func_int8_t_s_s(((0x54CAL | p_1266->g_750) , l_919.s0), 0x7DL))) != l_955))), (-8L), ((VECTOR(int8_t, 2))(0L)), (-8L), ((VECTOR(int8_t, 8))(0x47L)), 1L)).s9, 0x5EL, (*l_892), ((VECTOR(int8_t, 4))(0x3FL)), 0L)).even))), 1L, (-1L))) || ((VECTOR(int8_t, 16))((-1L)))))).s6, 0x06L))));
                        if (l_974)
                            break;
                    }
                    else
                    { /* block id: 346 */
                        return (*p_1266->g_389);
                    }
                    return l_964;
                }
                if (l_969)
                    continue;
            }
lbl_1073:
            if (((*p_1266->g_77) = ((*l_887) = (&p_1266->g_73[2][1] != (l_994 = &p_1266->g_163)))))
            { /* block id: 356 */
                uint8_t ****l_997 = (void*)0;
                uint8_t ****l_998 = &p_1266->g_577[1][0];
                int64_t *l_1001 = (void*)0;
                int64_t *l_1002 = (void*)0;
                int64_t *l_1003 = (void*)0;
                int64_t *l_1004 = &p_1266->g_206[0];
                int32_t l_1010 = 0x055F2701L;
                VECTOR(uint32_t, 2) l_1011 = (VECTOR(uint32_t, 2))(0x161CC82BL, 0x34ED20C8L);
                uint16_t *l_1020 = &p_1266->g_73[7][3];
                VECTOR(int32_t, 4) l_1036 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 7L), 7L);
                uint16_t l_1056 = 0x5AEFL;
                int i;
                (*l_890) = (**p_1266->g_76);
                (*l_887) = ((*p_1266->g_77) = (safe_mod_func_int64_t_s_s((p_1266->g_920.s6 = (&p_1266->g_876[1] == &p_1266->g_876[1])), ((((*l_998) = &p_1266->g_388) == (l_1000 = l_999)) , ((*l_1004) ^= (*l_887))))));
                if (l_736)
                    goto lbl_1073;
                if (((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(p_1266->g_1005.sbcd2a229d514949b)).hi, ((VECTOR(int32_t, 8))(((safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(0x6AL, 5L, (-1L), 0L)).y, 1)), (5L != l_1010))) , (*p_1266->g_77)), (((((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 2))(l_1011.yy)).xyyxyyyx, ((VECTOR(uint32_t, 4))((safe_add_func_int32_t_s_s((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 4))(l_1016.s2733)).hi, ((VECTOR(uint16_t, 4))(p_1266->g_1017.zyyw)).hi))).yxxy, ((VECTOR(uint16_t, 8))(((*l_1020) |= (safe_div_func_int8_t_s_s(((*l_892) , ((1L ^ p_1266->g_612) < (((*l_994) = 4UL) == 0x2F17L))), (l_1011.x & 0x2CE7AB5CL)))), ((VECTOR(uint16_t, 4))(65535UL)), 0xFCAEL, 0UL, 0xB2C8L)).lo))).y, 0x2D45L)), 0L)), ((VECTOR(uint32_t, 2))(4294967295UL)), 0xE6308C4EL)).zyyzyzzy))).s3 , 18446744073709551612UL) <= p_1266->g_750) & 0xBA68L), 0x007340A1L, ((VECTOR(int32_t, 4))(0x42819C94L)), 0L))))).lo, ((VECTOR(int32_t, 4))(0x11926C6DL))))).w)
                { /* block id: 366 */
                    return l_1011.x;
                }
                else
                { /* block id: 368 */
                    VECTOR(int32_t, 4) l_1027 = (VECTOR(int32_t, 4))(0x37C9A6C9L, (VECTOR(int32_t, 2))(0x37C9A6C9L, 0x3E691D4CL), 0x3E691D4CL);
                    VECTOR(int32_t, 8) l_1029 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2B0A11AEL), 0x2B0A11AEL), 0x2B0A11AEL, 0L, 0x2B0A11AEL);
                    uint32_t **l_1046 = &l_13;
                    int i;
                    if ((safe_sub_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((p_1266->g_1025 == &p_1266->g_1026), l_969)), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(l_1027.yw)).xyyy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(p_1266->g_1028.yxyzyxxw)).s3, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(l_1029.s25)).yxyyxyyx, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(p_1266->g_1030.yx)).xyyxxxyy, ((VECTOR(int32_t, 16))(l_1031.yxywyzxxyzyyxwxx)).lo))), ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_1032.sc5962af2)).s51 & ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(p_1266->g_1033.xxxyyyyy)).hi || ((VECTOR(int32_t, 8))(p_1266->g_1034.xyxxxyyy)).even))).even, ((VECTOR(int32_t, 8))(0x42D3748BL, 1L, 0L, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(0x08BD21D3L, 0x5A226FE9L, (-6L), 0x2CE095D4L)) && ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_1035.yxyxyyyyxyyyxyxy)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1036.wzzw)), (l_1011.x && (((*p_1266->g_337) & ((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_1037.xy)), 0x7F45L, 0L)).y , 1UL) <= (l_1027.z = (safe_sub_func_uint64_t_u_u((*l_888), (safe_sub_func_uint8_t_u_u(l_1042, ((*p_1266->g_113) = ((safe_mul_func_uint8_t_u_u(((l_1036.y = (((*l_1004) |= (l_896 , l_947.s7)) || p_1266->g_920.s6)) | l_1045), (**p_1266->g_824))) >= (*p_1266->g_113)))))))))) || l_1011.y)), 0L, ((VECTOR(int32_t, 8))(2L)), 0x59727427L, (-1L))), ((VECTOR(int32_t, 16))((-3L)))))).s6947))).even && ((VECTOR(int32_t, 2))(0x4ED04E4CL))))) & ((VECTOR(int32_t, 2))(1L))))), ((VECTOR(int32_t, 2))((-3L)))))), (*l_887), 0x11F55F48L, 0x05A4DBD2L)).s17, ((VECTOR(int32_t, 2))(1L)))))))).yyxyxxyy ^ ((VECTOR(int32_t, 8))(1L))))).s3601541354467306 ^ ((VECTOR(int32_t, 16))(0x28F873A3L))))) && ((VECTOR(int32_t, 16))(0x10AF66BEL))))).lo))).s52, (int32_t)l_1027.w, (int32_t)(**p_1266->g_210)))), ((VECTOR(int32_t, 4))(0L)), (-1L))).even))).z)))
                    { /* block id: 373 */
                        VECTOR(int8_t, 4) l_1047 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-9L)), (-9L));
                        int32_t l_1049 = 0x4FF48768L;
                        int32_t l_1051 = (-1L);
                        int32_t l_1052 = 0L;
                        int32_t l_1053 = (-1L);
                        int32_t l_1055 = (-1L);
                        int i;
                        l_1027.z &= (((&p_1266->g_1026 == (void*)0) != 0x4F9BL) == ((&p_1266->g_337 == l_1046) | ((VECTOR(int8_t, 8))(l_1047.yxywxwxw)).s6));
                        if (p_1266->g_750)
                            goto lbl_1075;
                        ++l_1056;
                        l_892 = &l_736;
                    }
                    else
                    { /* block id: 377 */
                        uint64_t l_1060 = 8UL;
                        (*p_1266->g_1059) = &l_1010;
                        if (p_1266->g_393)
                            goto lbl_1063;
                        (*l_887) = ((l_1035.y <= l_969) , (-1L));
lbl_1063:
                        --l_1060;
                        (*l_888) = (((~(safe_div_func_uint16_t_u_u(0x3FEAL, l_969))) <= ((safe_unary_minus_func_uint64_t_u((safe_mul_func_uint16_t_u_u(0x5685L, (safe_unary_minus_func_uint32_t_u(4294967295UL)))))) < (safe_rshift_func_uint8_t_u_u(((*p_1266->g_604) != (void*)0), (((void*)0 == &l_21) , (l_1031.y == 0xE7L)))))) == 0x38L);
                    }
                    (*p_1266->g_77) = l_1036.x;
                }
            }
            else
            { /* block id: 386 */
                int32_t **l_1072 = &l_895[0][4];
                (*p_1266->g_76) = (*p_1266->g_76);
                (*l_892) = 0x035DB60EL;
                (*l_1072) = (void*)0;
                return (*p_1266->g_389);
            }
lbl_1075:
            (*p_1266->g_1074) = &l_736;
            l_1045 = ((VECTOR(int32_t, 16))(p_1266->g_1076.s6566674733101456)).sd;
        }
        else
        { /* block id: 396 */
            uint32_t l_1079 = 0xDE184A1EL;
            (*p_1266->g_77) |= ((void*)0 != l_1077[5][7]);
            l_1079++;
            for (p_1266->g_34 = 5; (p_1266->g_34 != 3); p_1266->g_34 = safe_sub_func_int8_t_s_s(p_1266->g_34, 2))
            { /* block id: 401 */
                int64_t l_1089 = (-1L);
                for (p_1266->g_231 = 0; (p_1266->g_231 == 37); p_1266->g_231++)
                { /* block id: 404 */
                    for (l_21 = 0; (l_21 < 11); l_21 = safe_add_func_uint16_t_u_u(l_21, 7))
                    { /* block id: 407 */
                        l_1088 = (void*)0;
                        return l_1089;
                    }
                }
                if (l_1090)
                    break;
            }
        }
lbl_1256:
        if (((VECTOR(int32_t, 4))(l_1091.s1556)).z)
        { /* block id: 415 */
            int8_t l_1092 = (-1L);
            return l_1092;
        }
        else
        { /* block id: 417 */
            int8_t *l_1102[2][7][9] = {{{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1266->g_684,(void*)0,(void*)0,&p_1266->g_684,&p_1266->g_684,(void*)0,(void*)0}}};
            VECTOR(uint8_t, 8) l_1108 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
            int64_t *l_1111[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t **l_1110 = &l_1111[1];
            int32_t l_1112 = 4L;
            int i, j, k;
lbl_1115:
            l_1112 ^= ((*l_1088) <= ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(p_1266->g_1093.yxyzzxwy)).s4112277463425164, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))(p_1266->g_1094.sd8)).xyyyxyyxyyxyyxyy | ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(0x3913A1EABB0F2375L, (safe_mod_func_uint64_t_u_u((((safe_rshift_func_uint8_t_u_u((l_1099[3][9][3] || (p_1266->g_1103 = (safe_mod_func_int8_t_s_s(((*p_1266->g_824) == l_1102[1][4][0]), (*p_1266->g_113))))), (((((((safe_rshift_func_uint8_t_u_u((*l_888), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_1108.s3303)) + ((VECTOR(uint8_t, 4))(p_1266->g_1109.s4c00))))).z)) , (*p_1266->g_1025)) == ((*l_1110) = &p_1266->g_206[0])) , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(p_1266->g_284.y, 0x61BA7017F6E5CEA8L, l_1108.s6, ((VECTOR(int64_t, 2))(0x71F285D42814AEFCL)), 0x4113F30EF00AA4FAL, 0x3986AA8C0BD873A0L, 0x4608F7F540D011FBL)).s52 && ((VECTOR(int64_t, 2))(0x3614E960DDE51DB5L))))), 0x55A71E72700F2270L, ((VECTOR(int64_t, 2))(0x0A5B2E4CD848878BL)), ((VECTOR(int64_t, 2))(0L)), 0x224A9A67AD9C1B67L)).s7) >= l_1108.s6) > (*l_892)) , 248UL))) == (*l_1088)) | (*l_1088)), p_1266->g_863.s2)), ((VECTOR(int64_t, 2))(0x6FC6CA76D9EF0995L)), ((VECTOR(int64_t, 4))(0x6BC80831F14E4F26L)))).lo, ((VECTOR(int64_t, 4))(0L))))).xzxxxyyz && ((VECTOR(int64_t, 8))(0L))))).s42 | ((VECTOR(int64_t, 2))(9L))))).yyxxyxyy && ((VECTOR(int64_t, 8))((-6L)))))).s36, ((VECTOR(int64_t, 2))(0x025541B7BDC1929EL))))).xyxx && ((VECTOR(int64_t, 4))(1L))))).yyyzzwwxxxwxxzwx))).s4f37 && ((VECTOR(int64_t, 4))(0x2008069EDCC2613CL))))).zyxyyyxzyxxzyzzz))).s1);
            for (l_1050 = 28; (l_1050 > (-8)); l_1050--)
            { /* block id: 423 */
                uint32_t l_1117 = 4294967295UL;
                if (p_1266->g_580)
                    goto lbl_1115;
                ++l_1117;
            }
        }
        if ((l_1120 != &p_1266->g_876[1]))
        { /* block id: 428 */
            uint8_t ****l_1128 = &p_1266->g_577[8][3];
            uint8_t *****l_1127 = &l_1128;
            VECTOR(uint64_t, 4) l_1129 = (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x12DD8DF990D044C5L), 0x12DD8DF990D044C5L);
            int32_t ***l_1134 = (void*)0;
            int32_t ***l_1135[10] = {&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7],&l_1077[5][7]};
            uint32_t *l_1151 = &p_1266->g_672;
            uint32_t l_1182 = 0xA34D7041L;
            int8_t l_1196 = 4L;
            uint64_t **l_1236 = &p_1266->g_508[1][0];
            int16_t *l_1237[6][7] = {{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971},{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971},{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971},{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971},{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971},{(void*)0,&l_971,&l_1042,&l_971,(void*)0,(void*)0,&l_971}};
            uint64_t l_1253 = 0x8691672BE34B474BL;
            uint8_t l_1260 = 0x62L;
            int i, j;
            if (((+(**p_1266->g_824)) < ((safe_mul_func_uint8_t_u_u((((*l_1151) &= ((*l_13) = ((((*l_1088) | (safe_add_func_uint64_t_u_u(((((*l_1127) = (void*)0) == ((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(l_1129.xywyzxzyxwzwywxz)).s1a02, (uint64_t)(safe_lshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(((p_1266->g_1136 = &p_1266->g_77) == (p_1266->g_984.x , &l_895[1][0])), ((void*)0 != l_1137[0]))), (safe_sub_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0UL, 0xE8L)) + ((VECTOR(uint8_t, 16))((((safe_mul_func_int16_t_s_s((0x221BL != l_1148), l_1149.x)) != (*p_1266->g_389)) | GROUP_DIVERGE(0, 1)), (*l_1088), (*l_1088), 0x33L, 0x21L, 0x77L, ((VECTOR(uint8_t, 8))(255UL)), 0x1EL, 255UL)).scf)))))).odd, (*l_1088))), (*l_1088))), l_1150))))))), p_1266->g_918.y, (*l_1088), 0x52D88E59A9AA3AA8L, 1UL)).s5 & p_1266->g_1109.s9) , &p_1266->g_577[7][0])) & 65535UL), p_1266->g_119[1]))) ^ 0UL) , (*p_1266->g_337)))) > 0x1570F899L), (*p_1266->g_389))) , 1UL)))
            { /* block id: 433 */
                uint64_t l_1152 = 0xA0FA1162CA4EF0B9L;
                uint64_t l_1155 = 4UL;
                VECTOR(uint8_t, 2) l_1156 = (VECTOR(uint8_t, 2))(0x02L, 0UL);
                int32_t l_1157 = (-8L);
                int32_t l_1185 = 0x35E73A41L;
                VECTOR(int8_t, 2) l_1193 = (VECTOR(int8_t, 2))(0x5DL, 3L);
                int8_t *l_1239 = (void*)0;
                int i;
                l_1152++;
                if (((*l_1088) = ((*p_1266->g_113) != (((*p_1266->g_337) & FAKE_DIVERGE(p_1266->global_2_offset, get_global_id(2), 10)) >= (l_1155 != ((VECTOR(uint8_t, 4))(l_1156.yxxx)).w)))))
                { /* block id: 436 */
                    uint16_t l_1158 = 65531UL;
                    VECTOR(uint64_t, 2) l_1170 = (VECTOR(uint64_t, 2))(0UL, 0x820ECF2160D16219L);
                    int32_t l_1199 = 1L;
                    int i;
                    l_1158--;
                    (*l_1088) = (safe_mod_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(0x93L, (*l_1088))), ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(p_1266->g_1169.yyyxyxxxxxxxxyyx)) + ((VECTOR(uint64_t, 4))(l_1170.xxxy)).zwwxwwzyzwyyxyww))).sc, p_1266->g_620)) & (*p_1266->g_113))));
                    (*l_887) ^= (l_1199 = (safe_lshift_func_int16_t_s_u(l_1157, (safe_lshift_func_int8_t_s_s((l_1155 && ((p_1266->g_1094.sa |= (((VECTOR(uint64_t, 2))(4UL, 1UL)).odd , (safe_div_func_int64_t_s_s((safe_add_func_uint16_t_u_u((((VECTOR(int32_t, 16))(((p_1266->g_119[1] >= 0x5405BA8F31BEDC6FL) , ((VECTOR(int32_t, 16))(0x74A74E01L, (l_1179 == (((safe_mod_func_int64_t_s_s((((l_1182 = 0xBCL) > (safe_mul_func_int16_t_s_s((0x7D2E048CL >= (++(*p_1266->g_337))), p_1266->g_631))) == (~((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_1189.yx)), 0L, 0x1D6DL)).odd, ((VECTOR(int16_t, 2))(0L, 0x2305L))))).hi)), (((l_1185 = (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(p_1266->g_1192.xx)), ((VECTOR(int8_t, 16))(l_1193.xxyxyxyxxxyxxxyx)).s54))).xyxyyxxyyyyyxxyx & ((VECTOR(int8_t, 8))(p_1266->g_1194.s53561002)).s3003052466200234))).s8c, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((~((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(p_1266->g_1195.s4760)).yywwwyzywwzxywyz, (int8_t)(l_1170.y ^ 0x5BA4152EL)))).hi))), 0x3AL, ((VECTOR(int8_t, 4))(1L)), (*l_890), 1L, 0L)) > ((VECTOR(int8_t, 16))(8L))))).s01a9 || ((VECTOR(int8_t, 4))(0x66L))))).ywzxwyxwxzzwyxyw, ((VECTOR(int8_t, 16))(0x68L))))) <= ((VECTOR(int8_t, 16))(0x39L))))).sdd, ((VECTOR(int8_t, 2))((-1L))), ((VECTOR(int8_t, 2))(0x15L)))))))), (int8_t)3L))).yxxy && ((VECTOR(int8_t, 4))(0x5FL))))).even < ((VECTOR(int8_t, 2))(0x54L))))), l_1156.x, (*p_1266->g_113), ((VECTOR(int8_t, 4))(7L)))).s3715163441164140))).s8, (*p_1266->g_113)))) , p_1266->g_73[7][3]) , GROUP_DIVERGE(1, 1)))) | 0x404033DAL) , l_999)), ((VECTOR(int32_t, 4))(0x0EAF1BFAL)), 0L, (*l_1088), ((VECTOR(int32_t, 4))((-5L))), ((VECTOR(int32_t, 4))((-1L))))).se), ((VECTOR(int32_t, 4))(0x02C63EDEL)), (-5L), 0x063ADE86L, 0x52580F7AL, 0x294CE916L, 1L, (-1L), (*l_1088), 0x6DF3C24EL, ((VECTOR(int32_t, 2))(0x269816FDL)), 0x1AEAD507L)).s2 && (-1L)), l_1196)), 18446744073709551614UL)))) , l_1197[0][4][2])), l_1198)))));
                }
                else
                { /* block id: 445 */
                    int16_t l_1207 = 1L;
                    uint8_t l_1225 = 6UL;
                    int64_t l_1240 = (-1L);
                    p_1266->g_1028.x |= (~((((VECTOR(int64_t, 8))(l_1202.s67c81daa)).s5 < (((GROUP_DIVERGE(1, 1) , (safe_mul_func_int8_t_s_s(0L, (safe_add_func_uint16_t_u_u(0x1344L, (((0L > (l_1207 , ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(0x0DL, 0x16L, 1L, ((safe_div_func_int32_t_s_s(((safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(p_1266->g_1212.s6aeaad523edc23a0)).sa, (safe_sub_func_uint64_t_u_u((p_1266->g_1228 = ((safe_add_func_int32_t_s_s((**p_1266->g_1136), ((&p_1266->g_118 == &p_1266->g_118) == (safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((((safe_rshift_func_uint16_t_u_u((&p_1266->g_1136 == (((*p_1266->g_389) ^= ((((((safe_lshift_func_int8_t_s_s((&l_21 == &l_21), 4)) ^ 0x602AL) == l_1225) , (-1L)) ^ 0x6CL) ^ p_1266->g_514)) , l_1226)), 12)) == 0x5A6BE7EC11D03355L) && 0xA4F8C31EFB1E2B9DL), l_1193.x)), p_1266->g_1227))))) , GROUP_DIVERGE(1, 1))), 0xAD744479B67AFA5DL)))) , l_1157), 0x100C98F0L)) < 0x18L), ((VECTOR(int8_t, 4))(5L)), ((VECTOR(int8_t, 4))(0x22L)), 0x62L, (*p_1266->g_113), (-1L), 1L)).s09, (int8_t)(-8L)))) && ((VECTOR(int8_t, 2))((-6L)))))).xyxxyxyyyyyyyxxy, ((VECTOR(int8_t, 16))((-10L)))))).s1bff && ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(int8_t, 4))(0x30L))))) && ((VECTOR(int8_t, 4))(9L))))).y)) | p_1266->g_921.s6) > l_1229)))))) & p_1266->g_116.s1) <= l_1193.y)) & (-1L)));
                    (*l_887) |= ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(5L, ((*p_1266->g_825) >= (safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((*l_890), (((*p_1266->g_337) ^ (((*p_1266->g_113) , l_1236) == ((l_1237[5][5] != (void*)0) , &p_1266->g_508[3][1]))) & ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(5L, (-1L))), 7L, 0L)).hi, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1266->g_1238.xwzwxywzyzywzzxx)).odd && ((VECTOR(int8_t, 8))(0x79L, (&p_1266->g_96 != l_1239), 0x44L, 0x26L, 0x6DL, (*p_1266->g_113), 7L, 0x17L))))).lo | ((VECTOR(int8_t, 4))(0x29L))))).lo))).hi))) || (*l_1088)), 0x29423409A72B36AEL)), l_1240))), 9L, l_1193.y, 0x3972E331L, 0L, 0x03CF43AAL, 0x6D106FCBL, ((VECTOR(int32_t, 8))(0x0DD2B7B2L)))), ((VECTOR(int32_t, 16))(1L))))).se;
                }
                (*p_1266->g_76) = func_67((l_1185 & (((safe_sub_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((!(l_1193.x == ((&p_1266->g_877 != (void*)0) && ((VECTOR(int16_t, 8))(p_1266->g_1247.s6bdfdf1f)).s5))) , (**p_1266->g_210)))), ((VECTOR(uint32_t, 16))(p_1266->g_1248.s4451146630515741)).sd)) | ((((((((p_1266->g_1028.z = l_1157) ^ ((((((*l_1088) , (-1L)) , (safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(0x76F7L, 4)), (*p_1266->g_389)))) , l_1088) == l_1151) > 0x19L)) && (**p_1266->g_1136)) || 0xDE5EL) || FAKE_DIVERGE(p_1266->group_0_offset, get_group_id(0), 10)) >= 5UL) , 0x0E885A378DC99606L) != GROUP_DIVERGE(2, 1))) <= (-5L))), p_1266->g_921.s3, l_1253, p_1266->g_918.y, p_1266);
            }
            else
            { /* block id: 453 */
                uint16_t l_1259 = 65535UL;
                for (l_1148 = (-1); (l_1148 < (-26)); l_1148 = safe_sub_func_uint32_t_u_u(l_1148, 9))
                { /* block id: 456 */
                    int32_t l_1263 = (-10L);
                    (*l_888) = (**p_1266->g_210);
                    if (l_736)
                        goto lbl_1256;
                    l_1263 |= (safe_lshift_func_uint8_t_u_u((l_1259 , (l_1260 ^ (**p_1266->g_1074))), (safe_lshift_func_int8_t_s_s((&l_1151 == &l_13), 3))));
                }
            }
        }
        else
        { /* block id: 462 */
            for (l_1198 = 0; (l_1198 == 20); l_1198++)
            { /* block id: 465 */
                (*p_1266->g_1136) = (*p_1266->g_1059);
            }
        }
    }
    return (*p_1266->g_389);
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_96 p_1266->g_113 p_1266->g_75 p_1266->g_170 p_1266->g_76 p_1266->g_77
 * writes: p_1266->g_96 p_1266->g_206 p_1266->g_118 p_1266->g_170 p_1266->g_73 p_1266->g_77 p_1266->g_75
 */
int8_t  func_7(uint32_t  p_8, int32_t  p_9, uint32_t  p_10, int16_t  p_11, uint16_t  p_12, struct S0 * p_1266)
{ /* block id: 251 */
    uint8_t l_713[9];
    int64_t *l_718 = (void*)0;
    int64_t *l_719 = &p_1266->g_206[0];
    int8_t **l_723 = &p_1266->g_111;
    int8_t ***l_722 = &l_723;
    int16_t *l_724 = &p_1266->g_118;
    int8_t l_729 = (-1L);
    uint64_t *l_730 = (void*)0;
    uint16_t *l_731 = &p_1266->g_73[5][4];
    int32_t *l_732 = &p_1266->g_691;
    int32_t *l_733 = &p_1266->g_75;
    int32_t **l_734 = &p_1266->g_77;
    int i;
    for (i = 0; i < 9; i++)
        l_713[i] = 255UL;
    for (p_1266->g_96 = 0; (p_1266->g_96 != 12); ++p_1266->g_96)
    { /* block id: 254 */
        if (p_8)
            break;
        return (*p_1266->g_113);
    }
    l_732 = func_67(((*l_731) = ((safe_mod_func_int16_t_s_s(((p_1266->g_170 &= (+(l_713[0] <= (safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(((l_713[0] > ((*l_719) = (-3L))) != (safe_sub_func_uint64_t_u_u(((((*l_724) = (((*l_722) = &p_1266->g_111) != &p_1266->g_113)) ^ (safe_mul_func_uint16_t_u_u(p_9, p_1266->g_75))) <= (safe_div_func_int16_t_s_s((0x19199B12616A31A7L ^ l_713[4]), p_12))), l_729))), p_8)), 0xF29E9B0D0FBCB248L))))) ^ p_8), 7UL)) <= p_12)), p_10, l_729, p_11, p_1266);
    (*l_734) = l_733;
    (*l_734) = (*l_734);
    return (**l_734);
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_389 p_1266->g_119 p_1266->g_77 p_1266->g_580
 * writes: p_1266->g_580
 */
uint16_t  func_27(uint64_t  p_28, int64_t  p_29, uint64_t  p_30, struct S0 * p_1266)
{ /* block id: 245 */
    int8_t l_696[10][1];
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_696[i][j] = (-1L);
    }
    (*p_1266->g_77) &= (safe_sub_func_int64_t_s_s(p_28, (safe_rshift_func_int16_t_s_u(((*p_1266->g_389) ^ (((l_696[3][0] , (l_696[7][0] >= 4294967288UL)) >= 0x22C2BC04EAC21058L) == ((&p_1266->g_206[2] == (void*)0) == (safe_lshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(l_696[3][0], l_696[3][0])), 9))))), 9))));
    return l_696[3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_38 p_1266->g_34 p_1266->g_73 p_1266->g_76 p_1266->g_78 p_1266->g_75 p_1266->g_113 p_1266->g_96 p_1266->g_77 p_1266->g_163 p_1266->g_114 p_1266->g_337 p_1266->g_170 p_1266->g_393 p_1266->g_273 p_1266->g_439 p_1266->g_206 p_1266->g_311 p_1266->g_231 p_1266->g_389 p_1266->g_119 p_1266->g_514 p_1266->g_299 p_1266->g_601 p_1266->g_586 p_1266->g_604 p_1266->g_543 p_1266->g_580 p_1266->g_672 p_1266->g_210 p_1266->g_691 p_1266->g_630
 * writes: p_1266->g_73 p_1266->g_77 p_1266->g_75 p_1266->g_337 p_1266->g_299 p_1266->g_388 p_1266->g_393 p_1266->g_206 p_1266->g_334 p_1266->g_34 p_1266->g_96 p_1266->g_38 p_1266->g_170 p_1266->g_163 p_1266->g_508 p_1266->g_514 p_1266->g_580 p_1266->g_601 p_1266->g_382 p_1266->g_691
 */
uint64_t  func_31(uint32_t * p_32, uint64_t  p_33, struct S0 * p_1266)
{ /* block id: 6 */
    int8_t l_37[7];
    int16_t *l_670 = &p_1266->g_118;
    uint32_t *l_671 = &p_1266->g_672;
    uint16_t l_689 = 0xD740L;
    int32_t *l_690 = &p_1266->g_691;
    int i;
    for (i = 0; i < 7; i++)
        l_37[i] = 1L;
    (*l_690) |= ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x6658L, 0x9D1FL)), 65535UL, 0x7C41L)).w == (safe_mod_func_uint32_t_u_u((0x294FE874L & l_37[3]), l_37[3]))) , (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0x29BAD2CEL, ((VECTOR(uint32_t, 2))(p_1266->g_38.s02)).lo, ((VECTOR(uint32_t, 2))(0x2C643D43L, 0x632CAC24L)), 4294967295UL, 4294967291UL, 0x53BDBB38L, 0UL)), ((safe_div_func_int32_t_s_s(func_41(((func_44(p_1266->g_34, func_47(p_1266->g_38.s5, p_1266), p_1266) >= (safe_add_func_uint64_t_u_u(p_1266->g_543.z, ((safe_lshift_func_int8_t_s_s((l_670 != (void*)0), l_37[0])) >= l_37[3])))) == l_37[3]), l_671, p_1266), l_689)) , l_37[4]), 0x0C41C215L, ((VECTOR(uint32_t, 4))(0xB949EDCBL)), 6UL, 0UL)).s3 , (**p_1266->g_210)));
    return p_1266->g_630;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_73 p_1266->g_580 p_1266->g_672 p_1266->g_75 p_1266->g_77
 * writes: p_1266->g_580 p_1266->g_77 p_1266->g_382 p_1266->g_73
 */
int32_t  func_41(uint32_t  p_42, uint32_t * p_43, struct S0 * p_1266)
{ /* block id: 234 */
    int32_t *l_673 = &p_1266->g_580;
    int32_t **l_674 = &l_673;
    int32_t **l_675 = &p_1266->g_77;
    int32_t *l_678 = &p_1266->g_75;
    int32_t **l_677[2];
    uint16_t *l_681 = &p_1266->g_73[7][3];
    uint32_t l_686 = 0x4B3F2E38L;
    int i;
    for (i = 0; i < 2; i++)
        l_677[i] = &l_678;
    (*l_673) = (-1L);
    p_1266->g_382[3] = ((*l_675) = ((*l_674) = l_673));
    (**l_675) = ((safe_rshift_func_int16_t_s_u((-1L), ((*l_681)++))) , ((*l_673) , (p_1266->g_672 , (*l_678))));
    l_686--;
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_75 p_1266->g_439 p_1266->g_206 p_1266->g_34 p_1266->g_311 p_1266->g_77 p_1266->g_113 p_1266->g_231 p_1266->g_170 p_1266->g_73 p_1266->g_389 p_1266->g_119 p_1266->g_514 p_1266->g_76 p_1266->g_299 p_1266->g_601 p_1266->g_586 p_1266->g_96 p_1266->g_604
 * writes: p_1266->g_75 p_1266->g_77 p_1266->g_206 p_1266->g_334 p_1266->g_34 p_1266->g_96 p_1266->g_38 p_1266->g_170 p_1266->g_163 p_1266->g_73 p_1266->g_508 p_1266->g_514 p_1266->g_580 p_1266->g_601
 */
uint8_t  func_44(uint64_t  p_45, uint32_t * p_46, struct S0 * p_1266)
{ /* block id: 141 */
    VECTOR(uint16_t, 16) l_444 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 6UL), 6UL), 6UL, 65535UL, 6UL, (VECTOR(uint16_t, 2))(65535UL, 6UL), (VECTOR(uint16_t, 2))(65535UL, 6UL), 65535UL, 6UL, 65535UL, 6UL);
    uint8_t *l_452 = &p_1266->g_119[1];
    int32_t *l_460[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
    uint64_t *l_479 = &p_1266->g_393;
    uint32_t l_517 = 0UL;
    VECTOR(uint64_t, 2) l_546 = (VECTOR(uint64_t, 2))(8UL, 18446744073709551615UL);
    uint32_t l_579 = 0UL;
    uint64_t l_645 = 0x138077C11F9D273BL;
    int32_t **l_665 = &l_460[0][0];
    int i, j;
    for (p_1266->g_75 = 0; (p_1266->g_75 < 18); ++p_1266->g_75)
    { /* block id: 144 */
        int64_t *l_447 = &p_1266->g_206[0];
        int32_t l_453[6][1];
        int8_t *l_454 = (void*)0;
        uint32_t *l_455 = (void*)0;
        uint32_t *l_456 = (void*)0;
        uint32_t *l_457[2];
        int32_t l_458 = (-8L);
        VECTOR(int64_t, 8) l_472 = (VECTOR(int64_t, 8))(0x7DC570532AEFEA07L, (VECTOR(int64_t, 4))(0x7DC570532AEFEA07L, (VECTOR(int64_t, 2))(0x7DC570532AEFEA07L, (-1L)), (-1L)), (-1L), 0x7DC570532AEFEA07L, (-1L));
        int32_t *l_488 = &l_453[3][0];
        uint8_t **l_496 = (void*)0;
        uint32_t l_524 = 0xF6126A05L;
        int64_t *l_634 = (void*)0;
        int64_t **l_633 = &l_634;
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 1; j++)
                l_453[i][j] = 1L;
        }
        for (i = 0; i < 2; i++)
            l_457[i] = (void*)0;
        (*p_1266->g_439) = p_46;
        if ((0x22L >= ((p_1266->g_38.s7 = ((+(((safe_add_func_int32_t_s_s((safe_add_func_uint64_t_u_u(18446744073709551615UL, ((((VECTOR(uint16_t, 16))(l_444.sbbbdeea9648359dc)).s1 && l_444.sc) >= (((l_453[5][0] = ((*p_1266->g_113) = ((safe_mod_func_int64_t_s_s(((*l_447) &= (&p_1266->g_34 == &p_1266->g_34)), (p_1266->g_334 = l_444.s5))) <= ((*p_1266->g_77) = ((3UL | (*p_46)) > (safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s((((void*)0 != l_452) >= l_453[3][0]), 65533UL)), p_1266->g_311.s6))))))) ^ 1L) <= 0x6ABEDDEFL)))), 0x2D54F6AAL)) ^ 0xAFF3L) > 2UL)) , GROUP_DIVERGE(2, 1))) & l_458)))
        { /* block id: 152 */
            int32_t **l_459[3][3][8] = {{{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77}},{{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77}},{{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77},{&p_1266->g_77,&p_1266->g_77,&p_1266->g_77,(void*)0,&p_1266->g_77,(void*)0,&p_1266->g_77,&p_1266->g_77}}};
            VECTOR(uint64_t, 4) l_471 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 7UL), 7UL);
            VECTOR(int16_t, 4) l_475 = (VECTOR(int16_t, 4))(0x4E2BL, (VECTOR(int16_t, 2))(0x4E2BL, 1L), 1L);
            int16_t l_480 = 1L;
            int64_t *l_484 = &p_1266->g_299;
            int8_t **l_512 = &p_1266->g_113;
            VECTOR(uint64_t, 4) l_551 = (VECTOR(uint64_t, 4))(0xAC239B0F8A24E734L, (VECTOR(uint64_t, 2))(0xAC239B0F8A24E734L, 0UL), 0UL);
            VECTOR(uint64_t, 2) l_570 = (VECTOR(uint64_t, 2))(0x63C3624845C51F54L, 0xD8BF1780C6A4EFCEL);
            VECTOR(int32_t, 8) l_585 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L);
            VECTOR(uint16_t, 2) l_590 = (VECTOR(uint16_t, 2))(5UL, 1UL);
            int i, j, k;
            l_460[4][0] = &l_453[3][0];
            if (p_45)
                break;
            if (l_453[2][0])
            { /* block id: 155 */
                uint8_t *l_481[3][3][2] = {{{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]}},{{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]}},{{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]},{&p_1266->g_119[0],&p_1266->g_119[0]}}};
                int32_t l_482 = (-1L);
                int32_t l_483 = 0x3305B458L;
                int i, j, k;
                l_483 ^= (l_482 = ((((p_1266->g_231 , (safe_div_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((((&p_1266->g_389 == (void*)0) == (p_1266->g_170 |= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((~((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(0x0A3B46806480FB5EL, 0xC526AD30FCC5BC92L, ((VECTOR(uint64_t, 2))(l_471.wy)), ((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 16))(l_472.s3173307002254261)).s02aa, ((VECTOR(int64_t, 2))(0x12A5A835021C40D5L, 0x68FE203E2B563DE0L)).yyxx))))).s6516016614450337 + ((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))(5UL, (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_475.yywwzwzxxyzyzxzy)).s1, (p_1266->g_476.y = 0x6A66L))), (+((*l_479) = (p_45 >= ((safe_mul_func_uint16_t_u_u(p_45, p_45)) == ((&p_1266->g_334 == l_479) , l_458))))), p_1266->g_231, l_480, 18446744073709551615UL, 18446744073709551615UL, 0x601E299AFC117155L)).even, ((VECTOR(uint64_t, 4))(0x0CE7697A093A2CDBL))))).yyywxxwyyxxwxzzx))).odd << ((VECTOR(uint64_t, 8))(64))))).s0, GROUP_DIVERGE(0, 1), 0x8E8E86E3B2CB94F7L, 18446744073709551612UL)).xzxwyzwzzxzxxwwx, ((VECTOR(uint64_t, 16))(0xCBDD5B9DC072A49AL))))).sabad >> ((VECTOR(uint64_t, 4))(0x058DEB099D3C5BBEL))))).odd))), 0xE90DF656C0A4B4C9L, 0x188AB16EAAB6BBE2L)).z)) , p_45), 7)), 18446744073709551606UL))) | 8L) , l_454) != l_481[2][2][1]));
                if (l_482)
                    break;
                (*p_1266->g_77) &= p_45;
            }
            else
            { /* block id: 163 */
                int64_t **l_485 = &l_484;
                int32_t l_489[10];
                uint16_t l_520 = 5UL;
                VECTOR(uint64_t, 8) l_554 = (VECTOR(uint64_t, 8))(0xA7F53E82C4FE22ABL, (VECTOR(uint64_t, 4))(0xA7F53E82C4FE22ABL, (VECTOR(uint64_t, 2))(0xA7F53E82C4FE22ABL, 0xA54B886B8E529979L), 0xA54B886B8E529979L), 0xA54B886B8E529979L, 0xA7F53E82C4FE22ABL, 0xA54B886B8E529979L);
                int16_t l_578 = 0L;
                int32_t l_581 = (-1L);
                int i;
                for (i = 0; i < 10; i++)
                    l_489[i] = 0x035C0A24L;
                (*p_1266->g_77) = l_453[5][0];
                if ((l_479 != ((*l_485) = l_484)))
                { /* block id: 166 */
                    for (p_1266->g_96 = 28; (p_1266->g_96 == 28); p_1266->g_96 = safe_add_func_int32_t_s_s(p_1266->g_96, 2))
                    { /* block id: 169 */
                        l_488 = p_46;
                    }
                    return l_489[8];
                }
                else
                { /* block id: 173 */
                    int64_t l_513[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int32_t l_515 = 0x4EC2F5A4L;
                    uint32_t l_516 = 0x8EB6C835L;
                    int32_t l_518 = 0x0D813988L;
                    VECTOR(int16_t, 8) l_587 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x344AL), 0x344AL), 0x344AL, 7L, 0x344AL);
                    int i;
                    for (p_1266->g_163 = 0; (p_1266->g_163 >= 21); p_1266->g_163 = safe_add_func_uint16_t_u_u(p_1266->g_163, 4))
                    { /* block id: 176 */
                        uint16_t *l_492[10];
                        uint8_t ***l_495[8];
                        int16_t *l_505[3];
                        int8_t **l_511 = &p_1266->g_113;
                        int32_t l_519 = 1L;
                        int32_t *l_523 = &l_453[3][0];
                        int i;
                        for (i = 0; i < 10; i++)
                            l_492[i] = (void*)0;
                        for (i = 0; i < 8; i++)
                            l_495[i] = &p_1266->g_388;
                        for (i = 0; i < 3; i++)
                            l_505[i] = &p_1266->g_118;
                        l_518 = ((p_1266->g_73[7][3]--) & ((l_496 = (void*)0) == ((safe_sub_func_int32_t_s_s(((safe_sub_func_int64_t_s_s(((*l_447) = (0x6CL & (((l_489[0] |= ((safe_add_func_uint8_t_u_u(p_45, (*p_1266->g_389))) > 0x51DFL)) | (l_517 = (((((((safe_rshift_func_uint8_t_u_u((l_515 = ((p_1266->g_508[0][0] = &p_45) == ((p_1266->g_514 ^= (((safe_mul_func_uint8_t_u_u(p_45, ((l_511 != l_512) && l_513[6]))) , (void*)0) != l_457[1])) , (void*)0))), l_516)) , 0xCEL) , &p_1266->g_388) != (void*)0) >= 5L) , p_45) > p_45))) > 0L))), p_45)) , p_45), 0x6B5BFCADL)) , (void*)0)));
                        --l_520;
                        l_523 = &l_453[3][0];
                        l_524++;
                    }
                    if ((**p_1266->g_76))
                        continue;
                    l_581 |= ((*l_488) = ((safe_sub_func_uint32_t_u_u((~(safe_mul_func_int8_t_s_s((p_1266->g_299 | ((VECTOR(int64_t, 2))(0x7031996778122E10L, 1L)).lo), (safe_rshift_func_uint16_t_u_s(p_45, ((0L <= ((p_1266->g_580 = (safe_mod_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))((-4L), (((safe_lshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_1266->g_116.s1, l_489[8])), 12)) ^ (safe_sub_func_uint8_t_u_u((((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(p_1266->g_543.xyywxwzyzwyxzxww)).scf | ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(l_546.yxxy)).wyzxzxyyzwxxzyxx >> ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))((((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(0x5A2E19B9845131F7L, ((VECTOR(uint64_t, 2))(l_551.xx)), 1UL)).zwwzwwxwwzwwwxzz + ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_554.s61437327)).s07 + ((VECTOR(uint64_t, 4))(p_1266->g_555.s2071)).hi))).yyyyyxxyyxxxxxyy, ((VECTOR(uint64_t, 4))(0xDB472BA82DF5194BL, 0x1B8EE73EEA8B8511L, 2UL, 0x918A401E36F43756L)).xxxyxyxzyyxzyyxw)))))).s81, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(p_1266->g_558.yxyz)).even * ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(1UL, 18446744073709551615UL, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(p_1266->g_563.s70377144)).hi, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(l_570.xyxyyyxx)).s0001212401766265 + ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 16))(((*l_447) = (safe_add_func_int16_t_s_s((((safe_div_func_uint8_t_u_u(((p_1266->g_34 = (safe_add_func_int16_t_s_s(p_1266->g_38.s6, p_45))) >= (!p_45)), 0x47L)) , &l_496) == p_1266->g_577[7][0]), p_45))), 6L, (-1L), p_1266->g_116.sf, 9L, 1L, p_1266->g_299, ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 2))(4L)), 0x3840B5B3EBFCC78FL, 0x1AA26AE50D66F3D9L, 0x29780310708985FCL, (-1L), (-3L))).even))), ((VECTOR(uint64_t, 8))(0UL))))), ((VECTOR(uint64_t, 2))(0UL)), p_1266->g_78.s7, p_45, ((VECTOR(uint64_t, 2))(0xA84F09C21F0B54B9L)), 0UL, 0UL))))).lo + ((VECTOR(uint64_t, 8))(1UL))))).hi + ((VECTOR(uint64_t, 4))(0x05E735167CDB26ABL))))), ((VECTOR(uint64_t, 4))(1UL))))), ((VECTOR(uint64_t, 4))(0x91F970A86EF8C96EL))))), 0xB8060E26A3C6BE61L, 0UL)).hi + ((VECTOR(uint64_t, 4))(0xB95C2C738930B4BAL))))), ((VECTOR(uint64_t, 4))(0x180BFA50F08702E5L))))).ywwyzyzywyyyyyyx + ((VECTOR(uint64_t, 16))(0UL))))).sb6)))))).odd < 0x36A14391649F3542L), ((VECTOR(int64_t, 4))(0x30157E8DE898BDD9L)), 0x4A9FA8AFDE032997L, (-10L), 1L)).even, ((VECTOR(int64_t, 4))(0x18032C116E2E019FL))))).yxyzxyxyxxxxzxzz && ((VECTOR(int64_t, 16))(1L))))).odd, ((VECTOR(int64_t, 8))(2L))))).s01, ((VECTOR(uint64_t, 2))(0x232201C15A9A916CL))))).xyxy))).odd - ((VECTOR(uint64_t, 2))(8UL))))).xyxxxyxxyxyxxyxy))).sb4))), ((VECTOR(uint64_t, 2))(1UL))))).hi & p_1266->g_75), 0x22L))) >= p_1266->g_514), 0x5BL, (-1L), ((VECTOR(int8_t, 8))(0x5FL)), 0x64L, ((VECTOR(int8_t, 2))(0L)), 0x34L)).s8, p_45)) & l_578), l_579))) <= 0x14B9B268AFD3E386L)) <= p_45)))))), p_45)) < 0x275CL));
                    for (p_45 = 0; (p_45 != 32); p_45++)
                    { /* block id: 198 */
                        VECTOR(int32_t, 4) l_584 = (VECTOR(int32_t, 4))(0x07436C34L, (VECTOR(int32_t, 2))(0x07436C34L, 0x63B86274L), 0x63B86274L);
                        uint16_t *l_593 = &p_1266->g_73[2][3];
                        int i;
                        if (l_515)
                            break;
                        (*l_488) &= ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_584.xy)).yxyyxxxxxyxyxyxx, ((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_585.s03463756)).lo && ((VECTOR(int32_t, 2))(p_1266->g_586.yx)).yyyy))).yzyzxxzzzzwwxzwz && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((*p_1266->g_77), 0L, (-4L), 1L)).xzxyyzwy <= ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(l_587.s1532)).odd, ((VECTOR(uint16_t, 8))(0UL, 0xB6A0L, 1UL, ((VECTOR(uint16_t, 4))(0x9DA4L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(l_590.xyyxxyyxyxxxyxyx)).s0e + ((VECTOR(uint16_t, 4))(0x6A94L, (safe_add_func_uint64_t_u_u((~p_1266->g_334), (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(p_45, 0x29707EE62FE4A1D6L, ((*l_447) = (p_45 >= (65534UL != (--(*l_593))))), (safe_rshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u(((((safe_unary_minus_func_uint8_t_u((((p_1266->g_206[0] = p_1266->g_96) != p_45) | ((p_1266->g_558.z , (*p_1266->g_76)) != &p_1266->g_75)))) > (*p_1266->g_113)) , (void*)0) == (*l_512)), (*p_1266->g_77))), 4)), p_45, 0x76B535024448292AL, (-1L), 0x1F56935028EEF8A0L)) | ((VECTOR(int64_t, 8))(4L))))).s5 & p_1266->g_114.y))), 0xAA04L, 65535UL)).lo))), 0x7D28L)), 65531UL)).s65))), ((VECTOR(int32_t, 8))(0x19A49F61L)), p_45, ((VECTOR(int32_t, 4))((-6L))), 0x106EA57EL)).hi, ((VECTOR(int32_t, 8))((-7L)))))).s21 && ((VECTOR(int32_t, 2))(0x1EC83097L))))).yyxyxyyy))).s6441315647017422))).even && ((VECTOR(int32_t, 8))(0x3BE1C81BL))))).s36 != ((VECTOR(int32_t, 2))(8L))))).yyyx))).xyxwwwwyxyxyzwxz))).sa;
                    }
                }
                p_1266->g_601--;
            }
            if (p_45)
                break;
        }
        else
        { /* block id: 209 */
            int32_t l_643 = 0x4B3C6EFAL;
            if ((((*p_1266->g_113) &= ((p_1266->g_586.x , &l_453[3][0]) != &l_453[3][0])) == (p_1266->g_604 == (p_45 , l_633))))
            { /* block id: 211 */
                uint32_t l_635 = 4294967289UL;
                int32_t l_641 = 0x39B26353L;
                int32_t l_644 = 0x71C9B510L;
                int8_t l_660 = 0L;
                l_635++;
                (*l_488) = (0x13L >= p_45);
                for (p_1266->g_601 = 0; (p_1266->g_601 < 43); p_1266->g_601 = safe_add_func_uint32_t_u_u(p_1266->g_601, 3))
                { /* block id: 216 */
                    int32_t l_640 = 0x1D4F59E6L;
                    int32_t l_642 = 0x65622A45L;
                    int32_t **l_663 = &p_1266->g_77;
                    ++l_645;
                }
            }
            else
            { /* block id: 225 */
                int32_t **l_664 = &l_460[4][0];
                (*p_1266->g_439) = ((*l_664) = (*p_1266->g_76));
                (*l_664) = p_46;
            }
        }
    }
    (*l_665) = p_46;
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_34 p_1266->g_38 p_1266->g_73 p_1266->g_76 p_1266->g_78 p_1266->g_75 p_1266->g_113 p_1266->g_96 p_1266->g_77 p_1266->g_163 p_1266->g_114 p_1266->g_337 p_1266->g_170 p_1266->g_393 p_1266->g_273
 * writes: p_1266->g_73 p_1266->g_77 p_1266->g_75 p_1266->g_337 p_1266->g_299 p_1266->g_388 p_1266->g_393
 */
uint32_t * func_47(int32_t  p_48, struct S0 * p_1266)
{ /* block id: 7 */
    VECTOR(int32_t, 4) l_49 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x09B704DCL), 0x09B704DCL);
    uint16_t *l_72[2][4] = {{&p_1266->g_73[7][3],&p_1266->g_73[7][3],&p_1266->g_73[7][3],&p_1266->g_73[7][3]},{&p_1266->g_73[7][3],&p_1266->g_73[7][3],&p_1266->g_73[7][3],&p_1266->g_73[7][3]}};
    uint32_t *l_336 = (void*)0;
    uint32_t **l_335[4];
    int64_t *l_338 = (void*)0;
    int64_t *l_339 = &p_1266->g_299;
    int32_t *l_394 = &p_1266->g_75;
    int32_t **l_395 = &p_1266->g_77;
    int64_t *l_414 = (void*)0;
    int64_t **l_413 = &l_414;
    int i, j;
    for (i = 0; i < 4; i++)
        l_335[i] = &l_336;
    (*l_394) = ((VECTOR(int32_t, 16))(0x70C86797L, ((VECTOR(int32_t, 4))(l_49.wwxz)), (((p_1266->g_393 &= (0x3FL == (safe_rshift_func_int16_t_s_u(p_48, func_52(p_1266->g_34, ((l_49.x ^ func_58(((*l_339) = ((safe_add_func_int64_t_s_s((safe_div_func_uint16_t_u_u((p_1266->g_34 == ((p_1266->g_337 = func_67((p_1266->g_73[4][1] |= (((void*)0 == &p_1266->g_34) , (l_49.y < ((l_49.z < p_1266->g_38.s2) <= p_1266->g_38.s2)))), p_1266->g_38.s0, p_1266->g_38.s2, p_1266->g_38.s2, p_1266)) != (void*)0)), p_48)), (-4L))) , 0L)), p_48, (*p_1266->g_113), p_1266->g_78.sd, p_1266)) , l_49.w), &p_1266->g_34, l_49.x, p_1266->g_38.s1, p_1266))))) != p_1266->g_273.y) , l_49.y), 0x293C6370L, 0x2FEF068EL, l_49.z, 1L, (-3L), 0x6588674BL, 0x3E6F80D4L, ((VECTOR(int32_t, 2))(0x21204D07L)), 0L)).s5;
    (*l_395) = &p_48;
    for (p_1266->g_393 = 9; (p_1266->g_393 > 56); p_1266->g_393 = safe_add_func_int16_t_s_s(p_1266->g_393, 6))
    { /* block id: 125 */
        uint64_t l_398[7] = {18446744073709551606UL,0xB63DDA6935B74068L,18446744073709551606UL,18446744073709551606UL,0xB63DDA6935B74068L,18446744073709551606UL,18446744073709551606UL};
        int32_t l_407 = (-1L);
        uint8_t *l_411 = (void*)0;
        int64_t *l_432 = &p_1266->g_299;
        uint8_t l_435 = 0x7EL;
        int32_t *l_436[8][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int i, j, k;
        if ((*l_394))
            break;
        if (l_398[2])
            break;
    }
    return &p_1266->g_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_77 p_1266->g_75 p_1266->g_163 p_1266->g_113 p_1266->g_96 p_1266->g_34 p_1266->g_337 p_1266->g_170
 * writes: p_1266->g_75 p_1266->g_388
 */
uint16_t  func_52(uint32_t  p_53, uint32_t  p_54, uint32_t * p_55, int8_t  p_56, uint16_t  p_57, struct S0 * p_1266)
{ /* block id: 107 */
    VECTOR(uint32_t, 8) l_373 = (VECTOR(uint32_t, 8))(0xF65BF82EL, (VECTOR(uint32_t, 4))(0xF65BF82EL, (VECTOR(uint32_t, 2))(0xF65BF82EL, 4294967295UL), 4294967295UL), 4294967295UL, 0xF65BF82EL, 4294967295UL);
    uint8_t *l_387[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t **l_386 = &l_387[4];
    uint32_t l_390 = 1UL;
    int32_t *l_391[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_392 = 2L;
    int i;
    for (p_56 = (-18); (p_56 <= 26); ++p_56)
    { /* block id: 110 */
        VECTOR(uint8_t, 4) l_372 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x94L), 0x94L);
        uint16_t *l_380 = (void*)0;
        int32_t l_381[5] = {3L,3L,3L,3L,3L};
        int32_t *l_383 = (void*)0;
        int32_t l_385 = 0x11801D43L;
        int i;
        (*p_1266->g_77) &= (-6L);
        l_385 &= (safe_div_func_uint8_t_u_u((l_381[2] |= (safe_lshift_func_uint8_t_u_s((((VECTOR(uint8_t, 4))(l_372.yyzz)).x & p_54), (p_1266->g_163 >= ((*p_1266->g_113) < ((0x56615242L == ((VECTOR(uint32_t, 4))(l_373.s2105)).w) && (safe_mod_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(1L, 0x22D2E1EDL)) <= ((*p_1266->g_337) ^= (*p_55))), ((void*)0 != l_380))), p_53)))))))), l_372.w));
    }
    p_1266->g_388 = l_386;
    l_392 = ((*p_1266->g_77) ^= (l_390 > p_1266->g_170));
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_76 p_1266->g_77 p_1266->g_75 p_1266->g_163 p_1266->g_114
 * writes: p_1266->g_75
 */
int32_t  func_58(int64_t  p_59, uint64_t  p_60, int8_t  p_61, uint64_t  p_62, struct S0 * p_1266)
{ /* block id: 103 */
    int16_t l_354 = (-4L);
    int32_t l_355 = 0L;
    int32_t *l_356 = (void*)0;
    int32_t *l_357 = (void*)0;
    int32_t *l_358 = (void*)0;
    int32_t *l_359 = (void*)0;
    int32_t *l_360 = (void*)0;
    int32_t *l_361 = (void*)0;
    int32_t *l_364 = (void*)0;
    int32_t l_365 = 0x79B9CB4DL;
    l_365 = (((p_61 , (!(((safe_div_func_uint16_t_u_u(((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(0L, 0x08L)).odd, 1UL)) || ((*p_1266->g_77) = (safe_sub_func_int32_t_s_s((**p_1266->g_76), (safe_mul_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(p_61, ((~((p_1266->g_163 , (void*)0) == &p_1266->g_337)) & p_1266->g_114.x))), (safe_mod_func_int32_t_s_s(((*p_1266->g_77) != 5L), l_354)))), 0xA7L)))))), l_354)) == 1L) , p_62))) , FAKE_DIVERGE(p_1266->local_2_offset, get_local_id(2), 10)) > l_355);
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1266->g_76 p_1266->g_78 p_1266->g_75
 * writes: p_1266->g_77 p_1266->g_75
 */
uint32_t * func_67(uint16_t  p_68, int32_t  p_69, int8_t  p_70, int64_t  p_71, struct S0 * p_1266)
{ /* block id: 9 */
    int32_t *l_74 = &p_1266->g_75;
    int32_t l_123 = 3L;
    VECTOR(int8_t, 4) l_132 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x64L), 0x64L);
    VECTOR(uint8_t, 4) l_139 = (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 9UL), 9UL);
    int32_t l_209 = 9L;
    int8_t **l_249 = &p_1266->g_111;
    uint8_t *l_261 = (void*)0;
    VECTOR(int8_t, 4) l_266 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x0EL), 0x0EL);
    VECTOR(uint64_t, 16) l_308 = (VECTOR(uint64_t, 16))(0x2BDCCD84E146BB0CL, (VECTOR(uint64_t, 4))(0x2BDCCD84E146BB0CL, (VECTOR(uint64_t, 2))(0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL), 0x7B8D0DE64FCCB9FAL), 0x7B8D0DE64FCCB9FAL, 0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL, (VECTOR(uint64_t, 2))(0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL), (VECTOR(uint64_t, 2))(0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL), 0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL, 0x2BDCCD84E146BB0CL, 0x7B8D0DE64FCCB9FAL);
    int64_t *l_323 = &p_1266->g_206[4];
    VECTOR(int64_t, 8) l_327 = (VECTOR(int64_t, 8))(0x0059B3C1BA33D3BBL, (VECTOR(int64_t, 4))(0x0059B3C1BA33D3BBL, (VECTOR(int64_t, 2))(0x0059B3C1BA33D3BBL, 0x09FF7E1002F6A40CL), 0x09FF7E1002F6A40CL), 0x09FF7E1002F6A40CL, 0x0059B3C1BA33D3BBL, 0x09FF7E1002F6A40CL);
    VECTOR(int64_t, 4) l_330 = (VECTOR(int64_t, 4))(0x29FE9F1FF2199AC4L, (VECTOR(int64_t, 2))(0x29FE9F1FF2199AC4L, 3L), 3L);
    VECTOR(int64_t, 16) l_331 = (VECTOR(int64_t, 16))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L), (VECTOR(int64_t, 2))((-9L), (-1L)), (VECTOR(int64_t, 2))((-9L), (-1L)), (-9L), (-1L), (-9L), (-1L));
    VECTOR(int64_t, 4) l_332 = (VECTOR(int64_t, 4))(0x3D76AEBE084FBD8EL, (VECTOR(int64_t, 2))(0x3D76AEBE084FBD8EL, 9L), 9L);
    int i;
    (*p_1266->g_76) = l_74;
    (*l_74) ^= ((VECTOR(int32_t, 8))(p_1266->g_78.s39b4770d)).s5;
    for (p_68 = 0; (p_68 != 12); p_68 = safe_add_func_int32_t_s_s(p_68, 5))
    { /* block id: 14 */
        uint32_t *l_95 = &p_1266->g_34;
        int32_t l_97 = 2L;
        int32_t *l_99 = &p_1266->g_75;
        VECTOR(uint8_t, 2) l_144 = (VECTOR(uint8_t, 2))(0x7BL, 255UL);
        uint32_t l_203 = 4294967295UL;
        uint8_t *l_296[2];
        int16_t *l_322 = &p_1266->g_118;
        int64_t **l_324 = &l_323;
        VECTOR(int64_t, 8) l_328 = (VECTOR(int64_t, 8))(0x00D6C42FE2E7C312L, (VECTOR(int64_t, 4))(0x00D6C42FE2E7C312L, (VECTOR(int64_t, 2))(0x00D6C42FE2E7C312L, 0x4552CEB1BD6C52F7L), 0x4552CEB1BD6C52F7L), 0x4552CEB1BD6C52F7L, 0x00D6C42FE2E7C312L, 0x4552CEB1BD6C52F7L);
        VECTOR(int64_t, 8) l_329 = (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x3EEDE6C9A57CB61AL), 0x3EEDE6C9A57CB61AL), 0x3EEDE6C9A57CB61AL, (-4L), 0x3EEDE6C9A57CB61AL);
        uint32_t l_333 = 4294967289UL;
        int i;
        for (i = 0; i < 2; i++)
            l_296[i] = &p_1266->g_119[0];
        (1 + 1);
    }
    return l_74;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1267;
    struct S0* p_1266 = &c_1267;
    struct S0 c_1268 = {
        0x9822CB3AL, // p_1266->g_14
        0x19B885B3L, // p_1266->g_34
        (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 4294967295UL), 4294967295UL), 4294967295UL, 7UL, 4294967295UL), // p_1266->g_38
        {{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL},{0xC804L,0x1B10L,0x1B10L,0xC804L,65535UL}}, // p_1266->g_73
        0x5E33AB57L, // p_1266->g_75
        &p_1266->g_75, // p_1266->g_77
        &p_1266->g_77, // p_1266->g_76
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 2L), 2L), 2L, 1L, 2L, (VECTOR(int32_t, 2))(1L, 2L), (VECTOR(int32_t, 2))(1L, 2L), 1L, 2L, 1L, 2L), // p_1266->g_78
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int8_t, 2))((-1L), 0L), (VECTOR(int8_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_1266->g_89
        0L, // p_1266->g_96
        (void*)0, // p_1266->g_98
        (void*)0, // p_1266->g_111
        &p_1266->g_96, // p_1266->g_113
        (VECTOR(int8_t, 2))((-4L), (-3L)), // p_1266->g_114
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int8_t, 2))((-8L), 0L), (VECTOR(int8_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L), // p_1266->g_115
        (VECTOR(int8_t, 16))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x05L), 0x05L), 0x05L, 9L, 0x05L, (VECTOR(int8_t, 2))(9L, 0x05L), (VECTOR(int8_t, 2))(9L, 0x05L), 9L, 0x05L, 9L, 0x05L), // p_1266->g_116
        0x5967L, // p_1266->g_118
        {0x8DL,0x8DL}, // p_1266->g_119
        0xDC5DL, // p_1266->g_163
        18446744073709551615UL, // p_1266->g_170
        {9L,9L,9L,9L,9L}, // p_1266->g_206
        &p_1266->g_77, // p_1266->g_210
        0x161C1AEB0871CD10L, // p_1266->g_231
        (VECTOR(uint8_t, 2))(0x1DL, 246UL), // p_1266->g_273
        (VECTOR(uint8_t, 2))(0x71L, 0x55L), // p_1266->g_284
        0x783AD853F6273D85L, // p_1266->g_299
        (VECTOR(int16_t, 8))(0x1417L, (VECTOR(int16_t, 4))(0x1417L, (VECTOR(int16_t, 2))(0x1417L, 0x5EB5L), 0x5EB5L), 0x5EB5L, 0x1417L, 0x5EB5L), // p_1266->g_311
        0x52CC46ED35993273L, // p_1266->g_334
        (void*)0, // p_1266->g_337
        (void*)0, // p_1266->g_362
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1266->g_363
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1266->g_382
        (void*)0, // p_1266->g_384
        &p_1266->g_119[1], // p_1266->g_389
        &p_1266->g_389, // p_1266->g_388
        8UL, // p_1266->g_393
        &p_1266->g_77, // p_1266->g_439
        (VECTOR(uint8_t, 2))(0x2DL, 246UL), // p_1266->g_476
        {{&p_1266->g_231,&p_1266->g_231},{&p_1266->g_231,&p_1266->g_231},{&p_1266->g_231,&p_1266->g_231},{&p_1266->g_231,&p_1266->g_231},{&p_1266->g_231,&p_1266->g_231}}, // p_1266->g_508
        18446744073709551615UL, // p_1266->g_514
        (VECTOR(uint64_t, 4))(0x7A293B2F03D205B9L, (VECTOR(uint64_t, 2))(0x7A293B2F03D205B9L, 0UL), 0UL), // p_1266->g_543
        (VECTOR(uint64_t, 8))(0x22FF43F99E34129FL, (VECTOR(uint64_t, 4))(0x22FF43F99E34129FL, (VECTOR(uint64_t, 2))(0x22FF43F99E34129FL, 0x2B25732C6AABB0B7L), 0x2B25732C6AABB0B7L), 0x2B25732C6AABB0B7L, 0x22FF43F99E34129FL, 0x2B25732C6AABB0B7L), // p_1266->g_555
        (VECTOR(uint64_t, 4))(0x8EB5293D8F38F75FL, (VECTOR(uint64_t, 2))(0x8EB5293D8F38F75FL, 6UL), 6UL), // p_1266->g_558
        (VECTOR(uint64_t, 8))(0xC92CCFF5D8D3FF57L, (VECTOR(uint64_t, 4))(0xC92CCFF5D8D3FF57L, (VECTOR(uint64_t, 2))(0xC92CCFF5D8D3FF57L, 1UL), 1UL), 1UL, 0xC92CCFF5D8D3FF57L, 1UL), // p_1266->g_563
        {{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388},{&p_1266->g_388,&p_1266->g_388,(void*)0,(void*)0,&p_1266->g_388}}, // p_1266->g_577
        0x29BFCBE6L, // p_1266->g_580
        (VECTOR(int32_t, 4))(0x77D80CB6L, (VECTOR(int32_t, 2))(0x77D80CB6L, 0x0CB3B2ACL), 0x0CB3B2ACL), // p_1266->g_586
        5UL, // p_1266->g_601
        1L, // p_1266->g_606
        {{(-1L),(-1L),0x1A63A2F3CCBC94ECL,6L,(-1L),6L,0x1A63A2F3CCBC94ECL,(-1L),(-1L)},{(-1L),(-1L),0x1A63A2F3CCBC94ECL,6L,(-1L),6L,0x1A63A2F3CCBC94ECL,(-1L),(-1L)},{(-1L),(-1L),0x1A63A2F3CCBC94ECL,6L,(-1L),6L,0x1A63A2F3CCBC94ECL,(-1L),(-1L)},{(-1L),(-1L),0x1A63A2F3CCBC94ECL,6L,(-1L),6L,0x1A63A2F3CCBC94ECL,(-1L),(-1L)},{(-1L),(-1L),0x1A63A2F3CCBC94ECL,6L,(-1L),6L,0x1A63A2F3CCBC94ECL,(-1L),(-1L)}}, // p_1266->g_607
        0x05F060F3D6A18E80L, // p_1266->g_608
        0x6A9DE1CB875023B1L, // p_1266->g_609
        0x0F48AF1DA74CBBDCL, // p_1266->g_610
        1L, // p_1266->g_611
        0x4EECB2260DDE4B29L, // p_1266->g_612
        3L, // p_1266->g_613
        {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)}, // p_1266->g_614
        {{(-1L),(-1L),(-1L),(-1L)}}, // p_1266->g_615
        0L, // p_1266->g_616
        0x36D5171C7C812C1DL, // p_1266->g_617
        6L, // p_1266->g_618
        {{0x552DABC6681EC4A3L,0x552DABC6681EC4A3L,0x552DABC6681EC4A3L},{0x552DABC6681EC4A3L,0x552DABC6681EC4A3L,0x552DABC6681EC4A3L},{0x552DABC6681EC4A3L,0x552DABC6681EC4A3L,0x552DABC6681EC4A3L},{0x552DABC6681EC4A3L,0x552DABC6681EC4A3L,0x552DABC6681EC4A3L},{0x552DABC6681EC4A3L,0x552DABC6681EC4A3L,0x552DABC6681EC4A3L}}, // p_1266->g_619
        0x6790EBADBFB00C05L, // p_1266->g_620
        1L, // p_1266->g_621
        1L, // p_1266->g_622
        0L, // p_1266->g_623
        5L, // p_1266->g_624
        0x4C7832C55B08A5D2L, // p_1266->g_625
        1L, // p_1266->g_626
        {2L,2L,2L,2L,2L,2L,2L}, // p_1266->g_627
        (-1L), // p_1266->g_628
        0L, // p_1266->g_629
        (-3L), // p_1266->g_630
        3L, // p_1266->g_631
        0x3A6249E3199439CCL, // p_1266->g_632
        {{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}},{{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609},{&p_1266->g_630,&p_1266->g_625,&p_1266->g_609}}}, // p_1266->g_605
        &p_1266->g_605[2][4][1], // p_1266->g_604
        0x0854B28FL, // p_1266->g_672
        (void*)0, // p_1266->g_676
        1L, // p_1266->g_684
        0x5F5D1174L, // p_1266->g_685
        1L, // p_1266->g_691
        0L, // p_1266->g_750
        (VECTOR(uint64_t, 4))(0x4DDACFCF9C8FBFB1L, (VECTOR(uint64_t, 2))(0x4DDACFCF9C8FBFB1L, 0x19FF4E5736DFFE83L), 0x19FF4E5736DFFE83L), // p_1266->g_774
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8F2C275EL), 0x8F2C275EL), 0x8F2C275EL, 1UL, 0x8F2C275EL), // p_1266->g_775
        (VECTOR(uint8_t, 8))(0x91L, (VECTOR(uint8_t, 4))(0x91L, (VECTOR(uint8_t, 2))(0x91L, 0xC1L), 0xC1L), 0xC1L, 0x91L, 0xC1L), // p_1266->g_799
        (void*)0, // p_1266->g_800
        (void*)0, // p_1266->g_801
        (VECTOR(int16_t, 4))(0x236DL, (VECTOR(int16_t, 2))(0x236DL, (-3L)), (-3L)), // p_1266->g_810
        0x1FL, // p_1266->g_826
        &p_1266->g_826, // p_1266->g_825
        &p_1266->g_825, // p_1266->g_824
        {&p_1266->g_824,&p_1266->g_824,&p_1266->g_824}, // p_1266->g_823
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 5L), 5L), // p_1266->g_859
        (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, 0x1CL), 0x1CL), // p_1266->g_860
        (VECTOR(int16_t, 8))(0x2CCDL, (VECTOR(int16_t, 4))(0x2CCDL, (VECTOR(int16_t, 2))(0x2CCDL, 0x03F3L), 0x03F3L), 0x03F3L, 0x2CCDL, 0x03F3L), // p_1266->g_861
        (VECTOR(int16_t, 2))(0x61B6L, 6L), // p_1266->g_862
        (VECTOR(int16_t, 8))(0x682AL, (VECTOR(int16_t, 4))(0x682AL, (VECTOR(int16_t, 2))(0x682AL, (-1L)), (-1L)), (-1L), 0x682AL, (-1L)), // p_1266->g_863
        (VECTOR(int16_t, 4))(0x1449L, (VECTOR(int16_t, 2))(0x1449L, 1L), 1L), // p_1266->g_865
        (-1L), // p_1266->g_878
        &p_1266->g_878, // p_1266->g_877
        {&p_1266->g_877,&p_1266->g_877,&p_1266->g_877,&p_1266->g_877,&p_1266->g_877,&p_1266->g_877}, // p_1266->g_876
        (VECTOR(int16_t, 8))(0x60CCL, (VECTOR(int16_t, 4))(0x60CCL, (VECTOR(int16_t, 2))(0x60CCL, 1L), 1L), 1L, 0x60CCL, 1L), // p_1266->g_912
        (VECTOR(int64_t, 2))(0x0137A211ACABD4CAL, 1L), // p_1266->g_915
        (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0x6753A331B8B67C9AL), 0x6753A331B8B67C9AL), 0x6753A331B8B67C9AL, (-5L), 0x6753A331B8B67C9AL), // p_1266->g_917
        (VECTOR(int64_t, 2))(6L, 0x0C2CB54B18D69F43L), // p_1266->g_918
        (VECTOR(int64_t, 8))(0x6A3C469FA7044A6AL, (VECTOR(int64_t, 4))(0x6A3C469FA7044A6AL, (VECTOR(int64_t, 2))(0x6A3C469FA7044A6AL, 0x0F46559A130B92B2L), 0x0F46559A130B92B2L), 0x0F46559A130B92B2L, 0x6A3C469FA7044A6AL, 0x0F46559A130B92B2L), // p_1266->g_920
        (VECTOR(int64_t, 8))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x38055A3DCF7E357FL), 0x38055A3DCF7E357FL), 0x38055A3DCF7E357FL, 2L, 0x38055A3DCF7E357FL), // p_1266->g_921
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x21A3D53107FDCAC9L), 0x21A3D53107FDCAC9L), // p_1266->g_927
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x5503B00C45B4CE06L), 0x5503B00C45B4CE06L), 0x5503B00C45B4CE06L, 0L, 0x5503B00C45B4CE06L), // p_1266->g_942
        (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x251246CD2C01F7C5L), 0x251246CD2C01F7C5L), 0x251246CD2C01F7C5L, 2L, 0x251246CD2C01F7C5L, (VECTOR(int64_t, 2))(2L, 0x251246CD2C01F7C5L), (VECTOR(int64_t, 2))(2L, 0x251246CD2C01F7C5L), 2L, 0x251246CD2C01F7C5L, 2L, 0x251246CD2C01F7C5L), // p_1266->g_943
        (VECTOR(int64_t, 8))(0x12556A256AAB21EBL, (VECTOR(int64_t, 4))(0x12556A256AAB21EBL, (VECTOR(int64_t, 2))(0x12556A256AAB21EBL, 6L), 6L), 6L, 0x12556A256AAB21EBL, 6L), // p_1266->g_949
        (VECTOR(uint32_t, 2))(1UL, 0x79EC9D6DL), // p_1266->g_977
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int8_t, 2))(1L, 1L), (VECTOR(int8_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1266->g_983
        (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 8L), 8L), // p_1266->g_984
        (VECTOR(int32_t, 16))(0x6D845389L, (VECTOR(int32_t, 4))(0x6D845389L, (VECTOR(int32_t, 2))(0x6D845389L, (-6L)), (-6L)), (-6L), 0x6D845389L, (-6L), (VECTOR(int32_t, 2))(0x6D845389L, (-6L)), (VECTOR(int32_t, 2))(0x6D845389L, (-6L)), 0x6D845389L, (-6L), 0x6D845389L, (-6L)), // p_1266->g_1005
        (VECTOR(uint16_t, 4))(0xA886L, (VECTOR(uint16_t, 2))(0xA886L, 0xFC64L), 0xFC64L), // p_1266->g_1017
        (void*)0, // p_1266->g_1026
        &p_1266->g_1026, // p_1266->g_1025
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-10L)), (-10L)), // p_1266->g_1028
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-9L)), (-9L)), // p_1266->g_1030
        (VECTOR(int32_t, 2))((-1L), (-2L)), // p_1266->g_1033
        (VECTOR(int32_t, 2))(0x319AB4B0L, 0x35383F9DL), // p_1266->g_1034
        &p_1266->g_77, // p_1266->g_1059
        &p_1266->g_77, // p_1266->g_1074
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L)), // p_1266->g_1076
        0x5A04L, // p_1266->g_1078
        (VECTOR(int64_t, 4))(0x5AADDB23D01DA05EL, (VECTOR(int64_t, 2))(0x5AADDB23D01DA05EL, 0L), 0L), // p_1266->g_1093
        (VECTOR(int64_t, 16))(0x5028C18ECDA1634CL, (VECTOR(int64_t, 4))(0x5028C18ECDA1634CL, (VECTOR(int64_t, 2))(0x5028C18ECDA1634CL, (-1L)), (-1L)), (-1L), 0x5028C18ECDA1634CL, (-1L), (VECTOR(int64_t, 2))(0x5028C18ECDA1634CL, (-1L)), (VECTOR(int64_t, 2))(0x5028C18ECDA1634CL, (-1L)), 0x5028C18ECDA1634CL, (-1L), 0x5028C18ECDA1634CL, (-1L)), // p_1266->g_1094
        0x43ECB385E0694800L, // p_1266->g_1103
        (VECTOR(uint8_t, 16))(0xAEL, (VECTOR(uint8_t, 4))(0xAEL, (VECTOR(uint8_t, 2))(0xAEL, 255UL), 255UL), 255UL, 0xAEL, 255UL, (VECTOR(uint8_t, 2))(0xAEL, 255UL), (VECTOR(uint8_t, 2))(0xAEL, 255UL), 0xAEL, 255UL, 0xAEL, 255UL), // p_1266->g_1109
        {0L,0L,0L,0L,0L}, // p_1266->g_1116
        &p_1266->g_77, // p_1266->g_1136
        (VECTOR(uint64_t, 2))(0x8B3618A0F36AC414L, 0x75BED05AA2663B98L), // p_1266->g_1169
        (VECTOR(int8_t, 2))(0x14L, 0x2FL), // p_1266->g_1192
        (VECTOR(int8_t, 8))(0x5BL, (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 2L), 2L), 2L, 0x5BL, 2L), // p_1266->g_1194
        (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x6DL), 0x6DL), 0x6DL, 8L, 0x6DL), // p_1266->g_1195
        (VECTOR(uint8_t, 16))(0x76L, (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 0UL), 0UL), 0UL, 0x76L, 0UL, (VECTOR(uint8_t, 2))(0x76L, 0UL), (VECTOR(uint8_t, 2))(0x76L, 0UL), 0x76L, 0UL, 0x76L, 0UL), // p_1266->g_1212
        0x67E5L, // p_1266->g_1227
        0x8CC8L, // p_1266->g_1228
        (VECTOR(int8_t, 4))(0x27L, (VECTOR(int8_t, 2))(0x27L, (-8L)), (-8L)), // p_1266->g_1238
        (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L), (VECTOR(int16_t, 2))((-9L), (-1L)), (VECTOR(int16_t, 2))((-9L), (-1L)), (-9L), (-1L), (-9L), (-1L)), // p_1266->g_1247
        (VECTOR(uint32_t, 8))(0x5FAAA35CL, (VECTOR(uint32_t, 4))(0x5FAAA35CL, (VECTOR(uint32_t, 2))(0x5FAAA35CL, 0x04D0DCBEL), 0x04D0DCBEL), 0x04D0DCBEL, 0x5FAAA35CL, 0x04D0DCBEL), // p_1266->g_1248
        sequence_input[get_global_id(0)], // p_1266->global_0_offset
        sequence_input[get_global_id(1)], // p_1266->global_1_offset
        sequence_input[get_global_id(2)], // p_1266->global_2_offset
        sequence_input[get_local_id(0)], // p_1266->local_0_offset
        sequence_input[get_local_id(1)], // p_1266->local_1_offset
        sequence_input[get_local_id(2)], // p_1266->local_2_offset
        sequence_input[get_group_id(0)], // p_1266->group_0_offset
        sequence_input[get_group_id(1)], // p_1266->group_1_offset
        sequence_input[get_group_id(2)], // p_1266->group_2_offset
    };
    c_1267 = c_1268;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1266);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1266->g_14, "p_1266->g_14", print_hash_value);
    transparent_crc(p_1266->g_34, "p_1266->g_34", print_hash_value);
    transparent_crc(p_1266->g_38.s0, "p_1266->g_38.s0", print_hash_value);
    transparent_crc(p_1266->g_38.s1, "p_1266->g_38.s1", print_hash_value);
    transparent_crc(p_1266->g_38.s2, "p_1266->g_38.s2", print_hash_value);
    transparent_crc(p_1266->g_38.s3, "p_1266->g_38.s3", print_hash_value);
    transparent_crc(p_1266->g_38.s4, "p_1266->g_38.s4", print_hash_value);
    transparent_crc(p_1266->g_38.s5, "p_1266->g_38.s5", print_hash_value);
    transparent_crc(p_1266->g_38.s6, "p_1266->g_38.s6", print_hash_value);
    transparent_crc(p_1266->g_38.s7, "p_1266->g_38.s7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1266->g_73[i][j], "p_1266->g_73[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1266->g_75, "p_1266->g_75", print_hash_value);
    transparent_crc(p_1266->g_78.s0, "p_1266->g_78.s0", print_hash_value);
    transparent_crc(p_1266->g_78.s1, "p_1266->g_78.s1", print_hash_value);
    transparent_crc(p_1266->g_78.s2, "p_1266->g_78.s2", print_hash_value);
    transparent_crc(p_1266->g_78.s3, "p_1266->g_78.s3", print_hash_value);
    transparent_crc(p_1266->g_78.s4, "p_1266->g_78.s4", print_hash_value);
    transparent_crc(p_1266->g_78.s5, "p_1266->g_78.s5", print_hash_value);
    transparent_crc(p_1266->g_78.s6, "p_1266->g_78.s6", print_hash_value);
    transparent_crc(p_1266->g_78.s7, "p_1266->g_78.s7", print_hash_value);
    transparent_crc(p_1266->g_78.s8, "p_1266->g_78.s8", print_hash_value);
    transparent_crc(p_1266->g_78.s9, "p_1266->g_78.s9", print_hash_value);
    transparent_crc(p_1266->g_78.sa, "p_1266->g_78.sa", print_hash_value);
    transparent_crc(p_1266->g_78.sb, "p_1266->g_78.sb", print_hash_value);
    transparent_crc(p_1266->g_78.sc, "p_1266->g_78.sc", print_hash_value);
    transparent_crc(p_1266->g_78.sd, "p_1266->g_78.sd", print_hash_value);
    transparent_crc(p_1266->g_78.se, "p_1266->g_78.se", print_hash_value);
    transparent_crc(p_1266->g_78.sf, "p_1266->g_78.sf", print_hash_value);
    transparent_crc(p_1266->g_89.s0, "p_1266->g_89.s0", print_hash_value);
    transparent_crc(p_1266->g_89.s1, "p_1266->g_89.s1", print_hash_value);
    transparent_crc(p_1266->g_89.s2, "p_1266->g_89.s2", print_hash_value);
    transparent_crc(p_1266->g_89.s3, "p_1266->g_89.s3", print_hash_value);
    transparent_crc(p_1266->g_89.s4, "p_1266->g_89.s4", print_hash_value);
    transparent_crc(p_1266->g_89.s5, "p_1266->g_89.s5", print_hash_value);
    transparent_crc(p_1266->g_89.s6, "p_1266->g_89.s6", print_hash_value);
    transparent_crc(p_1266->g_89.s7, "p_1266->g_89.s7", print_hash_value);
    transparent_crc(p_1266->g_89.s8, "p_1266->g_89.s8", print_hash_value);
    transparent_crc(p_1266->g_89.s9, "p_1266->g_89.s9", print_hash_value);
    transparent_crc(p_1266->g_89.sa, "p_1266->g_89.sa", print_hash_value);
    transparent_crc(p_1266->g_89.sb, "p_1266->g_89.sb", print_hash_value);
    transparent_crc(p_1266->g_89.sc, "p_1266->g_89.sc", print_hash_value);
    transparent_crc(p_1266->g_89.sd, "p_1266->g_89.sd", print_hash_value);
    transparent_crc(p_1266->g_89.se, "p_1266->g_89.se", print_hash_value);
    transparent_crc(p_1266->g_89.sf, "p_1266->g_89.sf", print_hash_value);
    transparent_crc(p_1266->g_96, "p_1266->g_96", print_hash_value);
    transparent_crc(p_1266->g_114.x, "p_1266->g_114.x", print_hash_value);
    transparent_crc(p_1266->g_114.y, "p_1266->g_114.y", print_hash_value);
    transparent_crc(p_1266->g_115.s0, "p_1266->g_115.s0", print_hash_value);
    transparent_crc(p_1266->g_115.s1, "p_1266->g_115.s1", print_hash_value);
    transparent_crc(p_1266->g_115.s2, "p_1266->g_115.s2", print_hash_value);
    transparent_crc(p_1266->g_115.s3, "p_1266->g_115.s3", print_hash_value);
    transparent_crc(p_1266->g_115.s4, "p_1266->g_115.s4", print_hash_value);
    transparent_crc(p_1266->g_115.s5, "p_1266->g_115.s5", print_hash_value);
    transparent_crc(p_1266->g_115.s6, "p_1266->g_115.s6", print_hash_value);
    transparent_crc(p_1266->g_115.s7, "p_1266->g_115.s7", print_hash_value);
    transparent_crc(p_1266->g_115.s8, "p_1266->g_115.s8", print_hash_value);
    transparent_crc(p_1266->g_115.s9, "p_1266->g_115.s9", print_hash_value);
    transparent_crc(p_1266->g_115.sa, "p_1266->g_115.sa", print_hash_value);
    transparent_crc(p_1266->g_115.sb, "p_1266->g_115.sb", print_hash_value);
    transparent_crc(p_1266->g_115.sc, "p_1266->g_115.sc", print_hash_value);
    transparent_crc(p_1266->g_115.sd, "p_1266->g_115.sd", print_hash_value);
    transparent_crc(p_1266->g_115.se, "p_1266->g_115.se", print_hash_value);
    transparent_crc(p_1266->g_115.sf, "p_1266->g_115.sf", print_hash_value);
    transparent_crc(p_1266->g_116.s0, "p_1266->g_116.s0", print_hash_value);
    transparent_crc(p_1266->g_116.s1, "p_1266->g_116.s1", print_hash_value);
    transparent_crc(p_1266->g_116.s2, "p_1266->g_116.s2", print_hash_value);
    transparent_crc(p_1266->g_116.s3, "p_1266->g_116.s3", print_hash_value);
    transparent_crc(p_1266->g_116.s4, "p_1266->g_116.s4", print_hash_value);
    transparent_crc(p_1266->g_116.s5, "p_1266->g_116.s5", print_hash_value);
    transparent_crc(p_1266->g_116.s6, "p_1266->g_116.s6", print_hash_value);
    transparent_crc(p_1266->g_116.s7, "p_1266->g_116.s7", print_hash_value);
    transparent_crc(p_1266->g_116.s8, "p_1266->g_116.s8", print_hash_value);
    transparent_crc(p_1266->g_116.s9, "p_1266->g_116.s9", print_hash_value);
    transparent_crc(p_1266->g_116.sa, "p_1266->g_116.sa", print_hash_value);
    transparent_crc(p_1266->g_116.sb, "p_1266->g_116.sb", print_hash_value);
    transparent_crc(p_1266->g_116.sc, "p_1266->g_116.sc", print_hash_value);
    transparent_crc(p_1266->g_116.sd, "p_1266->g_116.sd", print_hash_value);
    transparent_crc(p_1266->g_116.se, "p_1266->g_116.se", print_hash_value);
    transparent_crc(p_1266->g_116.sf, "p_1266->g_116.sf", print_hash_value);
    transparent_crc(p_1266->g_118, "p_1266->g_118", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1266->g_119[i], "p_1266->g_119[i]", print_hash_value);

    }
    transparent_crc(p_1266->g_163, "p_1266->g_163", print_hash_value);
    transparent_crc(p_1266->g_170, "p_1266->g_170", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1266->g_206[i], "p_1266->g_206[i]", print_hash_value);

    }
    transparent_crc(p_1266->g_231, "p_1266->g_231", print_hash_value);
    transparent_crc(p_1266->g_273.x, "p_1266->g_273.x", print_hash_value);
    transparent_crc(p_1266->g_273.y, "p_1266->g_273.y", print_hash_value);
    transparent_crc(p_1266->g_284.x, "p_1266->g_284.x", print_hash_value);
    transparent_crc(p_1266->g_284.y, "p_1266->g_284.y", print_hash_value);
    transparent_crc(p_1266->g_299, "p_1266->g_299", print_hash_value);
    transparent_crc(p_1266->g_311.s0, "p_1266->g_311.s0", print_hash_value);
    transparent_crc(p_1266->g_311.s1, "p_1266->g_311.s1", print_hash_value);
    transparent_crc(p_1266->g_311.s2, "p_1266->g_311.s2", print_hash_value);
    transparent_crc(p_1266->g_311.s3, "p_1266->g_311.s3", print_hash_value);
    transparent_crc(p_1266->g_311.s4, "p_1266->g_311.s4", print_hash_value);
    transparent_crc(p_1266->g_311.s5, "p_1266->g_311.s5", print_hash_value);
    transparent_crc(p_1266->g_311.s6, "p_1266->g_311.s6", print_hash_value);
    transparent_crc(p_1266->g_311.s7, "p_1266->g_311.s7", print_hash_value);
    transparent_crc(p_1266->g_334, "p_1266->g_334", print_hash_value);
    transparent_crc(p_1266->g_393, "p_1266->g_393", print_hash_value);
    transparent_crc(p_1266->g_476.x, "p_1266->g_476.x", print_hash_value);
    transparent_crc(p_1266->g_476.y, "p_1266->g_476.y", print_hash_value);
    transparent_crc(p_1266->g_514, "p_1266->g_514", print_hash_value);
    transparent_crc(p_1266->g_543.x, "p_1266->g_543.x", print_hash_value);
    transparent_crc(p_1266->g_543.y, "p_1266->g_543.y", print_hash_value);
    transparent_crc(p_1266->g_543.z, "p_1266->g_543.z", print_hash_value);
    transparent_crc(p_1266->g_543.w, "p_1266->g_543.w", print_hash_value);
    transparent_crc(p_1266->g_555.s0, "p_1266->g_555.s0", print_hash_value);
    transparent_crc(p_1266->g_555.s1, "p_1266->g_555.s1", print_hash_value);
    transparent_crc(p_1266->g_555.s2, "p_1266->g_555.s2", print_hash_value);
    transparent_crc(p_1266->g_555.s3, "p_1266->g_555.s3", print_hash_value);
    transparent_crc(p_1266->g_555.s4, "p_1266->g_555.s4", print_hash_value);
    transparent_crc(p_1266->g_555.s5, "p_1266->g_555.s5", print_hash_value);
    transparent_crc(p_1266->g_555.s6, "p_1266->g_555.s6", print_hash_value);
    transparent_crc(p_1266->g_555.s7, "p_1266->g_555.s7", print_hash_value);
    transparent_crc(p_1266->g_558.x, "p_1266->g_558.x", print_hash_value);
    transparent_crc(p_1266->g_558.y, "p_1266->g_558.y", print_hash_value);
    transparent_crc(p_1266->g_558.z, "p_1266->g_558.z", print_hash_value);
    transparent_crc(p_1266->g_558.w, "p_1266->g_558.w", print_hash_value);
    transparent_crc(p_1266->g_563.s0, "p_1266->g_563.s0", print_hash_value);
    transparent_crc(p_1266->g_563.s1, "p_1266->g_563.s1", print_hash_value);
    transparent_crc(p_1266->g_563.s2, "p_1266->g_563.s2", print_hash_value);
    transparent_crc(p_1266->g_563.s3, "p_1266->g_563.s3", print_hash_value);
    transparent_crc(p_1266->g_563.s4, "p_1266->g_563.s4", print_hash_value);
    transparent_crc(p_1266->g_563.s5, "p_1266->g_563.s5", print_hash_value);
    transparent_crc(p_1266->g_563.s6, "p_1266->g_563.s6", print_hash_value);
    transparent_crc(p_1266->g_563.s7, "p_1266->g_563.s7", print_hash_value);
    transparent_crc(p_1266->g_580, "p_1266->g_580", print_hash_value);
    transparent_crc(p_1266->g_586.x, "p_1266->g_586.x", print_hash_value);
    transparent_crc(p_1266->g_586.y, "p_1266->g_586.y", print_hash_value);
    transparent_crc(p_1266->g_586.z, "p_1266->g_586.z", print_hash_value);
    transparent_crc(p_1266->g_586.w, "p_1266->g_586.w", print_hash_value);
    transparent_crc(p_1266->g_601, "p_1266->g_601", print_hash_value);
    transparent_crc(p_1266->g_606, "p_1266->g_606", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1266->g_607[i][j], "p_1266->g_607[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1266->g_608, "p_1266->g_608", print_hash_value);
    transparent_crc(p_1266->g_609, "p_1266->g_609", print_hash_value);
    transparent_crc(p_1266->g_610, "p_1266->g_610", print_hash_value);
    transparent_crc(p_1266->g_611, "p_1266->g_611", print_hash_value);
    transparent_crc(p_1266->g_612, "p_1266->g_612", print_hash_value);
    transparent_crc(p_1266->g_613, "p_1266->g_613", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1266->g_614[i], "p_1266->g_614[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1266->g_615[i][j], "p_1266->g_615[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1266->g_616, "p_1266->g_616", print_hash_value);
    transparent_crc(p_1266->g_617, "p_1266->g_617", print_hash_value);
    transparent_crc(p_1266->g_618, "p_1266->g_618", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1266->g_619[i][j], "p_1266->g_619[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1266->g_620, "p_1266->g_620", print_hash_value);
    transparent_crc(p_1266->g_621, "p_1266->g_621", print_hash_value);
    transparent_crc(p_1266->g_622, "p_1266->g_622", print_hash_value);
    transparent_crc(p_1266->g_623, "p_1266->g_623", print_hash_value);
    transparent_crc(p_1266->g_624, "p_1266->g_624", print_hash_value);
    transparent_crc(p_1266->g_625, "p_1266->g_625", print_hash_value);
    transparent_crc(p_1266->g_626, "p_1266->g_626", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1266->g_627[i], "p_1266->g_627[i]", print_hash_value);

    }
    transparent_crc(p_1266->g_628, "p_1266->g_628", print_hash_value);
    transparent_crc(p_1266->g_629, "p_1266->g_629", print_hash_value);
    transparent_crc(p_1266->g_630, "p_1266->g_630", print_hash_value);
    transparent_crc(p_1266->g_631, "p_1266->g_631", print_hash_value);
    transparent_crc(p_1266->g_632, "p_1266->g_632", print_hash_value);
    transparent_crc(p_1266->g_672, "p_1266->g_672", print_hash_value);
    transparent_crc(p_1266->g_684, "p_1266->g_684", print_hash_value);
    transparent_crc(p_1266->g_685, "p_1266->g_685", print_hash_value);
    transparent_crc(p_1266->g_691, "p_1266->g_691", print_hash_value);
    transparent_crc(p_1266->g_750, "p_1266->g_750", print_hash_value);
    transparent_crc(p_1266->g_774.x, "p_1266->g_774.x", print_hash_value);
    transparent_crc(p_1266->g_774.y, "p_1266->g_774.y", print_hash_value);
    transparent_crc(p_1266->g_774.z, "p_1266->g_774.z", print_hash_value);
    transparent_crc(p_1266->g_774.w, "p_1266->g_774.w", print_hash_value);
    transparent_crc(p_1266->g_775.s0, "p_1266->g_775.s0", print_hash_value);
    transparent_crc(p_1266->g_775.s1, "p_1266->g_775.s1", print_hash_value);
    transparent_crc(p_1266->g_775.s2, "p_1266->g_775.s2", print_hash_value);
    transparent_crc(p_1266->g_775.s3, "p_1266->g_775.s3", print_hash_value);
    transparent_crc(p_1266->g_775.s4, "p_1266->g_775.s4", print_hash_value);
    transparent_crc(p_1266->g_775.s5, "p_1266->g_775.s5", print_hash_value);
    transparent_crc(p_1266->g_775.s6, "p_1266->g_775.s6", print_hash_value);
    transparent_crc(p_1266->g_775.s7, "p_1266->g_775.s7", print_hash_value);
    transparent_crc(p_1266->g_799.s0, "p_1266->g_799.s0", print_hash_value);
    transparent_crc(p_1266->g_799.s1, "p_1266->g_799.s1", print_hash_value);
    transparent_crc(p_1266->g_799.s2, "p_1266->g_799.s2", print_hash_value);
    transparent_crc(p_1266->g_799.s3, "p_1266->g_799.s3", print_hash_value);
    transparent_crc(p_1266->g_799.s4, "p_1266->g_799.s4", print_hash_value);
    transparent_crc(p_1266->g_799.s5, "p_1266->g_799.s5", print_hash_value);
    transparent_crc(p_1266->g_799.s6, "p_1266->g_799.s6", print_hash_value);
    transparent_crc(p_1266->g_799.s7, "p_1266->g_799.s7", print_hash_value);
    transparent_crc(p_1266->g_810.x, "p_1266->g_810.x", print_hash_value);
    transparent_crc(p_1266->g_810.y, "p_1266->g_810.y", print_hash_value);
    transparent_crc(p_1266->g_810.z, "p_1266->g_810.z", print_hash_value);
    transparent_crc(p_1266->g_810.w, "p_1266->g_810.w", print_hash_value);
    transparent_crc(p_1266->g_826, "p_1266->g_826", print_hash_value);
    transparent_crc(p_1266->g_859.x, "p_1266->g_859.x", print_hash_value);
    transparent_crc(p_1266->g_859.y, "p_1266->g_859.y", print_hash_value);
    transparent_crc(p_1266->g_859.z, "p_1266->g_859.z", print_hash_value);
    transparent_crc(p_1266->g_859.w, "p_1266->g_859.w", print_hash_value);
    transparent_crc(p_1266->g_860.x, "p_1266->g_860.x", print_hash_value);
    transparent_crc(p_1266->g_860.y, "p_1266->g_860.y", print_hash_value);
    transparent_crc(p_1266->g_860.z, "p_1266->g_860.z", print_hash_value);
    transparent_crc(p_1266->g_860.w, "p_1266->g_860.w", print_hash_value);
    transparent_crc(p_1266->g_861.s0, "p_1266->g_861.s0", print_hash_value);
    transparent_crc(p_1266->g_861.s1, "p_1266->g_861.s1", print_hash_value);
    transparent_crc(p_1266->g_861.s2, "p_1266->g_861.s2", print_hash_value);
    transparent_crc(p_1266->g_861.s3, "p_1266->g_861.s3", print_hash_value);
    transparent_crc(p_1266->g_861.s4, "p_1266->g_861.s4", print_hash_value);
    transparent_crc(p_1266->g_861.s5, "p_1266->g_861.s5", print_hash_value);
    transparent_crc(p_1266->g_861.s6, "p_1266->g_861.s6", print_hash_value);
    transparent_crc(p_1266->g_861.s7, "p_1266->g_861.s7", print_hash_value);
    transparent_crc(p_1266->g_862.x, "p_1266->g_862.x", print_hash_value);
    transparent_crc(p_1266->g_862.y, "p_1266->g_862.y", print_hash_value);
    transparent_crc(p_1266->g_863.s0, "p_1266->g_863.s0", print_hash_value);
    transparent_crc(p_1266->g_863.s1, "p_1266->g_863.s1", print_hash_value);
    transparent_crc(p_1266->g_863.s2, "p_1266->g_863.s2", print_hash_value);
    transparent_crc(p_1266->g_863.s3, "p_1266->g_863.s3", print_hash_value);
    transparent_crc(p_1266->g_863.s4, "p_1266->g_863.s4", print_hash_value);
    transparent_crc(p_1266->g_863.s5, "p_1266->g_863.s5", print_hash_value);
    transparent_crc(p_1266->g_863.s6, "p_1266->g_863.s6", print_hash_value);
    transparent_crc(p_1266->g_863.s7, "p_1266->g_863.s7", print_hash_value);
    transparent_crc(p_1266->g_865.x, "p_1266->g_865.x", print_hash_value);
    transparent_crc(p_1266->g_865.y, "p_1266->g_865.y", print_hash_value);
    transparent_crc(p_1266->g_865.z, "p_1266->g_865.z", print_hash_value);
    transparent_crc(p_1266->g_865.w, "p_1266->g_865.w", print_hash_value);
    transparent_crc(p_1266->g_878, "p_1266->g_878", print_hash_value);
    transparent_crc(p_1266->g_912.s0, "p_1266->g_912.s0", print_hash_value);
    transparent_crc(p_1266->g_912.s1, "p_1266->g_912.s1", print_hash_value);
    transparent_crc(p_1266->g_912.s2, "p_1266->g_912.s2", print_hash_value);
    transparent_crc(p_1266->g_912.s3, "p_1266->g_912.s3", print_hash_value);
    transparent_crc(p_1266->g_912.s4, "p_1266->g_912.s4", print_hash_value);
    transparent_crc(p_1266->g_912.s5, "p_1266->g_912.s5", print_hash_value);
    transparent_crc(p_1266->g_912.s6, "p_1266->g_912.s6", print_hash_value);
    transparent_crc(p_1266->g_912.s7, "p_1266->g_912.s7", print_hash_value);
    transparent_crc(p_1266->g_915.x, "p_1266->g_915.x", print_hash_value);
    transparent_crc(p_1266->g_915.y, "p_1266->g_915.y", print_hash_value);
    transparent_crc(p_1266->g_917.s0, "p_1266->g_917.s0", print_hash_value);
    transparent_crc(p_1266->g_917.s1, "p_1266->g_917.s1", print_hash_value);
    transparent_crc(p_1266->g_917.s2, "p_1266->g_917.s2", print_hash_value);
    transparent_crc(p_1266->g_917.s3, "p_1266->g_917.s3", print_hash_value);
    transparent_crc(p_1266->g_917.s4, "p_1266->g_917.s4", print_hash_value);
    transparent_crc(p_1266->g_917.s5, "p_1266->g_917.s5", print_hash_value);
    transparent_crc(p_1266->g_917.s6, "p_1266->g_917.s6", print_hash_value);
    transparent_crc(p_1266->g_917.s7, "p_1266->g_917.s7", print_hash_value);
    transparent_crc(p_1266->g_918.x, "p_1266->g_918.x", print_hash_value);
    transparent_crc(p_1266->g_918.y, "p_1266->g_918.y", print_hash_value);
    transparent_crc(p_1266->g_920.s0, "p_1266->g_920.s0", print_hash_value);
    transparent_crc(p_1266->g_920.s1, "p_1266->g_920.s1", print_hash_value);
    transparent_crc(p_1266->g_920.s2, "p_1266->g_920.s2", print_hash_value);
    transparent_crc(p_1266->g_920.s3, "p_1266->g_920.s3", print_hash_value);
    transparent_crc(p_1266->g_920.s4, "p_1266->g_920.s4", print_hash_value);
    transparent_crc(p_1266->g_920.s5, "p_1266->g_920.s5", print_hash_value);
    transparent_crc(p_1266->g_920.s6, "p_1266->g_920.s6", print_hash_value);
    transparent_crc(p_1266->g_920.s7, "p_1266->g_920.s7", print_hash_value);
    transparent_crc(p_1266->g_921.s0, "p_1266->g_921.s0", print_hash_value);
    transparent_crc(p_1266->g_921.s1, "p_1266->g_921.s1", print_hash_value);
    transparent_crc(p_1266->g_921.s2, "p_1266->g_921.s2", print_hash_value);
    transparent_crc(p_1266->g_921.s3, "p_1266->g_921.s3", print_hash_value);
    transparent_crc(p_1266->g_921.s4, "p_1266->g_921.s4", print_hash_value);
    transparent_crc(p_1266->g_921.s5, "p_1266->g_921.s5", print_hash_value);
    transparent_crc(p_1266->g_921.s6, "p_1266->g_921.s6", print_hash_value);
    transparent_crc(p_1266->g_921.s7, "p_1266->g_921.s7", print_hash_value);
    transparent_crc(p_1266->g_927.x, "p_1266->g_927.x", print_hash_value);
    transparent_crc(p_1266->g_927.y, "p_1266->g_927.y", print_hash_value);
    transparent_crc(p_1266->g_927.z, "p_1266->g_927.z", print_hash_value);
    transparent_crc(p_1266->g_927.w, "p_1266->g_927.w", print_hash_value);
    transparent_crc(p_1266->g_942.s0, "p_1266->g_942.s0", print_hash_value);
    transparent_crc(p_1266->g_942.s1, "p_1266->g_942.s1", print_hash_value);
    transparent_crc(p_1266->g_942.s2, "p_1266->g_942.s2", print_hash_value);
    transparent_crc(p_1266->g_942.s3, "p_1266->g_942.s3", print_hash_value);
    transparent_crc(p_1266->g_942.s4, "p_1266->g_942.s4", print_hash_value);
    transparent_crc(p_1266->g_942.s5, "p_1266->g_942.s5", print_hash_value);
    transparent_crc(p_1266->g_942.s6, "p_1266->g_942.s6", print_hash_value);
    transparent_crc(p_1266->g_942.s7, "p_1266->g_942.s7", print_hash_value);
    transparent_crc(p_1266->g_943.s0, "p_1266->g_943.s0", print_hash_value);
    transparent_crc(p_1266->g_943.s1, "p_1266->g_943.s1", print_hash_value);
    transparent_crc(p_1266->g_943.s2, "p_1266->g_943.s2", print_hash_value);
    transparent_crc(p_1266->g_943.s3, "p_1266->g_943.s3", print_hash_value);
    transparent_crc(p_1266->g_943.s4, "p_1266->g_943.s4", print_hash_value);
    transparent_crc(p_1266->g_943.s5, "p_1266->g_943.s5", print_hash_value);
    transparent_crc(p_1266->g_943.s6, "p_1266->g_943.s6", print_hash_value);
    transparent_crc(p_1266->g_943.s7, "p_1266->g_943.s7", print_hash_value);
    transparent_crc(p_1266->g_943.s8, "p_1266->g_943.s8", print_hash_value);
    transparent_crc(p_1266->g_943.s9, "p_1266->g_943.s9", print_hash_value);
    transparent_crc(p_1266->g_943.sa, "p_1266->g_943.sa", print_hash_value);
    transparent_crc(p_1266->g_943.sb, "p_1266->g_943.sb", print_hash_value);
    transparent_crc(p_1266->g_943.sc, "p_1266->g_943.sc", print_hash_value);
    transparent_crc(p_1266->g_943.sd, "p_1266->g_943.sd", print_hash_value);
    transparent_crc(p_1266->g_943.se, "p_1266->g_943.se", print_hash_value);
    transparent_crc(p_1266->g_943.sf, "p_1266->g_943.sf", print_hash_value);
    transparent_crc(p_1266->g_949.s0, "p_1266->g_949.s0", print_hash_value);
    transparent_crc(p_1266->g_949.s1, "p_1266->g_949.s1", print_hash_value);
    transparent_crc(p_1266->g_949.s2, "p_1266->g_949.s2", print_hash_value);
    transparent_crc(p_1266->g_949.s3, "p_1266->g_949.s3", print_hash_value);
    transparent_crc(p_1266->g_949.s4, "p_1266->g_949.s4", print_hash_value);
    transparent_crc(p_1266->g_949.s5, "p_1266->g_949.s5", print_hash_value);
    transparent_crc(p_1266->g_949.s6, "p_1266->g_949.s6", print_hash_value);
    transparent_crc(p_1266->g_949.s7, "p_1266->g_949.s7", print_hash_value);
    transparent_crc(p_1266->g_977.x, "p_1266->g_977.x", print_hash_value);
    transparent_crc(p_1266->g_977.y, "p_1266->g_977.y", print_hash_value);
    transparent_crc(p_1266->g_983.s0, "p_1266->g_983.s0", print_hash_value);
    transparent_crc(p_1266->g_983.s1, "p_1266->g_983.s1", print_hash_value);
    transparent_crc(p_1266->g_983.s2, "p_1266->g_983.s2", print_hash_value);
    transparent_crc(p_1266->g_983.s3, "p_1266->g_983.s3", print_hash_value);
    transparent_crc(p_1266->g_983.s4, "p_1266->g_983.s4", print_hash_value);
    transparent_crc(p_1266->g_983.s5, "p_1266->g_983.s5", print_hash_value);
    transparent_crc(p_1266->g_983.s6, "p_1266->g_983.s6", print_hash_value);
    transparent_crc(p_1266->g_983.s7, "p_1266->g_983.s7", print_hash_value);
    transparent_crc(p_1266->g_983.s8, "p_1266->g_983.s8", print_hash_value);
    transparent_crc(p_1266->g_983.s9, "p_1266->g_983.s9", print_hash_value);
    transparent_crc(p_1266->g_983.sa, "p_1266->g_983.sa", print_hash_value);
    transparent_crc(p_1266->g_983.sb, "p_1266->g_983.sb", print_hash_value);
    transparent_crc(p_1266->g_983.sc, "p_1266->g_983.sc", print_hash_value);
    transparent_crc(p_1266->g_983.sd, "p_1266->g_983.sd", print_hash_value);
    transparent_crc(p_1266->g_983.se, "p_1266->g_983.se", print_hash_value);
    transparent_crc(p_1266->g_983.sf, "p_1266->g_983.sf", print_hash_value);
    transparent_crc(p_1266->g_984.x, "p_1266->g_984.x", print_hash_value);
    transparent_crc(p_1266->g_984.y, "p_1266->g_984.y", print_hash_value);
    transparent_crc(p_1266->g_984.z, "p_1266->g_984.z", print_hash_value);
    transparent_crc(p_1266->g_984.w, "p_1266->g_984.w", print_hash_value);
    transparent_crc(p_1266->g_1005.s0, "p_1266->g_1005.s0", print_hash_value);
    transparent_crc(p_1266->g_1005.s1, "p_1266->g_1005.s1", print_hash_value);
    transparent_crc(p_1266->g_1005.s2, "p_1266->g_1005.s2", print_hash_value);
    transparent_crc(p_1266->g_1005.s3, "p_1266->g_1005.s3", print_hash_value);
    transparent_crc(p_1266->g_1005.s4, "p_1266->g_1005.s4", print_hash_value);
    transparent_crc(p_1266->g_1005.s5, "p_1266->g_1005.s5", print_hash_value);
    transparent_crc(p_1266->g_1005.s6, "p_1266->g_1005.s6", print_hash_value);
    transparent_crc(p_1266->g_1005.s7, "p_1266->g_1005.s7", print_hash_value);
    transparent_crc(p_1266->g_1005.s8, "p_1266->g_1005.s8", print_hash_value);
    transparent_crc(p_1266->g_1005.s9, "p_1266->g_1005.s9", print_hash_value);
    transparent_crc(p_1266->g_1005.sa, "p_1266->g_1005.sa", print_hash_value);
    transparent_crc(p_1266->g_1005.sb, "p_1266->g_1005.sb", print_hash_value);
    transparent_crc(p_1266->g_1005.sc, "p_1266->g_1005.sc", print_hash_value);
    transparent_crc(p_1266->g_1005.sd, "p_1266->g_1005.sd", print_hash_value);
    transparent_crc(p_1266->g_1005.se, "p_1266->g_1005.se", print_hash_value);
    transparent_crc(p_1266->g_1005.sf, "p_1266->g_1005.sf", print_hash_value);
    transparent_crc(p_1266->g_1017.x, "p_1266->g_1017.x", print_hash_value);
    transparent_crc(p_1266->g_1017.y, "p_1266->g_1017.y", print_hash_value);
    transparent_crc(p_1266->g_1017.z, "p_1266->g_1017.z", print_hash_value);
    transparent_crc(p_1266->g_1017.w, "p_1266->g_1017.w", print_hash_value);
    transparent_crc(p_1266->g_1028.x, "p_1266->g_1028.x", print_hash_value);
    transparent_crc(p_1266->g_1028.y, "p_1266->g_1028.y", print_hash_value);
    transparent_crc(p_1266->g_1028.z, "p_1266->g_1028.z", print_hash_value);
    transparent_crc(p_1266->g_1028.w, "p_1266->g_1028.w", print_hash_value);
    transparent_crc(p_1266->g_1030.x, "p_1266->g_1030.x", print_hash_value);
    transparent_crc(p_1266->g_1030.y, "p_1266->g_1030.y", print_hash_value);
    transparent_crc(p_1266->g_1030.z, "p_1266->g_1030.z", print_hash_value);
    transparent_crc(p_1266->g_1030.w, "p_1266->g_1030.w", print_hash_value);
    transparent_crc(p_1266->g_1033.x, "p_1266->g_1033.x", print_hash_value);
    transparent_crc(p_1266->g_1033.y, "p_1266->g_1033.y", print_hash_value);
    transparent_crc(p_1266->g_1034.x, "p_1266->g_1034.x", print_hash_value);
    transparent_crc(p_1266->g_1034.y, "p_1266->g_1034.y", print_hash_value);
    transparent_crc(p_1266->g_1076.s0, "p_1266->g_1076.s0", print_hash_value);
    transparent_crc(p_1266->g_1076.s1, "p_1266->g_1076.s1", print_hash_value);
    transparent_crc(p_1266->g_1076.s2, "p_1266->g_1076.s2", print_hash_value);
    transparent_crc(p_1266->g_1076.s3, "p_1266->g_1076.s3", print_hash_value);
    transparent_crc(p_1266->g_1076.s4, "p_1266->g_1076.s4", print_hash_value);
    transparent_crc(p_1266->g_1076.s5, "p_1266->g_1076.s5", print_hash_value);
    transparent_crc(p_1266->g_1076.s6, "p_1266->g_1076.s6", print_hash_value);
    transparent_crc(p_1266->g_1076.s7, "p_1266->g_1076.s7", print_hash_value);
    transparent_crc(p_1266->g_1078, "p_1266->g_1078", print_hash_value);
    transparent_crc(p_1266->g_1093.x, "p_1266->g_1093.x", print_hash_value);
    transparent_crc(p_1266->g_1093.y, "p_1266->g_1093.y", print_hash_value);
    transparent_crc(p_1266->g_1093.z, "p_1266->g_1093.z", print_hash_value);
    transparent_crc(p_1266->g_1093.w, "p_1266->g_1093.w", print_hash_value);
    transparent_crc(p_1266->g_1094.s0, "p_1266->g_1094.s0", print_hash_value);
    transparent_crc(p_1266->g_1094.s1, "p_1266->g_1094.s1", print_hash_value);
    transparent_crc(p_1266->g_1094.s2, "p_1266->g_1094.s2", print_hash_value);
    transparent_crc(p_1266->g_1094.s3, "p_1266->g_1094.s3", print_hash_value);
    transparent_crc(p_1266->g_1094.s4, "p_1266->g_1094.s4", print_hash_value);
    transparent_crc(p_1266->g_1094.s5, "p_1266->g_1094.s5", print_hash_value);
    transparent_crc(p_1266->g_1094.s6, "p_1266->g_1094.s6", print_hash_value);
    transparent_crc(p_1266->g_1094.s7, "p_1266->g_1094.s7", print_hash_value);
    transparent_crc(p_1266->g_1094.s8, "p_1266->g_1094.s8", print_hash_value);
    transparent_crc(p_1266->g_1094.s9, "p_1266->g_1094.s9", print_hash_value);
    transparent_crc(p_1266->g_1094.sa, "p_1266->g_1094.sa", print_hash_value);
    transparent_crc(p_1266->g_1094.sb, "p_1266->g_1094.sb", print_hash_value);
    transparent_crc(p_1266->g_1094.sc, "p_1266->g_1094.sc", print_hash_value);
    transparent_crc(p_1266->g_1094.sd, "p_1266->g_1094.sd", print_hash_value);
    transparent_crc(p_1266->g_1094.se, "p_1266->g_1094.se", print_hash_value);
    transparent_crc(p_1266->g_1094.sf, "p_1266->g_1094.sf", print_hash_value);
    transparent_crc(p_1266->g_1103, "p_1266->g_1103", print_hash_value);
    transparent_crc(p_1266->g_1109.s0, "p_1266->g_1109.s0", print_hash_value);
    transparent_crc(p_1266->g_1109.s1, "p_1266->g_1109.s1", print_hash_value);
    transparent_crc(p_1266->g_1109.s2, "p_1266->g_1109.s2", print_hash_value);
    transparent_crc(p_1266->g_1109.s3, "p_1266->g_1109.s3", print_hash_value);
    transparent_crc(p_1266->g_1109.s4, "p_1266->g_1109.s4", print_hash_value);
    transparent_crc(p_1266->g_1109.s5, "p_1266->g_1109.s5", print_hash_value);
    transparent_crc(p_1266->g_1109.s6, "p_1266->g_1109.s6", print_hash_value);
    transparent_crc(p_1266->g_1109.s7, "p_1266->g_1109.s7", print_hash_value);
    transparent_crc(p_1266->g_1109.s8, "p_1266->g_1109.s8", print_hash_value);
    transparent_crc(p_1266->g_1109.s9, "p_1266->g_1109.s9", print_hash_value);
    transparent_crc(p_1266->g_1109.sa, "p_1266->g_1109.sa", print_hash_value);
    transparent_crc(p_1266->g_1109.sb, "p_1266->g_1109.sb", print_hash_value);
    transparent_crc(p_1266->g_1109.sc, "p_1266->g_1109.sc", print_hash_value);
    transparent_crc(p_1266->g_1109.sd, "p_1266->g_1109.sd", print_hash_value);
    transparent_crc(p_1266->g_1109.se, "p_1266->g_1109.se", print_hash_value);
    transparent_crc(p_1266->g_1109.sf, "p_1266->g_1109.sf", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1266->g_1116[i], "p_1266->g_1116[i]", print_hash_value);

    }
    transparent_crc(p_1266->g_1169.x, "p_1266->g_1169.x", print_hash_value);
    transparent_crc(p_1266->g_1169.y, "p_1266->g_1169.y", print_hash_value);
    transparent_crc(p_1266->g_1192.x, "p_1266->g_1192.x", print_hash_value);
    transparent_crc(p_1266->g_1192.y, "p_1266->g_1192.y", print_hash_value);
    transparent_crc(p_1266->g_1194.s0, "p_1266->g_1194.s0", print_hash_value);
    transparent_crc(p_1266->g_1194.s1, "p_1266->g_1194.s1", print_hash_value);
    transparent_crc(p_1266->g_1194.s2, "p_1266->g_1194.s2", print_hash_value);
    transparent_crc(p_1266->g_1194.s3, "p_1266->g_1194.s3", print_hash_value);
    transparent_crc(p_1266->g_1194.s4, "p_1266->g_1194.s4", print_hash_value);
    transparent_crc(p_1266->g_1194.s5, "p_1266->g_1194.s5", print_hash_value);
    transparent_crc(p_1266->g_1194.s6, "p_1266->g_1194.s6", print_hash_value);
    transparent_crc(p_1266->g_1194.s7, "p_1266->g_1194.s7", print_hash_value);
    transparent_crc(p_1266->g_1195.s0, "p_1266->g_1195.s0", print_hash_value);
    transparent_crc(p_1266->g_1195.s1, "p_1266->g_1195.s1", print_hash_value);
    transparent_crc(p_1266->g_1195.s2, "p_1266->g_1195.s2", print_hash_value);
    transparent_crc(p_1266->g_1195.s3, "p_1266->g_1195.s3", print_hash_value);
    transparent_crc(p_1266->g_1195.s4, "p_1266->g_1195.s4", print_hash_value);
    transparent_crc(p_1266->g_1195.s5, "p_1266->g_1195.s5", print_hash_value);
    transparent_crc(p_1266->g_1195.s6, "p_1266->g_1195.s6", print_hash_value);
    transparent_crc(p_1266->g_1195.s7, "p_1266->g_1195.s7", print_hash_value);
    transparent_crc(p_1266->g_1212.s0, "p_1266->g_1212.s0", print_hash_value);
    transparent_crc(p_1266->g_1212.s1, "p_1266->g_1212.s1", print_hash_value);
    transparent_crc(p_1266->g_1212.s2, "p_1266->g_1212.s2", print_hash_value);
    transparent_crc(p_1266->g_1212.s3, "p_1266->g_1212.s3", print_hash_value);
    transparent_crc(p_1266->g_1212.s4, "p_1266->g_1212.s4", print_hash_value);
    transparent_crc(p_1266->g_1212.s5, "p_1266->g_1212.s5", print_hash_value);
    transparent_crc(p_1266->g_1212.s6, "p_1266->g_1212.s6", print_hash_value);
    transparent_crc(p_1266->g_1212.s7, "p_1266->g_1212.s7", print_hash_value);
    transparent_crc(p_1266->g_1212.s8, "p_1266->g_1212.s8", print_hash_value);
    transparent_crc(p_1266->g_1212.s9, "p_1266->g_1212.s9", print_hash_value);
    transparent_crc(p_1266->g_1212.sa, "p_1266->g_1212.sa", print_hash_value);
    transparent_crc(p_1266->g_1212.sb, "p_1266->g_1212.sb", print_hash_value);
    transparent_crc(p_1266->g_1212.sc, "p_1266->g_1212.sc", print_hash_value);
    transparent_crc(p_1266->g_1212.sd, "p_1266->g_1212.sd", print_hash_value);
    transparent_crc(p_1266->g_1212.se, "p_1266->g_1212.se", print_hash_value);
    transparent_crc(p_1266->g_1212.sf, "p_1266->g_1212.sf", print_hash_value);
    transparent_crc(p_1266->g_1227, "p_1266->g_1227", print_hash_value);
    transparent_crc(p_1266->g_1228, "p_1266->g_1228", print_hash_value);
    transparent_crc(p_1266->g_1238.x, "p_1266->g_1238.x", print_hash_value);
    transparent_crc(p_1266->g_1238.y, "p_1266->g_1238.y", print_hash_value);
    transparent_crc(p_1266->g_1238.z, "p_1266->g_1238.z", print_hash_value);
    transparent_crc(p_1266->g_1238.w, "p_1266->g_1238.w", print_hash_value);
    transparent_crc(p_1266->g_1247.s0, "p_1266->g_1247.s0", print_hash_value);
    transparent_crc(p_1266->g_1247.s1, "p_1266->g_1247.s1", print_hash_value);
    transparent_crc(p_1266->g_1247.s2, "p_1266->g_1247.s2", print_hash_value);
    transparent_crc(p_1266->g_1247.s3, "p_1266->g_1247.s3", print_hash_value);
    transparent_crc(p_1266->g_1247.s4, "p_1266->g_1247.s4", print_hash_value);
    transparent_crc(p_1266->g_1247.s5, "p_1266->g_1247.s5", print_hash_value);
    transparent_crc(p_1266->g_1247.s6, "p_1266->g_1247.s6", print_hash_value);
    transparent_crc(p_1266->g_1247.s7, "p_1266->g_1247.s7", print_hash_value);
    transparent_crc(p_1266->g_1247.s8, "p_1266->g_1247.s8", print_hash_value);
    transparent_crc(p_1266->g_1247.s9, "p_1266->g_1247.s9", print_hash_value);
    transparent_crc(p_1266->g_1247.sa, "p_1266->g_1247.sa", print_hash_value);
    transparent_crc(p_1266->g_1247.sb, "p_1266->g_1247.sb", print_hash_value);
    transparent_crc(p_1266->g_1247.sc, "p_1266->g_1247.sc", print_hash_value);
    transparent_crc(p_1266->g_1247.sd, "p_1266->g_1247.sd", print_hash_value);
    transparent_crc(p_1266->g_1247.se, "p_1266->g_1247.se", print_hash_value);
    transparent_crc(p_1266->g_1247.sf, "p_1266->g_1247.sf", print_hash_value);
    transparent_crc(p_1266->g_1248.s0, "p_1266->g_1248.s0", print_hash_value);
    transparent_crc(p_1266->g_1248.s1, "p_1266->g_1248.s1", print_hash_value);
    transparent_crc(p_1266->g_1248.s2, "p_1266->g_1248.s2", print_hash_value);
    transparent_crc(p_1266->g_1248.s3, "p_1266->g_1248.s3", print_hash_value);
    transparent_crc(p_1266->g_1248.s4, "p_1266->g_1248.s4", print_hash_value);
    transparent_crc(p_1266->g_1248.s5, "p_1266->g_1248.s5", print_hash_value);
    transparent_crc(p_1266->g_1248.s6, "p_1266->g_1248.s6", print_hash_value);
    transparent_crc(p_1266->g_1248.s7, "p_1266->g_1248.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
