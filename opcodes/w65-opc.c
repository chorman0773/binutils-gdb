/* w65-opc.c -- Table of opcodes for the CR16 processor.
   Copyright (C) 2007-2021 Free Software Foundation, Inc.
   Contributed by Connor Horman

   This file is part of the GNU opcodes library.

   This library is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   It is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
   License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.  */

#include <stdio.h>
#include "libiberty.h"
#include "symcat.h"
#include "opcode/w65.h"
#include "w65-opc.h"

int w65_length_by_addr_mode(w65_addr_mode md,w65_prg_flags flg){
  switch(md&0xff){
    case ABS:
    case REL16:
    case SRC_DST:
    case IMM16:
       return 3;
    case DIRECT:
    case IMM8:
    case STACK:
    case REL8:
       return 2;
    case LONG:
       return 4;
    case IMMA:
       return flg&M?2:3;
    case IMMX:
       return flg&X?2:3;
    case IMPLIED:
       return 1;
    default:
       return -1; 
  }
}

const w65_insn w65_insn_tab[] ={
    {"adc",0x61,DIRECT|INDIRECT_X},
    {"adc",0x63,STACK},
    {"adc",0x65,DIRECT},
    {"adc",0x67,DIRECT|INDIRECT_LONG},
    {"adc",0x69,IMMA},
    {"adc",0x6d,ABS},
    {"adc",0x6f,LONG},
    {"cmp",0xC1,DIRECT|INDIRECT_X},
    {"cmp",0xC3,STACK},
    {"cmp",0xC5,DIRECT},
    {"cmp",0xC7,DIRECT|INDIRECT_LONG},
    {"cmp",0xC9,IMMA},
    {"cmp",0xCD,ABS},
    {"cmp",0xCF,LONG},
    {"cmp",0xD1,DIRECT|INDIRECT|INDEXED_Y},
    {"cmp",0xD2,DIRECT|INDIRECT},
    {"cmp",0xD3,STACK|INDIRECT|INDEXED_Y},
    {"cmp",0xD5,DIRECT|INDEXED_X},
    {"cmp",0xD7,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"cmp",0xD9,ABS|INDEXED_Y},
    {"cmp",0xDD,ABS|INDEXED_X},
    {"cmp",0xDF,LONG|INDEXED_X},
    {"cpx",0xE0,IMMX},
    {"cpx",0xE4,DIRECT},
    {"cpx",0xEC,ABS},
    {"cpy",0xC0,IMMX},
    {"cpy",0xC4,DIRECT},
    {"cpy",0xCC,ABS},
    {"dec",0x3A,ACC},
    {"dec",0xC6,DIRECT},
    {"dec",0xCE,ABS},
    {"dec",0xD6,DIRECT|INDEXED_X},
    {"dec",0xDE,ABS|INDEXED_X},
    {"dex",0xCA,IMPLIED},
    {"dey",0x88,IMPLIED},
    {"inc",0x1A,ACC},
    {"inc",0xE6,DIRECT},
    {"inc",0xEE,ABS},
    {"inc",0xF6,DIRECT|INDEXED_X},
    {"inc",0xFE,ABS|INDEXED_X},
    {"and",0x21,DIRECT|INDIRECT_X},
    {"and",0x23,STACK},
    {"and",0x25,DIRECT},
    {"and",0x27,DIRECT|INDIRECT_LONG},
    {"and",0x29,IMMA},
    {"and",0x2D,ABS},
    {"and",0x2F,LONG},
    {"and",0x31,DIRECT|INDIRECT|INDEXED_Y},
    {"and",0x32,DIRECT|INDIRECT},
    {"and",0x33,STACK|INDIRECT|INDEXED_Y},
    {"and",0x35,DIRECT|INDEXED_X},
    {"and",0x37,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"and",0x39,ABS|INDEXED_Y},
    {"and",0x3D,ABS|INDEXED_X},
    {"and",0x3F,LONG|INDEXED_X},
    {"eor",0x41,DIRECT|INDIRECT_X},
    {"eor",0x43,STACK},
    {"eor",0x45,DIRECT},
    {"eor",0x47,DIRECT|INDIRECT_LONG},
    {"eor",0x49,IMMA},
    {"eor",0x4D,ABS},
    {"eor",0x4F,LONG},
    {"eor",0x51,DIRECT|INDIRECT|INDEXED_Y},
    {"eor",0x52,DIRECT|INDIRECT},
    {"eor",0x53,STACK|INDIRECT|INDEXED_Y},
    {"eor",0x55,DIRECT|INDEXED_X},
    {"eor",0x57,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"eor",0x59,ABS|INDEXED_Y},
    {"eor",0x5D,ABS|INDEXED_X},
    {"eor",0x5F,LONG|INDEXED_X},
    {"ora",0x01,DIRECT|INDIRECT_X},
    {"ora",0x03,STACK},
    {"ora",0x05,DIRECT},
    {"ora",0x07,DIRECT|INDIRECT_LONG},
    {"ora",0x09,IMMA},
    {"ora",0x0D,ABS},
    {"ora",0x0F,LONG},
    {"ora",0x11,DIRECT|INDIRECT|INDEXED_Y},
    {"ora",0x12,DIRECT|INDIRECT},
    {"ora",0x13,STACK|INDIRECT|INDEXED_Y},
    {"ora",0x15,DIRECT|INDEXED_X},
    {"ora",0x17,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"ora",0x19,ABS|INDEXED_Y},
    {"ora",0x1D,ABS|INDEXED_X},
    {"ora",0x1F,LONG|INDEXED_X},
    {"bit",0x24,DIRECT},
    {"bit",0x2C,ABS},
    {"bit",0x34,DIRECT|INDEXED_X},
    {"bit",0x3C,ABS|INDEXED_X},
    {"bit",0x89,IMMA},
    {"trb",0x14,DIRECT},
    {"trb",0x1C,ABS},
    {"tsb",0x04,DIRECT},
    {"tsb",0x0C,ABS},
    {"asl",0x06,DIRECT},
    {"asl",0x0A,ACC},
    {"asl",0x0E,ABS},
    {"asl",0x16,DIRECT|INDEXED_X},
    {"asl",0x1E,ABS|INDEXED_X},
    {"lsr",0x46,DIRECT},
    {"lsr",0x4A,ACC},
    {"lsr",0x4E,ABS},
    {"lsr",0x56,DIRECT|INDEXED_X},
    {"lsr",0x5E,ABS|INDEXED_X},
    {"rol",0x26,DIRECT},
    {"rol",0x2A,ACC},
    {"rol",0x2E,ABS},
    {"rol",0x36,DIRECT|INDEXED_X},
    {"rol",0x3E,ABS|INDEXED_X},
    {"ror",0x66,DIRECT},
    {"ror",0x6A,ACC},
    {"ror",0x6E,ABS},
    {"ror",0x76,DIRECT|INDEXED_X},
    {"ror",0x7E,ABS|INDEXED_X},
    {"bcc",0x90,REL8},
    {"bcs",0xB0,REL8},
    {"beq",0xF0,REL8},
    {"bmi",0x30,REL8},
    {"bne",0xD0,REL8},
    {"bpl",0x10,REL8},
    {"bra",0x80,REL8},
    {"bvc",0x50,REL8},
    {"bvs",0x70,REL8},
    {"brl",0x82,REL16},
    {"jmp",0x4C,ABS},
    {"jmp",0x5C,LONG},
    {"jmp",0x6C,ABS|INDIRECT},
    {"jmp",0x7C,ABS|INDIRECT_X},
    {"jmp",0xDC,ABS|INDIRECT_LONG},
    {"jsl",0x22,LONG},
    {"jsr",0x20,ABS},
    {"jsr",0xFC,ABS|INDIRECT_X},
    {"rtl",0x6B,IMPLIED},
    {"rts",0x60,IMPLIED},
    {"brk",0x00,IMM8},
    {"cop",0x02,IMM8},
    {"rti",0x40,IMPLIED},
    {"clc",0x18,IMPLIED},
    {"cld",0xD8,IMPLIED},
    {"cli",0x58,IMPLIED},
    {"clv",0xB8,IMPLIED},
    {"sec",0x38,IMPLIED},
    {"sed",0xF8,IMPLIED},
    {"sei",0x78,IMPLIED},
    {"rep",0xC2,IMM8},
    {"sep",0xE2,IMM8},
    {"lda",0xA1,DIRECT|INDIRECT_X},
    {"lda",0xA3,STACK},
    {"lda",0xA5,DIRECT},
    {"lda",0xA7,DIRECT|INDIRECT_LONG},
    {"lda",0xA9,IMMA},
    {"lda",0xAD,ABS},
    {"lda",0xAF,LONG},
    {"lda",0xB1,DIRECT|INDIRECT|INDEXED_Y},
    {"lda",0xB2,DIRECT|INDIRECT},
    {"lda",0xB3,STACK|INDIRECT|INDEXED_Y},
    {"lda",0xB5,DIRECT|INDEXED_X},
    {"lda",0xB7,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"lda",0xB9,ABS|INDEXED_Y},
    {"lda",0xBD,ABS|INDEXED_X},
    {"lda",0xBF,LONG|INDEXED_X},
    {"sta",0xA1,DIRECT|INDIRECT_X},
    {"sta",0x83,STACK},
    {"sta",0x85,DIRECT},
    {"sta",0x87,DIRECT|INDIRECT_LONG},
    {"sta",0x8D,ABS},
    {"sta",0x8F,LONG},
    {"sta",0x91,DIRECT|INDIRECT|INDEXED_Y},
    {"sta",0x92,DIRECT|INDIRECT},
    {"sta",0x93,STACK|INDIRECT|INDEXED_Y},
    {"sta",0x95,DIRECT|INDEXED_X},
    {"sta",0x97,DIRECT|INDIRECT_LONG|INDEXED_Y},
    {"sta",0x99,ABS|INDEXED_Y},
    {"sta",0x9D,ABS|INDEXED_X},
    {"sta",0x9F,LONG|INDEXED_X},
    {"ldx",0xA2,IMMX},
    {"ldx",0xA6,DIRECT},
    {"ldx",0xAE,ABS},
    {"ldx",0xB6,DIRECT|INDEXED_Y},
    {"ldx",0xBE,ABS|INDEXED_Y},
    {"ldy",0xA0,IMMX},
    {"ldy",0xA4,DIRECT},
    {"ldy",0xAC,ABS},
    {"ldy",0xB4,DIRECT|INDEXED_X},
    {"ldy",0xBC,ABS|INDEXED_X},
    {"stx",0x86,DIRECT},
    {"stx",0x8E,ABS},
    {"stx",0x96,DIRECT|INDEXED_Y},
    {"sty",0x84,DIRECT},
    {"sty",0x8C,ABS},
    {"sty",0x94,DIRECT|INDEXED_X},
    {"stz",0x64,DIRECT},
    {"stz",0x9C,ABS},
    {"stz",0x74,DIRECT|INDEXED_X},
    {"stz",0x9E,ABS|INDEXED_X},
    {"mvn",0x54,SRC_DST},
    {"mvp",0x54,SRC_DST},
    {"nop",0xEA,IMPLIED},
    {"wdm",0x42,IMM8},
    {"pea",0xFA,IMM16},
    {"pei",0xDA,DIRECT},
    {"per",0x62,IMM16},
    {"pha",0x48,IMPLIED},
    {"phx",0xDA,IMPLIED},
    {"phy",0x5A,IMPLIED},
    {"pla",0x68,IMPLIED},
    {"plx",0xFA,IMPLIED},
    {"ply",0x7A,IMPLIED},
    {"phb",0x8B,IMPLIED},
    {"phd",0x0B,IMPLIED},
    {"phk",0x4B,IMPLIED},
    {"php",0x08,IMPLIED},
    {"plb",0xAB,IMPLIED},
    {"pld",0x2B,IMPLIED},
    {"plp",0x22,IMPLIED},
    {"stp",0xDB,IMPLIED},
    {"wai",0xCB,IMPLIED},
    {"tax",0xAA,IMPLIED},
    {"tay",0xA8,IMPLIED},
    {"tsx",0xBA,IMPLIED},
    {"txa",0x8A,IMPLIED},
    {"txs",0x9A,IMPLIED},
    {"txy",0x9B,IMPLIED},
    {"tya",0x98,IMPLIED},
    {"tyx",0xBB,IMPLIED},
    {"tcd",0x5B,IMPLIED},
    {"tcs",0x1B,IMPLIED},
    {"tdc",0x7B,IMPLIED},
    {"tsc",0x3B,IMPLIED},
    {"xba",0xEB,IMPLIED},
    {"xce",0xFB,IMPLIED},
    {NULL,0,0},
};


/* w65 instructions that don't have arguments.  */
const char * w65_no_op_insn[] =
{
  "dex", "dey", "inx", "iny",
  "rti", "rtl", "rts", "clc",
  "cld", "cli", "clv", "sec",
  "sed", "sei", "nop", "phx",
  "phy", "pha", "plx", "ply",
  "pla", "phb", "phd", "phk",
  "php", "plb", "pld", "plp",
  "stp", "wai", "tax", "tay",
  "tsx", "txa", "txs", "tya",
  "tyx", "tcd", "tcs", "tdc",
  "tsc", "xba", "xce", NULL
};
