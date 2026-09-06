`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2026 13:00:59
// Design Name: 
// Module Name: sub_bytes
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

module sbox(
    input  [7:0] state_in,
    output reg [7:0] state_out
);

always @(*) begin
    case (state_in)
        8'h00: state_out = 8'h63;
        8'h01: state_out = 8'h7C;
        8'h02: state_out = 8'h77;
        8'h03: state_out = 8'h7B;
        8'h04: state_out = 8'hF2;
        8'h05: state_out = 8'h6B;
        8'h06: state_out = 8'h6F;
        8'h07: state_out = 8'hC5;
        8'h08: state_out = 8'h30;
        8'h09: state_out = 8'h01;
        8'h0A: state_out = 8'h67;
        8'h0B: state_out = 8'h2B;
        8'h0C: state_out = 8'hFE;
        8'h0D: state_out = 8'hD7;
        8'h0E: state_out = 8'hAB;
        8'h0F: state_out = 8'h76;

        8'h10: state_out = 8'hCA;
        8'h11: state_out = 8'h82;
        8'h12: state_out = 8'hC9;
        8'h13: state_out = 8'h7D;
        8'h14: state_out = 8'hFA;
        8'h15: state_out = 8'h59;
        8'h16: state_out = 8'h47;
        8'h17: state_out = 8'hF0;
        8'h18: state_out = 8'hAD;
        8'h19: state_out = 8'hD4;
        8'h1A: state_out = 8'hA2;
        8'h1B: state_out = 8'hAF;
        8'h1C: state_out = 8'h9C;
        8'h1D: state_out = 8'hA4;
        8'h1E: state_out = 8'h72;
        8'h1F: state_out = 8'hC0;

        8'h20: state_out = 8'hB7;
        8'h21: state_out = 8'hFD;
        8'h22: state_out = 8'h93;
        8'h23: state_out = 8'h26;
        8'h24: state_out = 8'h36;
        8'h25: state_out = 8'h3F;
        8'h26: state_out = 8'hF7;
        8'h27: state_out = 8'hCC;
        8'h28: state_out = 8'h34;
        8'h29: state_out = 8'hA5;
        8'h2A: state_out = 8'hE5;
        8'h2B: state_out = 8'hF1;
        8'h2C: state_out = 8'h71;
        8'h2D: state_out = 8'hD8;
        8'h2E: state_out = 8'h31;
        8'h2F: state_out = 8'h15;

        8'h30: state_out = 8'h04;
        8'h31: state_out = 8'hC7;
        8'h32: state_out = 8'h23;
        8'h33: state_out = 8'hC3;
        8'h34: state_out = 8'h18;
        8'h35: state_out = 8'h96;
        8'h36: state_out = 8'h05;
        8'h37: state_out = 8'h9A;
        8'h38: state_out = 8'h07;
        8'h39: state_out = 8'h12;
        8'h3A: state_out = 8'h80;
        8'h3B: state_out = 8'hE2;
        8'h3C: state_out = 8'hEB;
        8'h3D: state_out = 8'h27;
        8'h3E: state_out = 8'hB2;
        8'h3F: state_out = 8'h75;

        8'h40: state_out = 8'h09;
        8'h41: state_out = 8'h83;
        8'h42: state_out = 8'h2C;
        8'h43: state_out = 8'h1A;
        8'h44: state_out = 8'h1B;
        8'h45: state_out = 8'h6E;
        8'h46: state_out = 8'h5A;
        8'h47: state_out = 8'hA0;
        8'h48: state_out = 8'h52;
        8'h49: state_out = 8'h3B;
        8'h4A: state_out = 8'hD6;
        8'h4B: state_out = 8'hB3;
        8'h4C: state_out = 8'h29;
        8'h4D: state_out = 8'hE3;
        8'h4E: state_out = 8'h2F;
        8'h4F: state_out = 8'h84;

        8'h50: state_out = 8'h53;
        8'h51: state_out = 8'hD1;
        8'h52: state_out = 8'h00;
        8'h53: state_out = 8'hED;
        8'h54: state_out = 8'h20;
        8'h55: state_out = 8'hFC;
        8'h56: state_out = 8'hB1;
        8'h57: state_out = 8'h5B;
        8'h58: state_out = 8'h6A;
        8'h59: state_out = 8'hCB;
        8'h5A: state_out = 8'hBE;
        8'h5B: state_out = 8'h39;
        8'h5C: state_out = 8'h4A;
        8'h5D: state_out = 8'h4C;
        8'h5E: state_out = 8'h58;
        8'h5F: state_out = 8'hCF;

        8'h60: state_out = 8'hD0;
        8'h61: state_out = 8'hEF;
        8'h62: state_out = 8'hAA;
        8'h63: state_out = 8'hFB;
        8'h64: state_out = 8'h43;
        8'h65: state_out = 8'h4D;
        8'h66: state_out = 8'h33;
        8'h67: state_out = 8'h85;
        8'h68: state_out = 8'h45;
        8'h69: state_out = 8'hF9;
        8'h6A: state_out = 8'h02;
        8'h6B: state_out = 8'h7F;
        8'h6C: state_out = 8'h50;
        8'h6D: state_out = 8'h3C;
        8'h6E: state_out = 8'h9F;
        8'h6F: state_out = 8'hA8;

        8'h70: state_out = 8'h51;
        8'h71: state_out = 8'hA3;
        8'h72: state_out = 8'h40;
        8'h73: state_out = 8'h8F;
        8'h74: state_out = 8'h92;
        8'h75: state_out = 8'h9D;
        8'h76: state_out = 8'h38;
        8'h77: state_out = 8'hF5;
        8'h78: state_out = 8'hBC;
        8'h79: state_out = 8'hB6;
        8'h7A: state_out = 8'hDA;
        8'h7B: state_out = 8'h21;
        8'h7C: state_out = 8'h10;
        8'h7D: state_out = 8'hFF;
        8'h7E: state_out = 8'hF3;
        8'h7F: state_out = 8'hD2;

        8'h80: state_out = 8'hCD;
        8'h81: state_out = 8'h0C;
        8'h82: state_out = 8'h13;
        8'h83: state_out = 8'hEC;
        8'h84: state_out = 8'h5F;
        8'h85: state_out = 8'h97;
        8'h86: state_out = 8'h44;
        8'h87: state_out = 8'h17;
        8'h88: state_out = 8'hC4;
        8'h89: state_out = 8'hA7;
        8'h8A: state_out = 8'h7E;
        8'h8B: state_out = 8'h3D;
        8'h8C: state_out = 8'h64;
        8'h8D: state_out = 8'h5D;
        8'h8E: state_out = 8'h19;
        8'h8F: state_out = 8'h73;

        8'h90: state_out = 8'h60;
        8'h91: state_out = 8'h81;
        8'h92: state_out = 8'h4F;
        8'h93: state_out = 8'hDC;
        8'h94: state_out = 8'h22;
        8'h95: state_out = 8'h2A;
        8'h96: state_out = 8'h90;
        8'h97: state_out = 8'h88;
        8'h98: state_out = 8'h46;
        8'h99: state_out = 8'hEE;
        8'h9A: state_out = 8'hB8;
        8'h9B: state_out = 8'h14;
        8'h9C: state_out = 8'hDE;
        8'h9D: state_out = 8'h5E;
        8'h9E: state_out = 8'h0B;
        8'h9F: state_out = 8'hDB;

        8'hA0: state_out = 8'hE0;
        8'hA1: state_out = 8'h32;
        8'hA2: state_out = 8'h3A;
        8'hA3: state_out = 8'h0A;
        8'hA4: state_out = 8'h49;
        8'hA5: state_out = 8'h06;
        8'hA6: state_out = 8'h24;
        8'hA7: state_out = 8'h5C;
        8'hA8: state_out = 8'hC2;
        8'hA9: state_out = 8'hD3;
        8'hAA: state_out = 8'hAC;
        8'hAB: state_out = 8'h62;
        8'hAC: state_out = 8'h91;
        8'hAD: state_out = 8'h95;
        8'hAE: state_out = 8'hE4;
        8'hAF: state_out = 8'h79;

        8'hB0: state_out = 8'hE7;
        8'hB1: state_out = 8'hC8;
        8'hB2: state_out = 8'h37;
        8'hB3: state_out = 8'h6D;
        8'hB4: state_out = 8'h8D;
        8'hB5: state_out = 8'hD5;
        8'hB6: state_out = 8'h4E;
        8'hB7: state_out = 8'hA9;
        8'hB8: state_out = 8'h6C;
        8'hB9: state_out = 8'h56;
        8'hBA: state_out = 8'hF4;
        8'hBB: state_out = 8'hEA;
        8'hBC: state_out = 8'h65;
        8'hBD: state_out = 8'h7A;
        8'hBE: state_out = 8'hAE;
        8'hBF: state_out = 8'h08;

        8'hC0: state_out = 8'hBA;
        8'hC1: state_out = 8'h78;
        8'hC2: state_out = 8'h25;
        8'hC3: state_out = 8'h2E;
        8'hC4: state_out = 8'h1C;
        8'hC5: state_out = 8'hA6;
        8'hC6: state_out = 8'hB4;
        8'hC7: state_out = 8'hC6;
        8'hC8: state_out = 8'hE8;
        8'hC9: state_out = 8'hDD;
        8'hCA: state_out = 8'h74;
        8'hCB: state_out = 8'h1F;
        8'hCC: state_out = 8'h4B;
        8'hCD: state_out = 8'hBD;
        8'hCE: state_out = 8'h8B;
        8'hCF: state_out = 8'h8A;

        8'hD0: state_out = 8'h70;
        8'hD1: state_out = 8'h3E;
        8'hD2: state_out = 8'hB5;
        8'hD3: state_out = 8'h66;
        8'hD4: state_out = 8'h48;
        8'hD5: state_out = 8'h03;
        8'hD6: state_out = 8'hF6;
        8'hD7: state_out = 8'h0E;
        8'hD8: state_out = 8'h61;
        8'hD9: state_out = 8'h35;
        8'hDA: state_out = 8'h57;
        8'hDB: state_out = 8'hB9;
        8'hDC: state_out = 8'h86;
        8'hDD: state_out = 8'hC1;
        8'hDE: state_out = 8'h1D;
        8'hDF: state_out = 8'h9E;

        8'hE0: state_out = 8'hE1;
        8'hE1: state_out = 8'hF8;
        8'hE2: state_out = 8'h98;
        8'hE3: state_out = 8'h11;
        8'hE4: state_out = 8'h69;
        8'hE5: state_out = 8'hD9;
        8'hE6: state_out = 8'h8E;
        8'hE7: state_out = 8'h94;
        8'hE8: state_out = 8'h9B;
        8'hE9: state_out = 8'h1E;
        8'hEA: state_out = 8'h87;
        8'hEB: state_out = 8'hE9;
        8'hEC: state_out = 8'hCE;
        8'hED: state_out = 8'h55;
        8'hEE: state_out = 8'h28;
        8'hEF: state_out = 8'hDF;

        8'hF0: state_out = 8'h8C;
        8'hF1: state_out = 8'hA1;
        8'hF2: state_out = 8'h89;
        8'hF3: state_out = 8'h0D;
        8'hF4: state_out = 8'hBF;
        8'hF5: state_out = 8'hE6;
        8'hF6: state_out = 8'h42;
        8'hF7: state_out = 8'h68;
        8'hF8: state_out = 8'h41;
        8'hF9: state_out = 8'h99;
        8'hFA: state_out = 8'h2D;
        8'hFB: state_out = 8'h0F;
        8'hFC: state_out = 8'hB0;
        8'hFD: state_out = 8'h54;
        8'hFE: state_out = 8'hBB;
        8'hFF: state_out = 8'h16;

        default: state_out = 8'h00;
    endcase
end

endmodule



module sub_bytes(
  input [127:0] state_in,
  output [127:0] state_out);
  
  
  sbox m0(.state_in(state_in[127:120]),.state_out(state_out[127:120]));
  sbox m1(.state_in(state_in[119:112]),.state_out(state_out[119:112]));
  sbox m2(.state_in(state_in[111:104]),.state_out(state_out[111:104]));
  sbox m3(.state_in(state_in[103:96]),.state_out(state_out[103:96]));
  sbox m4(.state_in(state_in[95:88]),.state_out(state_out[95:88]));
  sbox m5(.state_in(state_in[87:80]),.state_out(state_out[87:80]));
  sbox m6(.state_in(state_in[79:72]),.state_out(state_out[79:72]));
  sbox m7(.state_in(state_in[71:64]),.state_out(state_out[71:64]));
  sbox m8(.state_in(state_in[63:56]),.state_out(state_out[63:56]));
  sbox m9(.state_in(state_in[55:48]),.state_out(state_out[55:48]));
  sbox m10(.state_in(state_in[47:40]),.state_out(state_out[47:40]));
  sbox m11(.state_in(state_in[39:32]),.state_out(state_out[39:32]));
  sbox m12(.state_in(state_in[31:24]),.state_out(state_out[31:24]));
  sbox m13(.state_in(state_in[23:16]),.state_out(state_out[23:16]));
  sbox m14(.state_in(state_in[15:8]),.state_out(state_out[15:8]));
  sbox m15(.state_in(state_in[7:0]),.state_out(state_out[7:0]));
endmodule
  
