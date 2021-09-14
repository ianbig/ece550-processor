# Project ALU with Add and Sub checkpoint
###### tags: `ece550 project`

## Contributor
* contributor 1: `cl583 Chang Che Liu`
* contributor 2: `sb712 Sangwook Bok`

## Adder Design
### Overall Architecture
![](https://i.imgur.com/Yy2vmSa.jpg)

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