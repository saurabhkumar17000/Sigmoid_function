`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 10:28:51 AM
// Design Name: 
// Module Name: NR
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


module NR(pwl_in,exp_in,nr_out) ;
input [19:0] pwl_in ;
input [19:0] exp_in ;
output [19:0] nr_out ;
wire [19:0] shifted_pwl ;
wire [39:0] sq ;
wire [59:0] nr_out_temp ;
wire [59:0] temp ;
assign shifted_pwl=pwl_in <<1;
assign sq=pwl_in * pwl_in ;
assign temp=sq *(20'd65536+exp_in ) ;
assign nr_out_temp ={8'd0 , shifted_pwl , 32'd0}-temp ;
assign nr_out=nr_out_temp [51:32];
endmodule