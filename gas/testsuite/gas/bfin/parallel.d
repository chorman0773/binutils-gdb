#objdump: -d
#name: parallel
.*: +file format .*

Disassembly of section .text:

00000000 <.text>:
   0:	0a ce 13 8a 	R5 = DEPOSIT \(R3, R2\) \|\| I0 \+= 0x2 \|\| NOP;
   4:	60 9f 00 00 
   8:	0a ce 37 c0 	R0 = DEPOSIT \(R7, R6\) \(X\) \|\| I1 \+= 0x4 \|\| NOP;
   c:	69 9f 00 00 
  10:	0a ce 0a 08 	R4 = EXTRACT \(R2, R1.L\) \(Z\) \|\| I2 -= M0 \|\| NOP;
  14:	72 9e 00 00 
  18:	0a ce 10 04 	R2 = EXTRACT \(R0, R2.L\) \(Z\) \|\| I3 \+= M1 \|\| NOP;
  1c:	67 9e 00 00 
  20:	0a ce 23 4e 	R7 = EXTRACT \(R3, R4.L\) \(X\) \|\| I3 \+= M1 \(BREV\) \|\| NOP;
  24:	e7 9e 00 00 
  28:	0a ce 0e 4a 	R5 = EXTRACT \(R6, R1.L\) \(X\) \|\| I0 -= 0x2 \|\| NOP;
  2c:	64 9f 00 00 
  30:	08 ce 08 00 	BITMUX \(R1, R0, A0\) \(ASR\) \|\| I1 -= 0x4 \|\| NOP;
  34:	6d 9f 00 00 
  38:	08 ce 13 00 	BITMUX \(R2, R3, A0\) \(ASR\) \|\| I0 \+= 0x2 \|\| NOP;
  3c:	60 9f 00 00 
  40:	08 ce 25 40 	BITMUX \(R4, R5, A0\) \(ASL\) \|\| SP = \[P0\] \|\| NOP;
  44:	46 91 00 00 
  48:	08 ce 3e 40 	BITMUX \(R7, R6, A0\) \(ASL\) \|\| FP = \[P1\+\+\] \|\| NOP;
  4c:	4f 90 00 00 
  50:	06 ce 00 ca 	R5.L = ONES R0 \|\| P0 = \[FP--\] \|\| NOP;
  54:	f8 90 00 00 
  58:	06 ce 02 ce 	R7.L = ONES R2 \|\| P1 = \[P5 \+ 0x18\] \|\| NOP;
  5c:	a9 ad 00 00 
  60:	10 cc 00 00 	A0 = ABS A0 \|\| P2 = \[SP \+ 0x3c\] \|\| R0 = \[I0\];
  64:	f2 af 00 9d 
  68:	10 cc 00 40 	A0 = ABS A1 \|\| P3 = \[FP -0x3c\] \|\| R1 = \[I1 \+\+ M0\];
  6c:	1b b9 89 9d 
  70:	30 cc 00 00 	A1 = ABS A0 \|\| P4 = \[FP -0x4\] \|\| R2 = \[I1\+\+\];
  74:	fc b9 0a 9c 
  78:	30 cc 00 40 	A1 = ABS A1 \|\| FP = \[SP\] \|\| R3 = \[I2--\];
  7c:	77 91 93 9c 
  80:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 \|\| R4 = \[P5 \+ 0x38\] \|\| R0.H = W\[I0\];
  84:	ac a3 40 9d 
  88:	07 cc 10 80 	R0 = ABS R2 \|\| B\[SP\] = R0 \|\| R1.H = W\[I1\+\+\];
  8c:	30 9b 49 9c 
  90:	02 cc 10 a8 	R4.L = R2.H \+ R0.L \(S\) \|\| B\[FP\] = R0 \|\| R2.H = W\[I2--\];
  94:	38 9b d2 9c 
  98:	22 cc 09 aa 	R5.H = R1.H \+ R1.L \(S\) \|\| B\[P0\] = R0 \|\| R3.L = W\[I3\];
  9c:	00 9b 3b 9d 
  a0:	02 cc 35 0c 	R6.L = R6.L \+ R5.L \(NS\) \|\| B\[P1\] = R0 \|\| R4.L = W\[I3\+\+\];
  a4:	08 9b 3c 9c 
  a8:	05 cc 01 98 	R4.L = R0 \+ R1 \(RND20\) \|\| B\[P2\] = R0 \|\| R5.L = W\[I2--\];
  ac:	10 9b b5 9c 
  b0:	25 cc 28 96 	R3.H = R5 \+ R0 \(RND20\) \|\| R0 = B\[P0\] \(X\) \|\| \[I0\] = R6;
  b4:	40 99 06 9f 
  b8:	05 cc 3d d2 	R1.L = R7 - R5 \(RND20\) \|\| R0 = B\[P4\] \(Z\) \|\| \[I1\+\+\] = R7;
  bc:	20 99 0f 9e 
  c0:	05 cc 01 04 	R2.L = R0 \+ R1 \(RND12\) \|\| R1 = B\[SP\] \(X\) \|\| \[I2--\] = R7;
  c4:	71 99 97 9e 
  c8:	25 cc 3e 0e 	R7.H = R7 \+ R6 \(RND12\) \|\| R1 = B\[P0\] \(X\) \|\| \[I3 \+\+ M1\] = R6;
  cc:	41 99 be 9f 
  d0:	05 cc 1a 4a 	R5.L = R3 - R2 \(RND12\) \|\| R1 = B\[P1\] \(Z\) \|\| W\[I3\] = R5.H;
  d4:	09 99 5d 9f 
  d8:	25 cc 0a 44 	R2.H = R1 - R2 \(RND12\) \|\| R1 = B\[P2\] \(Z\) \|\| W\[I2\+\+\] = R4.H;
  dc:	11 99 54 9e 
  e0:	07 ce 25 0c 	R6.L = EXPADJ \(R5, R4.L\) \|\| R1 = B\[P3\] \(Z\) \|\| W\[I1--\] = R3.H;
  e4:	19 99 cb 9e 
  e8:	07 ce 08 ca 	R5.L = EXPADJ \(R0.H, R1.L\) \|\| R1 = B\[P4\] \(Z\) \|\| W\[I0\] = R2.L;
  ec:	21 99 22 9f 
  f0:	07 ce 2b 48 	R4.L = EXPADJ \(R3, R5.L\) \(V\) \|\| R1 = B\[P5\] \(Z\) \|\| W\[I0\+\+\] = R1.L;
  f4:	29 99 21 9e 
  f8:	07 cc 2a 0c 	R6 = MAX \(R5, R2\) \|\| R2 = B\[P0\] \(X\) \|\| W\[I1--\] = R0.L;
  fc:	42 99 a8 9e 
 100:	07 cc 0b 00 	R0 = MAX \(R1, R3\) \|\| B\[P1\] = R2 \|\| NOP;
 104:	0a 9b 00 00 
 108:	07 cc 13 4a 	R5 = MIN \(R2, R3\) \|\| B\[P2\] = R2 \|\| R0 = \[I1\+\+\];
 10c:	12 9b 08 9c 
 110:	07 cc 38 48 	R4 = MIN \(R7, R0\) \|\| B\[P3\] = R2 \|\| R1 = \[I1\+\+\];
 114:	1a 9b 09 9c 
 118:	0b cc 00 c0 	A0 -= A1 \|\| B\[P4\] = R2 \|\| R2 = \[I1\+\+\];
 11c:	22 9b 0a 9c 
 120:	0b cc 00 e0 	A0 -= A1 \(W32\) \|\| B\[P5\] = R2 \|\| R3 = \[I1\+\+\];
 124:	2a 9b 0b 9c 
 128:	0b cc 00 80 	A0 \+= A1 \|\| B\[SP\] = R2 \|\| R4 = \[I1\+\+\];
 12c:	32 9b 0c 9c 
 130:	0b cc 00 a0 	A0 \+= A1 \(W32\) \|\| B\[FP\] = R2 \|\| R5 = \[I1\+\+\];
 134:	3a 9b 0d 9c 
 138:	0b cc 00 0e 	R7 = \(A0 \+= A1\) \|\| B\[SP\] = R3 \|\| R6 = \[I1\+\+\];
 13c:	33 9b 0e 9c 
 140:	0b cc 00 4c 	R6.L = \(A0 \+= A1\) \|\| B\[FP\] = R3 \|\| R7 = \[I1\+\+\];
 144:	3b 9b 0f 9c 
 148:	2b cc 00 40 	R0.H = \(A0 \+= A1\) \|\| B\[P0\] = R3 \|\| R7 = \[I0\+\+\];
 14c:	03 9b 07 9c 
 150:	00 ca 0a 24 	R0.L = R1.H \* R2.L \|\| B\[P1\] = R3 \|\| R1 = \[I0\+\+\];
 154:	0b 9b 01 9c 
 158:	20 ca 68 26 	R1.L = R5.H \* R0.H \(S2RND\) \|\| B\[P2\] = R3 \|\| R2 = \[I0\+\+\];
 15c:	13 9b 02 9c 
 160:	80 ca db 23 	R7.L = R3.L \* R3.H \(FU\) \|\| B\[P3\] = R3 \|\| R3 = \[I0\+\+\];
 164:	1b 9b 03 9c 
 168:	28 cb 15 27 	R4 = R2.H \* R5.H \(ISS2\) \|\| B\[P4\] = R3 \|\| R0 = \[I0\+\+\];
 16c:	23 9b 00 9c 
 170:	08 cb 0b 20 	R0 = R1.L \* R3.L \(IS\) \|\| B\[P5\] = R3 \|\| R5 = \[I0\+\+\];
 174:	2b 9b 05 9c 
 178:	08 ca a8 25 	R6 = R5.H \* R0.L \|\| B\[FP\] = R4 \|\| R7 = \[I0\+\+\];
 17c:	3c 9b 07 9c 
 180:	94 cb be 40 	R2.H = R7.L \* R6.H \(M, IU\) \|\| B\[SP\] = R4 \|\| R6 = \[I0\+\+\];
 184:	34 9b 06 9c 
 188:	04 ca e8 80 	R3.H = R5.H \* R0.L \|\| R4 = B\[P0\] \(X\) \|\| \[I0 \+\+ M0\] = R0;
 18c:	44 99 80 9f 
 190:	14 ca 09 40 	R0.H = R1.L \* R1.H \(M\) \|\| R4 = B\[P1\] \(X\) \|\| \[I0 \+\+ M0\] = R1;
 194:	4c 99 81 9f 
 198:	1c cb 3e 80 	R1 = R7.H \* R6.L \(M, IS\) \|\| R4 = B\[P2\] \(X\) \|\| \[I0 \+\+ M0\] = R2;
 19c:	54 99 82 9f 
 1a0:	0c ca 02 41 	R5 = R0.L \* R2.H \|\| R4 = B\[P3\] \(X\) \|\| \[I0 \+\+ M0\] = R3;
 1a4:	5c 99 83 9f 
 1a8:	1c ca b0 c0 	R3 = R6.H \* R0.H \(M\) \|\| R4 = B\[P4\] \(Z\) \|\| \[I0 \+\+ M0\] = R4;
 1ac:	24 99 84 9f 
 1b0:	63 c8 2f 02 	A0 = R5.L \* R7.H \(W32\) \|\| R4 = B\[P5\] \(Z\) \|\| \[I0 \+\+ M0\] = R5;
 1b4:	2c 99 85 9f 
 1b8:	03 c8 00 04 	A0 = R0.H \* R0.L \|\| R5 = B\[P0\] \(X\) \|\| \[I0 \+\+ M0\] = R6;
 1bc:	45 99 86 9f 
 1c0:	83 c8 13 0a 	A0 \+= R2.L \* R3.H \(FU\) \|\| R5 = B\[P1\] \(Z\) \|\| \[I0 \+\+ M0\] = R7;
 1c4:	0d 99 87 9f 
 1c8:	03 c8 21 0c 	A0 \+= R4.H \* R1.L \|\| R5 = B\[P2\] \(Z\) \|\| \[I1 \+\+ M1\] = R7;
 1cc:	15 99 af 9f 
 1d0:	03 c9 3e 12 	A0 -= R7.L \* R6.H \(IS\) \|\| R5 = B\[P3\] \(X\) \|\| \[I1 \+\+ M1\] = R6;
 1d4:	5d 99 ae 9f 
 1d8:	03 c8 2a 16 	A0 -= R5.H \* R2.H \|\| R5 = B\[P4\] \(Z\) \|\| \[I1 \+\+ M1\] = R5;
 1dc:	25 99 ad 9f 
 1e0:	10 c8 08 58 	A1 = R1.L \* R0.H \(M\) \|\| R5 = B\[P5\] \(X\) \|\| \[I1 \+\+ M1\] = R4;
 1e4:	6d 99 ac 9f 
 1e8:	00 c8 10 98 	A1 = R2.H \* R0.L \|\| R5 = B\[SP\] \(Z\) \|\| \[I1 \+\+ M1\] = R3;
 1ec:	35 99 ab 9f 
 1f0:	70 c8 3e 98 	A1 = R7.H \* R6.L \(M, W32\) \|\| R5 = B\[FP\] \(X\) \|\| \[I1 \+\+ M1\] = R2;
 1f4:	7d 99 aa 9f 
 1f8:	81 c8 1a 18 	A1 \+= R3.L \* R2.L \(FU\) \|\| R0.L = W\[I0\] \|\| \[I1 \+\+ M1\] = R1;
 1fc:	20 9d a9 9f 
 200:	01 c8 31 98 	A1 \+= R6.H \* R1.L \|\| R1.L = W\[I0\] \|\| \[I1 \+\+ M1\] = R0;
 204:	21 9d a8 9f 
 208:	02 c9 03 58 	A1 -= R0.L \* R3.H \(IS\) \|\| R2.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R0;
 20c:	22 9d d0 9f 
 210:	02 c8 17 58 	A1 -= R2.L \* R7.H \|\| R3.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R1;
 214:	23 9d d1 9f 
 218:	03 c8 f5 25 	R7.L = \(A0 = R6.H \* R5.L\) \|\| R4.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R2;
 21c:	24 9d d2 9f 
 220:	c3 c8 0a 24 	R0.L = \(A0 = R1.H \* R2.L\) \(TFU\) \|\| R5.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R3;
 224:	25 9d d3 9f 
 228:	03 c8 ac 28 	R2.L = \(A0 \+= R5.L \* R4.L\) \|\| R6.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R4;
 22c:	26 9d d4 9f 
 230:	43 c8 fe 2e 	R3.L = \(A0 \+= R7.H \* R6.H\) \(T\) \|\| R7.L = W\[I0\] \|\| \[I2 \+\+ M2\] = R5;
 234:	27 9d d5 9f 
 238:	03 c8 1a 36 	R0.L = \(A0 -= R3.H \* R2.H\) \|\| R7.L = W\[I1\+\+\] \|\| \[I2 \+\+ M2\] = R6;
 23c:	2f 9c d6 9f 
 240:	63 c9 6c 30 	R1.L = \(A0 -= R5.L \* R4.L\) \(IH\) \|\| R6.L = W\[I1\+\+\] \|\| \[I2 \+\+ M2\] = R7;
 244:	2e 9c d7 9f 
 248:	04 c8 48 58 	R1.H = \(A1 = R1.L \* R0.H\) \|\| R2.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R7;
 24c:	2a 9c ff 9f 
 250:	34 c9 83 98 	R2.H = \(A1 = R0.H \* R3.L\) \(M, ISS2\) \|\| R3.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R6;
 254:	2b 9c fe 9f 
 258:	05 c8 bf 59 	R6.H = \(A1 \+= R7.L \* R7.H\) \|\| R4.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R5;
 25c:	2c 9c fd 9f 
 260:	25 c8 d3 19 	R7.H = \(A1 \+= R2.L \* R3.L\) \(S2RND\) \|\| R5.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R4;
 264:	2d 9c fc 9f 
 268:	06 c8 a2 d9 	R6.H = \(A1 -= R4.H \* R2.H\) \|\| R6.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R3;
 26c:	2e 9c fb 9f 
 270:	d6 c8 5f 99 	R5.H = \(A1 -= R3.H \* R7.L\) \(M, TFU\) \|\| R7.L = W\[I1\+\+\] \|\| \[I3 \+\+ M3\] = R2;
 274:	2f 9c fa 9f 
 278:	0b c8 0a 20 	R0 = \(A0 = R1.L \* R2.L\) \|\| R1.L = W\[I2--\] \|\| \[I3 \+\+ M3\] = R1;
 27c:	b1 9c f9 9f 
 280:	0b c9 8a 20 	R2 = \(A0 = R1.L \* R2.L\) \(IS\) \|\| R1.L = W\[I2--\] \|\| \[I3 \+\+ M3\] = R0;
 284:	b1 9c f8 9f 
 288:	0b c8 3e 2d 	R4 = \(A0 \+= R7.H \* R6.L\) \|\| R2.L = W\[I2--\] \|\| R0.H = W\[I0\];
 28c:	b2 9c 40 9d 
 290:	2b c8 ab 2b 	R6 = \(A0 \+= R5.L \* R3.H\) \(S2RND\) \|\| R3.L = W\[I2--\] \|\| R1.H = W\[I1\];
 294:	b3 9c 49 9d 
 298:	0b c8 97 35 	R6 = \(A0 -= R2.H \* R7.L\) \|\| R4.L = W\[I2--\] \|\| R2.H = W\[I2\];
 29c:	b4 9c 52 9d 
 2a0:	8b c8 06 33 	R4 = \(A0 -= R0.L \* R6.H\) \(FU\) \|\| R5.L = W\[I2--\] \|\| R3.H = W\[I3\];
 2a4:	b5 9c 5b 9d 
 2a8:	0c c8 81 99 	R7 = \(A1 = R0.H \* R1.L\) \|\| R6.L = W\[I2--\] \|\| R4.H = W\[I3\];
 2ac:	b6 9c 5c 9d 
 2b0:	9c c8 13 d9 	R5 = \(A1 = R2.H \* R3.H\) \(M, FU\) \|\| R7.L = W\[I2--\] \|\| R4.H = W\[I2\];
 2b4:	b7 9c 54 9d 
 2b8:	0d c8 bd 18 	R3 = \(A1 \+= R7.L \* R5.L\) \|\| W\[P0\] = R0.L \|\| R6.H = W\[I1\];
 2bc:	00 8a 4e 9d 
 2c0:	2d c9 17 d8 	R1 = \(A1 \+= R2.H \* R7.H\) \(ISS2\) \|\| W\[P0\] = R1.L \|\| R7.H = W\[I0\];
 2c4:	40 8a 47 9d 
 2c8:	0e c8 80 58 	R3 = \(A1 -= R0.L \* R0.H\) \|\| W\[P0\] = R2.L \|\| R7.L = W\[I0\+\+\];
 2cc:	80 8a 27 9c 
 2d0:	1e c9 17 59 	R5 = \(A1 -= R2.L \* R7.H\) \(M, IS\) \|\| W\[P0\] = R3.L \|\| R6.L = W\[I1\+\+\];
 2d4:	c0 8a 2e 9c 
 2d8:	07 cc 10 ee 	R7 = -R2 \(S\) \|\| W\[P0\] = R4.L \|\| R5.L = W\[I2\+\+\];
 2dc:	00 8b 35 9c 
 2e0:	0e cc 00 00 	A0 = -A0 \|\| W\[P0\] = R5.L \|\| R4.L = W\[I3\+\+\];
 2e4:	40 8b 3c 9c 
 2e8:	0e cc 00 40 	A0 = -A1 \|\| W\[P0\] = R6.L \|\| R3.L = W\[I3--\];
 2ec:	80 8b bb 9c 
 2f0:	2e cc 00 00 	A1 = -A0 \|\| W\[P0\] = R7.L \|\| R2.L = W\[I1\+\+\];
 2f4:	c0 8b 2a 9c 
 2f8:	2e cc 00 40 	A1 = -A1 \|\| W\[P1\] = R0 \|\| R1.L = W\[I2--\];
 2fc:	08 97 b1 9c 
 300:	0e cc 00 c0 	A1 = -A1, A0 = -A0 \|\| W\[P1\] = R1 \|\| R0.L = W\[I1--\];
 304:	09 97 a8 9c 
 308:	0c cc 18 ca 	R5.L = R3 \(RND\) \|\| W\[P1\] = R2 \|\| R0 = \[I0 \+\+ M3\];
 30c:	0a 97 e0 9d 
 310:	2c cc 00 cc 	R6.H = R0 \(RND\) \|\| W\[P1\] = R3 \|\| R1 = \[I1 \+\+ M2\];
 314:	0b 97 c9 9d 
 318:	08 cc 00 20 	A0 = A0 \(S\) \|\| W\[P1\] = R4 \|\| R2 = \[I2 \+\+ M1\];
 31c:	0c 97 b2 9d 
 320:	08 cc 00 60 	A1 = A1 \(S\) \|\| W\[P1\] = R5 \|\| R3 = \[I3 \+\+ M0\];
 324:	0d 97 9b 9d 
 328:	08 cc 00 a0 	A1 = A1 \(S\), A0 = A0 \(S\) \|\| R6 = W\[P1\] \(Z\) \|\| \[I0\] = R0;
 32c:	0e 95 00 9f 
 330:	05 ce 00 0a 	R5.L = SIGNBITS R0 \|\| R7 = W\[P1\] \(Z\) \|\| \[I1\] = R0;
 334:	0f 95 08 9f 
 338:	05 ce 07 80 	R0.L = SIGNBITS R7.H \|\| R1 = W\[P2\+\+\] \(X\) \|\| \[I2\] = R0;
 33c:	51 94 10 9f 
 340:	06 ce 00 06 	R3.L = SIGNBITS A0 \|\| R2 = W\[P2\+\+\] \(X\) \|\| \[I3\] = R0;
 344:	52 94 18 9f 
 348:	06 ce 00 4e 	R7.L = SIGNBITS A1 \|\| R3 = W\[P2\+\+\] \(Z\) \|\| \[I0\] = R1;
 34c:	13 94 01 9f 
 350:	03 cc 37 ea 	R5.L = R6.H - R7.H \(S\) \|\| R4 = W\[P2\+\+\] \(X\) \|\| \[I1\] = R1;
 354:	54 94 09 9f 
 358:	23 cc 1b 40 	R0.H = R3.L - R3.H \(NS\) \|\| R5 = W\[P2\+\+\] \(X\) \|\| \[I2\] = R2;
 35c:	55 94 12 9f 
 360:	07 cc 10 84 	R2 = ABS R2 \|\| R1 = \[I0\+\+\] \|\| NOP;
 364:	01 9c 00 00 
 368:	03 c8 00 18 	MNOP \|\| P0 = \[FP \+ 0x14\] \|\| R0 = \[I2\+\+\];
 36c:	78 ad 10 9c 
 370:	0a cc 00 08 	R4.L = A0.X \|\| R6 = \[FP \+ 0x3c\] \|\| R4.H = W\[I1\+\+\];
 374:	fe a3 4c 9c 
 378:	0a cc 00 08 	R4.L = A0.X \|\| R4.H = W\[I1\+\+\] \|\| W\[I0\] = R4.H;
 37c:	4c 9c 44 9f 
 380:	0a cc 00 08 	R4.L = A0.X \|\| W\[I1\+\+\] = R4.L \|\| R4.H = W\[I0--\];
 384:	2c 9e c4 9c 
 388:	0a cc 00 48 	R4.L = A1.X \|\| R6 = B\[SP--\] \(Z\) \|\| R4.H = W\[I1\+\+\];
 38c:	b6 98 4c 9c 
 390:	0b cc 00 a0 	A0 \+= A1 \(W32\) \|\| R3.L = W\[I0\] \|\| R0 = \[I0 \+\+ M3\];
 394:	23 9d e0 9d 
 398:	0b cc 00 c0 	A0 -= A1 \|\| R0 = W\[P0\+\+\] \(X\) \|\| W\[I0\+\+\] = R3.L;
 39c:	40 94 23 9e 
