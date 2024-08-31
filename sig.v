`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 10:08:36 AM
// Design Name: 
// Module Name: sig
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


module sig(x,sigx);
input [19:0]x ;
output [19:0]sigx ;
wire [19:0]pwl_out ;
wire [19:0]exp_out ;
PWL p(x,pwl_out) ;
exp e(x,exp_out) ;
NR nr(pwl_out,exp_out,sigx ) ;
endmodule



