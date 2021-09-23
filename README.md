# ALU Design
###### tags: `ece550 project`

## Contributor
* contributor 1: `cl583 Chang Che Liu`
* contributor 2: `sb712 Sangwook Bok`

## Adder Design
### Description
We use 32 bit adder to complete addition and subtraction in alu. Inside the 32 bit CSA adder, we group four bit RCA into an adder, and use mux to choose which sum we need.
### Overall Architecture
![](https://i.imgur.com/Y6ZK88z.jpg)

* decreased gate delay by using an xor gate to replace not gate and mux
### 32 bit adder
#### the chocice between CLA and CSA
* CSA
    * add much faster (learn from slides ***Digital Arithmetic Extra***)
    * occupied more area (because of extra mux)
* CLA
    * occupied less area
    * have less gate delay, but also need to consider the fan-in fan-out issue
#### grouped 4 bit RCA into an adder for CSA
* it has less gate delay compare with others:
    * 2 bit adder for CSA: 34 gate delay
    * 4 bit adder for CSA: 28 gate delay
    * 8 bit adder for CSA: 30 gate delay
    * 16 bit adder for CSA: 50 gate delay
### 4 bit adder
![](https://i.imgur.com/R0xdzwv.png)

* use an xor gate to detect overflow, but only write the overflow result to the adder[31:28]
### 1 bit adder
![](https://i.imgur.com/nKpZsQN.png)

### isLessThan
| sum[31] | overflow | isNotEqual |
|:-------:|:--------:|:----------:|
|    0    |    0     |     0      |
|    0    |    1     |     1      |
|    1    |    0     |     1      |
|    1    |    1     |     0      |
* by truth table, use an xor gate to print isNotEqual

### isNotEqual
* isNotEqual = sum[31]+sum[30]+sum[29]+...+sum[1]+sum[0]
* Thus, use or gate to print isNotEqual


## Test Case
### Positve
* $(2^{31} - 1) +2= 0x80000001\text{, overflow}$
* $100+400= 500 \text{, no overflow}$
* $-2^{31}+(2^{31} - 1)= -1 \text{, no overflow}$
### Negative
* $-2^{31} - 1= 0xhfffffff\text{, overflow}$
* $-2^{31} + 1= 0x80000001\text{, no overflow}$
### Zero
* $0+(2^{31} - 1)= 2^{31} - 1 \text{, no overflow}$
* $-2^{31} + 0= -2^{31} \text{, no overflow}$
* $0+5000= 5000 \text{, no overflow}$
### isLessThan
* $A=0x7fffffff, B=0x80000000 -> isLessThan=0$
* $A=0x80000000,  B=0x7fffffff -> isLessThan=1$
* $A=0x80000001, B=0x00000001 -> isLessThan=1$
* $A=0x7fffffff, B=0x80000000 -> isLessThan=0$
### isNotEqual
* $A=0x00111000, B=0x00111000 -> isNotEqual=0$
* $A=0x10001010, B=0x10001010 -> isNotEqual=0$
* $A=0x00110101, B=0x10110101 -> isNotEqual=1$
* $A=0x10110101, B=0x7fffffff -> isNotEqual=1$

## Bitwise Logic
* use 32 and gate for bitwise and operation
* use 32 or gate for bitwise or operation
* use LSB of opcode to decide which result to print, between result of and operation and or operation

## Logic Left Shift
### Description
Build a barrel, which takes 32 bit operand and 5 bit control shiftment as input. In shifter, it contains 5 layer, for each layer there have 32 mux for shiftment, resulting total number of MUX is 160 for this operation. It ouput 32-bit left shifted result for the giving shiftment and operand
### Layout
![](https://i.imgur.com/oLQcdxx.png)

## Arithmetic Right Shift
Build a barrel, which takes 32 bit operand and 5 bit control shiftment as input. In shifter, it contains 5 layer, for each layer there have 32 mux for shiftment, resulting total number of MUX is 160 for this operation. Also, instead of filling 0 to shifted bit, we fill in sign bit. It ouput 32-bit right shifted result for the giving shiftment and operand
### layout
![](https://i.imgur.com/rGOo7Wi.png)

### Potential Performace
* IsNot Equal may have some potential performace issue because of the high fan-in in OR gate