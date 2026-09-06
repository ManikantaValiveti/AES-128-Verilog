`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:14:33
// Design Name: 
// Module Name: mix_columns
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
//mix columns




module mix_columns(
  input [127:0] state_in,
  output [127:0] state_out);


function [7:0] mul_by_2;
  input [7:0] data;
  begin
    if (data[7]==0)
      mul_by_2=data<<1;
    else
      mul_by_2=(data<<1)^8'h1b;  
  end
endfunction

function [7:0] mul_by_3;
  input [7:0] data;
  begin
    mul_by_3=mul_by_2(data)^data;
  end
endfunction
  
  wire [7:0] b [15:0];
  
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
  
 //Column 0
assign state_out[127:120]=mul_by_2(b[0])^mul_by_3(b[1])^b[2]^b[3];
assign state_out[119:112]=b[0]^mul_by_2(b[1])^mul_by_3(b[2])^b[3];
assign state_out[111:104]=b[0]^b[1]^mul_by_2(b[2])^mul_by_3(b[3]);
assign state_out[103:96]=mul_by_3(b[0])^b[1]^b[2]^mul_by_2(b[3]);

//Column 1
assign state_out[95:88]=mul_by_2(b[4])^mul_by_3(b[5])^b[6]^b[7];
assign state_out[87:80]=b[4]^mul_by_2(b[5])^mul_by_3(b[6])^b[7];
assign state_out[79:72]=b[4]^b[5]^mul_by_2(b[6])^mul_by_3(b[7]);
assign state_out[71:64]=mul_by_3(b[4])^b[5]^b[6]^mul_by_2(b[7]);

//Column 2
assign state_out[63:56]=mul_by_2(b[8])^mul_by_3(b[9])^b[10]^b[11];
assign state_out[55:48]=b[8]^mul_by_2(b[9])^mul_by_3(b[10])^b[11];
assign state_out[47:40]=b[8]^b[9]^mul_by_2(b[10])^mul_by_3(b[11]);
assign state_out[39:32]=mul_by_3(b[8])^b[9]^b[10]^mul_by_2(b[11]);

//Column 3
assign state_out[31:24]=mul_by_2(b[12])^mul_by_3(b[13])^b[14]^b[15];
assign state_out[23:16]=b[12]^mul_by_2(b[13])^mul_by_3(b[14])^b[15];
assign state_out[15:8]=b[12]^b[13]^mul_by_2(b[14])^mul_by_3(b[15]);
assign state_out[7:0]=mul_by_3(b[12])^b[13]^b[14]^mul_by_2(b[15]);
  
endmodule

  
  