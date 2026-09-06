`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:15:29
// Design Name: 
// Module Name: addroundkey
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

module addroundkey(
  input [127:0] state_in,
  input [127:0] key,
  output [127:0] state_out);
  
  
  assign state_out = state_in^key;
endmodule