`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:16:16
// Design Name: 
// Module Name: keyexpansion
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

 module gmod(
    input [31:0] in,
    input [7:0] rcon,
    output [31:0] word_out);
    wire [7:0] b [3:0];   
    wire [31:0] leftshift; 
    wire [31:0] after_sbox;
    
    
    assign b[0] = in[31:24];
    assign  b[1] = in[23:16];
    assign  b[2] = in[15:8];
    assign  b[3] = in[7:0];
    
    assign leftshift ={b[1],b[2],b[3],b[0]};
    
    sbox m1(leftshift[31:24],after_sbox[31:24]);
    sbox m2(leftshift[23:16],after_sbox[23:16]);
    sbox m3(leftshift[15:8],after_sbox[15:8]);
    sbox m4(leftshift[7:0],after_sbox[7:0]);
    
    assign  word_out = after_sbox ^ {rcon,8'b0,8'b0,8'b0};
    
    
  endmodule
  
  
  
module keyexpansion(
  input [127:0] key_in,
  output  [127:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10);
  
  wire [31:0] w [43:0];             //words
  
     assign w[0]= key_in[127:96];
     assign w[1]= key_in[95:64];
     assign w[2]= key_in[63:32];
     assign w[3]= key_in[31:0];
      
  
  wire [31:0] go_out [9:0]; 

  
  gmod g1(w[3],8'h01,go_out[0]);
  assign w[4] = w[0] ^ go_out[0];
    assign  w[5] = w[1] ^ w[4];
    assign  w[6] = w[2] ^ w[5];
    assign  w[7] = w[3] ^ w[6];
  
  gmod g2(w[7],8'h02,go_out[1]);
  assign w[8] = w[4] ^ go_out[1];
  assign  w[9] = w[5] ^ w[8];
  assign  w[10] = w[6] ^ w[9];
  assign  w[11] = w[7] ^ w[10];
  
  gmod g3(w[11],8'h04,go_out[2]);
  assign w[12] = w[8] ^ go_out[2];
  assign  w[13] = w[9] ^ w[12];
  assign  w[14] = w[10] ^ w[13];
  assign  w[15] = w[11] ^ w[14];
  
  gmod g4(w[15],8'h08,go_out[3]);
  assign w[16] = w[12] ^ go_out[3];
  assign  w[17] = w[13] ^ w[16];
  assign  w[18] = w[14] ^ w[17];
  assign  w[19] = w[15] ^ w[18];
  
  gmod g5(w[19],8'h10,go_out[4]);
  assign w[20] = w[16] ^ go_out[4];
  assign  w[21] = w[17] ^ w[20];
  assign  w[22] = w[18] ^ w[21];
  assign  w[23] = w[19] ^ w[22];
  
  gmod g6(w[23],8'h20,go_out[5]);
  assign w[24] = w[20] ^ go_out[5];
  assign  w[25] = w[21] ^ w[24];
  assign  w[26] = w[22] ^ w[25];
  assign  w[27] = w[23] ^ w[26];
  
  gmod g7(w[27],8'h40,go_out[6]);
  assign w[28] = w[24] ^ go_out[6];
  assign  w[29] = w[25] ^ w[28];
  assign  w[30] = w[26] ^ w[29];
  assign  w[31] = w[27] ^ w[30];
  
  gmod g8(w[31],8'h80,go_out[7]);
  assign w[32] = w[28] ^ go_out[7];
  assign  w[33] = w[29] ^ w[32];
  assign  w[34] = w[30] ^ w[33];
  assign  w[35] = w[31] ^ w[34];
  
  gmod g9(w[35],8'h1B,go_out[8]);
  assign w[36] = w[32] ^ go_out[8];
  assign  w[37] = w[33] ^ w[36];
  assign  w[38] = w[34] ^ w[37];
  assign  w[39] = w[35] ^ w[38];
  
  gmod g10(w[39],8'h36,go_out[9]);
  assign w[40] = w[36] ^ go_out[9];
  assign  w[41] = w[37] ^ w[40];
  assign  w[42] = w[38] ^ w[41];
  assign  w[43] = w[39] ^ w[42];
  
 
  
     assign r0 = {w[0],w[1],w[2],w[3]};
     assign r1 = {w[4],w[5],w[6],w[7]};
     assign r2 = {w[8],w[9],w[10],w[11]};
     assign r3 = {w[12],w[13],w[14],w[15]};
     assign r4 = {w[16],w[17],w[18],w[19]};
     assign r5 = {w[20],w[21],w[22],w[23]};
     assign r6 = {w[24],w[25],w[26],w[27]};
     assign r7 = {w[28],w[29],w[30],w[31]};
     assign r8 = {w[32],w[33],w[34],w[35]};
     assign r9 = {w[36],w[37],w[38],w[39]};
     assign r10 = {w[40],w[41],w[42],w[43]};
endmodule
