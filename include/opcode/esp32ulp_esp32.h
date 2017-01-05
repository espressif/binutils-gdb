#ifndef OPCODE__esp32ulp_esp32_H_
#define OPCODE__esp32ulp_esp32_H_


// ====================   I_ALUR  ============================
struct s_alu_reg
{
  unsigned int dreg:2;		/*!< Destination register */
  unsigned int sreg:2;		/*!< Register with operand A */
  unsigned int treg:2;		/*!< Register with operand B */
  unsigned int unused:15;	/*!< Unused */
  unsigned int sel:4;		/*!< Operation to perform, one of ALU_SEL_xxx */
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_ALU_REG) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_ALU) */
};				/*!< Format of ALU instruction (both sources are registers) */
typedef union
{
  struct s_alu_reg s;
  unsigned int unsigned_int;
} alu_reg;

#define I_ALUR(reg_dest, reg_src1, reg_src2, op_sel) { ( alu_reg ) { .s = { \
    .dreg = reg_dest, \
    .sreg = reg_src1, \
    .treg = reg_src2, \
    .unused = 0, \
    .sel = op_sel, \
    .sub_opcode = SUB_OPCODE_ALU_REG, \
    .opcode = OPCODE_ALU } }.unsigned_int }



// ====================   I_ALUI  ============================
struct s_alu_reg_i
{
  unsigned int dreg:2;		/*!< Destination register */
  unsigned int sreg:2;		/*!< Register with operand A */
  unsigned int imm:16;		/*!< imm value */
  unsigned int unused:1;	/*!< Unused */
  unsigned int sel:4;		/*!< Operation to perform, one of ALU_SEL_xxx */
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_ALU_REG) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_ALU) */
};				/*!< Format of ALU instruction (both sources are registers) */
typedef union
{
  struct s_alu_reg_i s;
  unsigned int unsigned_int;
} alu_reg_i;



#define I_ALUI(reg_dest, reg_src1, imme, op_sel) { ( alu_reg_i ) { .s = { \
    .dreg = reg_dest, \
    .sreg = reg_src1, \
    .imm = imme, \
    .unused = 0, \
    .sel = op_sel, \
    .sub_opcode = SUB_OPCODE_ALU_IMM, \
    .opcode = OPCODE_ALU } }.unsigned_int }

// ====================   I_ALUS  ============================
struct s_alu_reg_s
{
  unsigned int unused1:4;	/*!< Destination register */
  unsigned int imm:8;		/*!< imm value */
  unsigned int unused2:9;	/*!< Unused */
  unsigned int sel:4;		/*!< Operation to perform, one of ALU_SEL_xxx */
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_ALU_REG) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_ALU) */
};				/*!< Format of ALU instruction (both sources are registers) */
typedef union
{
  struct s_alu_reg_s s;
  unsigned int unsigned_int;
} alu_reg_s;



#define I_ALUS(op_sel, imme) { ( alu_reg_s ) { .s = { \
    .unused1 = 0, \
    .imm = imme, \
    .unused2 = 0, \
    .sel = op_sel, \
    .sub_opcode = SUB_OPCODE_ALU_CNT, \
    .opcode = OPCODE_ALU } }.unsigned_int }

//   ------------------   Jump   ------------------------
struct s_jump_alu_ri
{
  unsigned int dreg:2;		/*!< Register which contains target PC, expressed in words (used if .reg == 1) */
  unsigned int addr:11;		/*!< Target PC, expressed in words (used if .reg == 0) */
  unsigned int unused:8;	/*!< Unused */
  unsigned int reg:1;		/*!< Target PC in register (1) or immediate (0) */
  unsigned int type:3;		/*!< Jump condition (BX_JUMP_TYPE_xxx) */
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_BX) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_BRANCH) */
};				/*!< Format of ALU instruction (both sources are registers) */
typedef union
{
  struct s_jump_alu_ri s;
  unsigned int unsigned_int;
} jump_alu_ri;

#define OPCODE_BRANCH 8		/*!< Branch instructions */
#define SUB_OPCODE_BX  0	/*!< Branch to absolute PC (immediate or in register) */
#define SUB_OPCODE_BR  1	/*!< Branch to relative PC */
#define SUB_OPCODE_BS  2	/*!< Branch to relative PC */

#define I_JUMP_RI(reg_pc, imm_pc, cond, mode) { ( jump_alu_ri ) { .s = { \
    .dreg = reg_pc, \
    .addr = imm_pc, \
    .unused = 0, \
    .reg = mode,\
    .type = cond,\
    .sub_opcode = SUB_OPCODE_BX, \
    .opcode = OPCODE_BRANCH } }.unsigned_int }


//   ------------------   Jump  relr ------------------------
struct s_jump_alu_relr
{
  unsigned int threshold:16;
  unsigned int judge:1;
  unsigned int step:8;
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_BX) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_BRANCH) */
};				/*!< Format of ALU instruction  */
typedef union
{
  struct s_jump_alu_relr s;
  unsigned int unsigned_int;
} jump_alu_relr;


#define I_JUMP_RELR(thresh, jud, stp) { ( jump_alu_relr ) { .s = { \
    .threshold = thresh, \
    .judge = jud, \
    .step = ((stp < 0) ? ((-stp) | (1 << 7)) : stp) , \
    .sub_opcode = SUB_OPCODE_BR, \
    .opcode = OPCODE_BRANCH } }.unsigned_int }

//   ------------------   Jump  rels ------------------------
struct s_jump_alu_rels
{
  unsigned int threshold:8;
  unsigned int unused:7;
  unsigned int judge:2;
  unsigned int step:8;
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_BX) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_BRANCH) */
};				/*!< Format of ALU instruction  */
typedef union
{
  struct s_jump_alu_rels s;
  unsigned int unsigned_int;
} jump_alu_rels;


#define I_JUMP_RELS(thresh, jud, stp) { ( jump_alu_rels ) { .s = { \
    .threshold = thresh, \
    .judge = jud, \
    .step = ((stp < 0) ? ((-stp) | (1 << 7)) : stp) , \
    .sub_opcode = SUB_OPCODE_BS, \
    .opcode = OPCODE_BRANCH } }.unsigned_int }

//   ------------------   wr_mem  ------------------------
#define OPCODE_ST 6		/*!< Instruction: store indirect to RTC memory */
#define SUB_OPCODE_ST 4		/*!< Store 32 bits, 16 MSBs contain PC, 16 LSBs contain value from source register */
struct s_wr_mem
{
  unsigned int dreg:2;
  unsigned int sreg:2;
  unsigned int unused1:6;
  unsigned int offset:11;
  unsigned int unused2:4;
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_BX) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_BRANCH) */
};				/*!< Format of ALU instruction  */
typedef union
{
  struct s_wr_mem s;
  unsigned int unsigned_int;
} wr_mem;


#define WR_MEM(dest, src, offs) { ( wr_mem ) { .s = { \
    .dreg = dest, \
    .sreg = src, \
    .unused1 = 0, \
    .offset = offs, \
    .unused2 = 0, \
    .sub_opcode = SUB_OPCODE_ST, \
    .opcode = OPCODE_ST } }.unsigned_int }

//   ------------------   rd_mem  ------------------------
#define OPCODE_LD 13		/*!< Instruction: store indirect to RTC memory */
#define SUB_OPCODE_LD 0		/*!< Store 32 bits, 16 MSBs contain PC, 16 LSBs contain value from source register */
struct s_rd_mem
{
  unsigned int dreg:2;
  unsigned int sreg:2;
  unsigned int unused1:6;
  unsigned int offset:11;
  unsigned int unused2:4;
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_BX) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_BRANCH) */
};				/*!< Format of ALU instruction  */
typedef union
{
  struct s_rd_mem s;
  unsigned int unsigned_int;
} rd_mem;


#define RD_MEM(dest, src, offs) { ( rd_mem ) { .s = { \
    .dreg = dest, \
    .sreg = src, \
    .unused1 = 0, \
    .offset = offs, \
    .unused2 = 0, \
    .sub_opcode = SUB_OPCODE_LD, \
    .opcode = OPCODE_LD } }.unsigned_int }


//   ------------------   SLEEP  ------------------------
#define SUB_OPCODE_SLEEP  1	/*!< Stop executing the program and run it again after selected interval */
struct s_cmd_sleep
{
  unsigned int cycle_sel:4;	/*!< Select which one of SARADC_ULP_CP_SLEEP_CYCx_REG to get the sleep duration from */
  unsigned int unused:21;	/*!< Unused */
  unsigned int sub_opcode:3;	/*!< Sub opcode (SUB_OPCODE_SLEEP) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_END) */
};				/*!< Format of END instruction with wakeup */
typedef union
{
  struct s_cmd_sleep s;
  unsigned int unsigned_int;
} cmd_sleep;


#define OP_CMD_SLEEP(sleep) { ( cmd_sleep ) { .s = { \
    .cycle_sel = sleep, \
    .unused = 0,\
    .sub_opcode = SUB_OPCODE_SLEEP,\
    .opcode = OPCODE_EXIT } }.unsigned_int }


//   ------------------   RD/WR reg  ------------------------
#define OPCODE_WR_REG 1		/*!< Instruction: write peripheral register (RTC_CNTL/RTC_IO/SARADC) (not implemented yet) */

#define OPCODE_RD_REG 2		/*!< Instruction: read peripheral register (RTC_CNTL/RTC_IO/SARADC) (not implemented yet) */
struct s_cmd_wr_reg
{
  unsigned int addr:10;		/*!< Address within either RTC_CNTL, RTC_IO, or SARADC */
  unsigned int data:8;		/*!< 8 bits of data to write */
  unsigned int low:5;		/*!< Low bit */
  unsigned int high:5;		/*!< High bit */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_WR_REG) */
};				/*!< Format of WR_REG instruction */
typedef union
{
  struct s_cmd_wr_reg s;
  unsigned int unsigned_int;
} cmd_wr_reg;

struct s_cmd_rd_reg
{
  unsigned int addr:10;		/*!< Address within either RTC_CNTL, RTC_IO, or SARADC */
  unsigned int unused:8;	/*!< Unused */
  unsigned int low:5;		/*!< Low bit */
  unsigned int high:5;		/*!< High bit */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_WR_REG) */
};				/*!< Format of RD_REG instruction */
typedef union
{
  struct s_cmd_rd_reg s;
  unsigned int unsigned_int;
} cmd_rd_reg;

/**
* Write literal value to a peripheral register
*
* reg[high_bit : low_bit] = val
* This instruction can access RTC_CNTL_, RTC_IO_, and SENS_ peripheral registers.
*/
#define I_WR_REG(reg_addr, low_bit, high_bit, val) { ( cmd_wr_reg ) { .s = { \
    .addr = reg_addr, \
    .data = val, \
    .low = low_bit, \
    .high = high_bit, \
    .opcode = OPCODE_WR_REG } }.unsigned_int }

/**
* Read from peripheral register into R0
*
* R0 = reg[high_bit : low_bit]
* This instruction can access RTC_CNTL_, RTC_IO_, and SENS_ peripheral registers.
*/
#define I_RD_REG(reg_addr, low_bit, high_bit) { ( cmd_rd_reg ) { .s = { \
    .addr = reg_addr, \
    .unused = 0, \
    .low = low_bit, \
    .high = high_bit, \
    .opcode = OPCODE_RD_REG } }.unsigned_int }

//   ------------------   RD/WR reg  ------------------------
#define OPCODE_I2C 3		/*!< Instruction: read/write I2C (not implemented yet) */
#define OPCODE_I2C_RD 0
#define OPCODE_I2C_WR 1
struct s_cmd_i2c
{
  unsigned int i2c_addr:8;	/*!< I2C slave address */
  unsigned int data:8;		/*!< Data to read or write */
  unsigned int low_bits:3;	/*!< TBD */
  unsigned int high_bits:3;	/*!< TBD */
  unsigned int i2c_sel:4;	/*!< TBD, select reg_i2c_slave_address[7:0] */
  unsigned int unused:1;	/*!< Unused */
  unsigned int rw_bit:1;	/*!< Write (1) or read (0) */
  unsigned int opcode:4;	/*!< Opcode (OPCODE_I2C) */
};				/*!< Format of I2C instruction */
typedef union
{
  struct s_cmd_i2c s;
  unsigned int unsigned_int;
} cmd_i2c;

#define I_I2C_RW(addr, val, low, high, sel, rw) { ( cmd_i2c ) { .s = { \
    .i2c_addr = addr, \
    .data = val, \
    .low_bits = low, \
    .high_bits = high, \
    .i2c_sel = sel, \
    .unused = 0, \
    .rw_bit = rw, \
    .opcode = OPCODE_I2C } }.unsigned_int }

// --------------------------------------------------------------------------

#endif // OPCODE__esp32ulp_esp32_H_
