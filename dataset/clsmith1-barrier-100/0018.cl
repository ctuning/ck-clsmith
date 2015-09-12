// ---fake_divergence ---inter_thread_comm -g 28,26,2 -l 4,26,2
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

__constant uint32_t permutations[10][208] = {
{66,111,67,15,25,85,186,119,161,134,169,71,99,206,0,37,40,121,26,82,44,90,192,175,57,174,31,61,86,196,160,129,9,124,202,138,200,91,144,183,151,147,55,150,19,148,2,128,179,205,58,1,10,100,64,87,88,180,8,184,197,102,52,115,172,130,165,65,187,30,182,135,176,20,96,18,42,72,190,149,173,34,94,78,118,116,35,98,93,199,142,53,7,120,126,185,33,63,68,131,155,23,54,141,177,157,108,13,171,79,62,101,56,164,203,77,181,46,189,24,89,156,207,12,139,170,47,17,81,195,153,75,103,5,48,60,188,163,110,198,133,143,27,104,105,166,159,28,122,117,168,14,45,194,95,112,204,83,3,123,114,74,36,4,132,43,6,73,38,84,125,29,70,191,193,92,140,146,154,167,22,113,178,152,107,41,201,158,162,106,39,76,11,59,49,32,51,97,50,137,136,109,16,127,145,80,21,69}, // permutation 0
{53,135,55,173,8,110,35,207,107,44,20,140,5,186,57,115,90,7,33,162,41,174,48,122,139,40,21,137,183,69,103,163,195,0,114,72,131,133,4,98,159,94,27,166,71,106,189,65,75,102,158,117,113,47,22,141,79,30,120,38,17,182,144,179,34,170,169,142,85,32,108,28,175,192,109,87,36,29,78,91,187,26,16,126,59,124,143,93,147,193,43,118,76,165,51,153,199,152,89,191,160,168,100,188,150,12,148,83,25,50,15,176,205,181,157,138,121,116,84,125,64,42,6,149,9,128,178,23,101,146,171,24,52,123,151,2,136,80,200,134,19,99,97,37,164,145,197,86,11,31,203,177,62,112,172,73,66,95,60,10,129,49,119,92,156,14,132,82,74,201,194,196,68,18,96,202,81,67,127,111,161,46,198,58,45,130,190,155,63,77,167,3,56,204,185,13,104,154,54,39,70,206,88,61,184,105,180,1}, // permutation 1
{159,63,18,178,200,191,203,73,100,95,197,189,59,184,142,45,84,116,71,143,27,157,205,17,40,42,72,187,113,70,114,105,2,24,193,121,163,152,83,160,126,173,47,124,78,171,139,62,181,74,23,65,104,194,61,9,57,123,119,26,192,161,177,180,81,144,0,174,134,52,145,53,44,102,43,106,170,166,202,164,33,39,98,60,128,141,55,91,146,132,1,93,188,87,165,11,56,37,97,90,201,85,38,31,147,176,158,12,35,206,122,99,22,101,103,129,29,167,196,185,207,3,199,198,131,46,179,138,77,204,6,36,86,140,148,127,14,133,79,19,48,150,51,109,162,135,28,21,15,76,64,155,136,195,5,183,69,16,125,182,13,67,82,75,110,130,41,80,66,153,92,120,4,10,169,112,172,107,8,117,34,94,115,190,118,89,54,58,96,49,156,149,186,168,50,7,137,25,154,111,20,88,30,151,175,108,32,68}, // permutation 2
{141,19,105,80,109,26,145,183,185,162,39,171,113,3,114,85,73,119,20,17,127,36,163,83,9,69,67,55,96,184,89,51,176,25,14,45,151,159,70,142,99,108,32,121,139,31,13,140,148,4,180,187,52,165,66,71,79,124,198,106,161,188,202,1,97,78,37,153,205,62,134,24,12,122,182,49,120,207,63,34,35,204,44,59,175,196,54,65,18,29,130,181,40,72,38,173,48,23,167,95,118,146,41,101,164,7,156,197,15,138,33,42,21,46,86,103,186,68,61,158,43,169,155,100,47,199,64,58,189,128,82,107,28,154,200,81,152,88,74,179,56,136,115,125,110,92,111,193,129,194,177,172,57,0,143,178,90,104,53,102,76,75,149,191,87,116,195,8,192,98,168,91,206,10,157,126,190,30,2,132,160,60,203,135,144,84,131,11,112,117,150,201,147,93,166,174,6,5,77,170,22,16,123,50,27,94,137,133}, // permutation 3
{75,11,39,107,177,161,154,57,31,69,0,166,92,65,200,189,104,18,29,146,55,3,150,6,129,71,24,149,58,133,202,134,205,199,48,1,187,141,147,21,68,167,152,180,145,97,151,44,122,47,77,90,81,184,165,169,70,2,181,52,155,174,89,171,56,4,160,85,125,132,204,102,54,185,176,123,116,110,195,100,114,198,120,87,59,93,86,46,207,137,63,148,183,66,124,190,196,38,80,131,15,79,9,162,179,20,136,43,60,118,197,72,203,91,45,67,13,119,143,201,117,158,153,126,22,164,163,127,193,25,113,78,94,5,7,34,73,95,35,64,172,96,40,159,115,101,103,82,33,191,27,42,12,26,74,140,16,10,175,106,98,14,17,173,51,88,112,156,83,206,41,138,49,19,111,135,30,99,188,178,109,84,157,144,128,8,194,186,142,108,62,50,105,53,37,139,23,121,182,168,170,76,192,61,28,36,130,32}, // permutation 4
{60,184,28,154,96,50,155,171,21,33,134,206,107,166,126,81,186,41,129,125,189,192,123,20,79,173,38,102,42,100,2,131,59,176,22,34,165,110,89,105,152,118,61,9,168,167,160,136,99,44,207,145,68,64,140,37,17,144,196,98,193,188,135,164,87,15,95,35,106,204,191,147,78,83,119,195,23,137,12,161,202,109,158,74,77,201,138,159,149,55,151,85,10,116,25,54,190,88,62,75,72,127,114,91,57,194,182,52,14,65,104,200,122,71,84,198,141,172,73,130,13,69,139,178,4,29,117,146,142,187,47,48,66,153,19,93,49,16,46,45,203,156,7,24,162,39,32,185,124,40,181,56,76,31,150,197,82,108,128,1,8,80,111,163,103,30,6,3,174,112,169,97,53,0,26,86,94,180,179,183,11,18,115,113,43,67,133,121,90,51,63,5,199,177,58,101,92,36,175,120,70,205,148,27,157,132,143,170}, // permutation 5
{197,137,112,108,146,135,63,50,206,168,157,13,150,69,81,37,24,88,124,147,67,183,151,66,29,49,55,92,172,162,173,85,27,204,179,142,45,35,104,46,74,163,47,76,180,34,33,38,16,109,28,193,113,159,93,102,14,21,52,194,19,10,72,119,106,83,26,87,139,152,70,127,71,167,205,103,90,188,57,126,181,31,91,40,149,185,60,165,51,11,178,131,207,12,23,62,65,25,128,122,132,134,184,48,171,170,155,143,133,115,22,86,160,1,84,140,32,68,117,95,114,64,105,199,17,164,96,192,154,79,153,3,100,130,120,125,190,97,5,39,144,148,129,136,116,0,101,118,111,169,141,177,20,156,166,189,176,107,110,182,99,200,78,15,123,75,54,138,158,121,186,198,191,174,73,61,203,77,36,8,187,195,2,94,44,161,42,196,145,175,7,30,80,98,43,59,58,202,41,56,89,4,53,6,9,201,18,82}, // permutation 6
{16,164,128,71,68,67,145,189,187,114,79,115,85,174,39,112,75,120,168,94,198,12,116,156,172,37,82,191,86,153,51,62,161,10,167,166,56,36,159,160,126,74,5,127,23,32,173,119,152,175,108,57,141,58,196,40,105,178,190,89,140,18,104,207,45,29,64,180,162,52,179,61,171,81,102,182,170,197,48,101,72,181,93,3,34,188,65,28,54,200,98,15,103,20,11,184,0,91,38,149,4,183,201,202,13,125,148,1,204,26,185,95,31,169,118,146,142,135,2,80,177,203,131,87,99,25,133,53,66,192,30,76,110,6,195,193,63,84,96,14,70,109,143,158,130,97,123,154,24,73,155,100,77,113,163,124,17,121,92,33,107,83,78,151,60,132,147,42,49,43,44,50,55,88,136,165,139,138,41,117,111,134,150,27,90,35,47,21,129,9,122,19,46,69,186,194,8,206,157,59,205,199,22,137,176,106,144,7}, // permutation 7
{199,135,133,80,98,45,132,21,187,81,127,147,20,1,75,94,86,103,56,15,137,161,195,18,183,92,41,95,70,178,123,35,176,188,12,184,83,99,118,168,200,143,126,65,119,162,124,140,40,71,172,46,73,32,13,198,148,24,28,30,9,122,44,78,38,105,39,87,58,158,112,125,77,97,128,166,57,51,201,113,5,202,62,190,34,89,8,33,106,180,149,19,174,173,2,169,53,175,47,74,138,101,108,129,145,165,10,111,11,29,204,16,63,107,192,203,121,27,152,66,193,157,164,181,31,179,197,82,167,52,130,159,186,170,91,189,90,49,194,131,104,61,150,100,43,68,151,146,191,139,109,50,182,144,156,207,72,163,22,206,59,84,88,23,26,69,76,85,114,37,115,6,4,117,17,7,79,67,110,64,142,136,42,0,177,134,48,54,185,205,141,171,102,155,36,154,153,116,25,196,60,3,120,160,93,14,55,96}, // permutation 8
{33,132,26,80,55,200,20,112,70,16,91,83,60,44,90,67,85,50,17,76,119,36,184,114,192,81,186,98,31,131,52,174,47,63,53,154,128,121,79,42,8,152,134,168,144,65,201,32,39,95,193,103,51,185,56,142,92,145,15,143,108,176,66,197,78,153,178,62,147,45,73,37,116,129,6,151,123,100,97,84,133,141,169,107,113,82,180,162,86,188,75,58,87,57,140,18,74,49,104,69,138,0,89,172,24,93,2,165,106,21,109,11,149,19,164,94,40,14,177,43,146,25,204,179,115,148,173,88,10,9,96,130,101,156,167,190,205,136,157,182,64,206,196,118,202,127,68,207,159,41,4,72,175,166,28,137,163,191,38,155,195,120,23,111,99,199,35,158,171,77,110,102,181,1,27,126,124,105,61,30,48,3,7,54,71,187,59,117,189,183,29,34,150,161,160,198,135,5,139,125,194,170,122,12,22,203,13,46} // permutation 9
};

// Seed: 18

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U2 {
   volatile int64_t  f0;
};

struct S3 {
    volatile int8_t g_11;
    volatile int8_t * volatile g_10;
    int8_t g_15[1][9][7];
    int8_t *g_14;
    uint32_t g_18;
    int32_t g_26;
    int32_t g_29;
    uint64_t g_30[9];
    union U2 g_31[7][8][3];
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
union U2  func_1(struct S3 * p_32);
int8_t  func_6(int8_t * p_7, int8_t  p_8, struct S3 * p_32);
uint8_t  func_21(uint32_t  p_22, int64_t  p_23, struct S3 * p_32);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_32->g_10 p_32->g_14 p_32->g_15 p_32->g_18 p_32->g_comm_values p_32->g_30 p_32->g_31
 * writes: p_32->g_18 p_32->g_26 p_32->g_29 p_32->g_15 p_32->g_30
 */
union U2  func_1(struct S3 * p_32)
{ /* block id: 4 */
    int8_t *l_9 = (void*)0;
    int8_t *l_13 = (void*)0;
    int8_t **l_12 = &l_13;
    uint32_t *l_16 = (void*)0;
    uint32_t *l_17 = &p_32->g_18;
    int32_t l_24 = (-8L);
    uint8_t *l_28 = (void*)0;
    p_32->g_30[3] &= (safe_mul_func_int8_t_s_s(((*p_32->g_14) = (safe_lshift_func_uint16_t_u_s(2UL, (func_6(l_9, ((p_32->g_10 != (((*l_17) |= ((((*l_12) = l_9) == p_32->g_14) | p_32->g_15[0][1][6])) , &p_32->g_15[0][3][3])) & (safe_rshift_func_uint8_t_u_u(p_32->g_comm_values[p_32->tid], ((p_32->g_29 = (func_21(p_32->g_comm_values[p_32->tid], l_24, p_32) == p_32->g_15[0][7][3])) && l_24)))), p_32) & p_32->g_comm_values[p_32->tid])))), l_24));
    return p_32->g_31[4][7][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_32->g_14 p_32->g_15
 * writes:
 */
int8_t  func_6(int8_t * p_7, int8_t  p_8, struct S3 * p_32)
{ /* block id: 11 */
    return (*p_32->g_14);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_32->g_26
 */
uint8_t  func_21(uint32_t  p_22, int64_t  p_23, struct S3 * p_32)
{ /* block id: 7 */
    int32_t *l_25 = &p_32->g_26;
    int16_t l_27 = 1L;
    (*l_25) = (&p_32->g_15[0][7][3] != (void*)0);
    return l_27;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[208];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 208; i++)
            l_comm_values[i] = 1;
    struct S3 c_33;
    struct S3* p_32 = &c_33;
    struct S3 c_34 = {
        (-1L), // p_32->g_11
        &p_32->g_11, // p_32->g_10
        {{{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L},{0L,0L,0x71L,0x6CL,1L,0x6CL,0x71L}}}, // p_32->g_15
        &p_32->g_15[0][7][3], // p_32->g_14
        0x92F1E5C8L, // p_32->g_18
        (-1L), // p_32->g_26
        0x04365721L, // p_32->g_29
        {0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL,0xE48792891F433C8AL}, // p_32->g_30
        {{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}},{{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}},{{0x37FFEAC8E4C12F69L},{-5L},{-1L}}}}, // p_32->g_31
        sequence_input[get_global_id(0)], // p_32->global_0_offset
        sequence_input[get_global_id(1)], // p_32->global_1_offset
        sequence_input[get_global_id(2)], // p_32->global_2_offset
        sequence_input[get_local_id(0)], // p_32->local_0_offset
        sequence_input[get_local_id(1)], // p_32->local_1_offset
        sequence_input[get_local_id(2)], // p_32->local_2_offset
        sequence_input[get_group_id(0)], // p_32->group_0_offset
        sequence_input[get_group_id(1)], // p_32->group_1_offset
        sequence_input[get_group_id(2)], // p_32->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 208)), permutations[0][get_linear_local_id()])), // p_32->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_33 = c_34;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_32);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_32->g_11, "p_32->g_11", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_32->g_15[i][j][k], "p_32->g_15[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_32->g_18, "p_32->g_18", print_hash_value);
    transparent_crc(p_32->g_26, "p_32->g_26", print_hash_value);
    transparent_crc(p_32->g_29, "p_32->g_29", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_32->g_30[i], "p_32->g_30[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_32->g_31[i][j][k].f0, "p_32->g_31[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_32->l_comm_values[get_linear_local_id()], "p_32->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_32->g_comm_values[get_linear_group_id() * 208 + get_linear_local_id()], "p_32->g_comm_values[get_linear_group_id() * 208 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}