`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:18:31
// Design Name: 
// Module Name: topmodule
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Code your design here


module topmodule(
  input [127:0] state_in,
  input [127:0] key,
  output [127:0] state_out);
  
  wire [127:0] w [10:0];
  
  keyexpansion k1(key,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9],w[10]);
  
  
  // round 0(initial round)
  
  wire [127:0] wadd0;
  addroundkey add0(.state_in(state_in),.key(w[0]),.state_out(wadd0));
  
  
  
  //round 1 (first round)
  wire [127:0] wsub1,wshift1,wmix1,wadd1;
  
  sub_bytes      sub1(.state_in(wadd0),.state_out(wsub1));
  shift_rows     shift1(.state_in(wsub1),.state_out(wshift1));
  mix_columns    mix1(.state_in(wshift1),.state_out(wmix1));
  addroundkey    add1(.state_in(wmix1),.key(w[1]),.state_out(wadd1));
  
  //round 2 (first round)
  wire [127:0] wsub2,wshift2,wmix2,wadd2;
  
  sub_bytes      sub2(.state_in(wadd1),.state_out(wsub2));
  shift_rows     shift2(.state_in(wsub2),.state_out(wshift2));
  mix_columns    mix2(.state_in(wshift2),.state_out(wmix2));
  addroundkey    add2(.state_in(wmix2),.key(w[2]),.state_out(wadd2));
  
   //round 3 (first round)
  wire [127:0] wsub3,wshift3,wmix3,wadd3;
  
  sub_bytes      sub3(.state_in(wadd2),.state_out(wsub3));
  shift_rows     shift3(.state_in(wsub3),.state_out(wshift3));
  mix_columns    mix3(.state_in(wshift3),.state_out(wmix3));
  addroundkey    add3(.state_in(wmix3),.key(w[3]),.state_out(wadd3));
  
   //round 4 (first round)
  wire [127:0] wsub4,wshift4,wmix4,wadd4;
  
  sub_bytes      sub4(.state_in(wadd3),.state_out(wsub4));
  shift_rows     shift4(.state_in(wsub4),.state_out(wshift4));
  mix_columns    mix4(.state_in(wshift4),.state_out(wmix4));
  addroundkey    add4(.state_in(wmix4),.key(w[4]),.state_out(wadd4));
  
     //round 5 (first round)
  wire [127:0] wsub5,wshift5,wmix5,wadd5;
  
  sub_bytes      sub5(.state_in(wadd4),.state_out(wsub5));
  shift_rows     shift5(.state_in(wsub5),.state_out(wshift5));
  mix_columns    mix5(.state_in(wshift5),.state_out(wmix5));
  addroundkey    add5(.state_in(wmix5),.key(w[5]),.state_out(wadd5));
  
       //round 6 (first round)
  wire [127:0] wsub6,wshift6,wmix6,wadd6;
  
  sub_bytes      sub6(.state_in(wadd5),.state_out(wsub6));
  shift_rows     shift6(.state_in(wsub6),.state_out(wshift6));
  mix_columns    mix6(.state_in(wshift6),.state_out(wmix6));
  addroundkey    add6(.state_in(wmix6),.key(w[6]),.state_out(wadd6));
  
         //round 7 (first round)
  wire [127:0] wsub7,wshift7,wmix7,wadd7;
  
  sub_bytes      sub7(.state_in(wadd6),.state_out(wsub7));
  shift_rows     shift7(.state_in(wsub7),.state_out(wshift7));
  mix_columns    mix7(.state_in(wshift7),.state_out(wmix7));
  addroundkey    add7(.state_in(wmix7),.key(w[7]),.state_out(wadd7));
  
           //round 8 (first round)
  wire [127:0] wsub8,wshift8,wmix8,wadd8;
  
  sub_bytes      sub8(.state_in(wadd7),.state_out(wsub8));
  shift_rows     shift8(.state_in(wsub8),.state_out(wshift8));
  mix_columns    mix8(.state_in(wshift8),.state_out(wmix8));
  addroundkey    add8(.state_in(wmix8),.key(w[8]),.state_out(wadd8));
  
   //round 9 (first round)
  wire [127:0] wsub9,wshift9,wmix9,wadd9;
  
  sub_bytes      sub9(.state_in(wadd8),.state_out(wsub9));
  shift_rows     shift9(.state_in(wsub9),.state_out(wshift9));
  mix_columns    mix9(.state_in(wshift9),.state_out(wmix9));
  addroundkey    add9(.state_in(wmix9),.key(w[9]),.state_out(wadd9));
  
   //round 10 (first round)
  wire [127:0] wsub10,wshift10,wmix10,wadd10;
  
  sub_bytes     sub10(.state_in(wadd9),.state_out(wsub10));
  shift_rows     shift10(.state_in(wsub10),.state_out(wshift10));
  addroundkey    add10(.state_in(wshift10),.key(w[10]),.state_out(state_out));
  
endmodule
  
  