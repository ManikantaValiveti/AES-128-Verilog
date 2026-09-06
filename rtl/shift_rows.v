`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:12:28
// Design Name: 
// Module Name: shift_rows
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
//shift rows

module shift_rows(
  input [127:0] state_in,
  output [127:0] state_out);
  
  wire [7:0] b [15:0];   //memory type decleration
  
 // equivalent to  wire [7:0] b0,b1,b2,b3,b4,b5,b6,b7,b8,b9b,10,b11,b12,b13,b14,b15;
  
  assign b[0] = state_in[127:120];
  assign b[1] = state_in[119:112];
  assign b[2] = state_in[111:104];
  assign b[3] = state_in[103:96];
  assign b[4] = state_in[95:88];
  assign b[5] = state_in[87:80];
  assign  b[6] = state_in[79:72];
  assign  b[7] = state_in[71:64];         //declearing bits into wires / bytes
  assign  b[8] = state_in[63:56];
  assign b[9] = state_in[55:48];
  assign b[10] = state_in[47:40];
  assign  b[11] = state_in[39:32];
  assign  b[12] = state_in[31:24];
  assign  b[13] = state_in[23:16];
  assign  b[14] = state_in[15:8];
  assign b[15] = state_in[7:0];
  
 assign state_out = {b[0],b[5],b[10],b[15],b[4],b[9],b[14],b[3],b[8],b[13],b[2],b[7],b[12],b[1],b[6],b[11]};
  
endmodule
  
