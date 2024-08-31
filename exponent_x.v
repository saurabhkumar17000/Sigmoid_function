`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 10:44:20 AM
// Design Name: 
// Module Name: exponent_x
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


module exp(x,z);
input [19:0] x ;
output [19:0] z ;
wire [39:0] ln1 ;
wire [3:0]m;
wire [3:0] j ;
wire [11:0] r_f ;
wire [ 19 : 0 ] shifted_val ;
wire [ 39 : 0 ] rout ;
wire [ 19 : 0 ] tempj ;
wire [ 19 : 0 ] r ;
wire [ 39 : 0 ] outtemp ;

assign ln1 = x*20'd94548;
assign m=ln1 [35:32] ;
assign j=ln1 [31:28] ;
op o1 ( j , tempj ) ;
assign r_f = ln1[ 27 : 16 ] ;
assign rout={8'd0 , r_f }*20'd45408;
assign r=rout [ 35 : 16 ] ;
assign shifted_val=tempj>>m;
assign outtemp=(20'd65536-r )*shifted_val ;
assign z=outtemp[ 35 : 16 ] ;
endmodule

module op( j , out ) ;
input [3:0] j ;
output reg [19:0] out ;
reg [19:0] sig [0:15] ;
always @(*)
begin
sig[0]=20'd65536 ;
sig[1]=20'd62757 ;
sig[2]=20'd60096 ;
sig[3]=20'd57548 ;
sig[4]=20'd55103 ;
sig[5]=20'd52772 ;
sig[6]=20'd50535 ;
sig[7]=20'd48392 ;
sig[8]=20'd46340 ;
sig[9]=20'd44376 ;
sig[10]=20'd42494 ;
sig[11]=20'd40693 ;
sig[12]=20'd38967 ;
sig[13]=20'd37315 ;
sig[14]=20'd35733 ;
sig[15]=20'd34218 ;
case ( j )
4'd0 : out=sig [0] ;
4'd1 : out=sig [1] ;
4'd2 : out=sig [2] ;
4'd3 : out=sig [3] ;
4'd4 : out=sig [4] ;
4'd5 : out=sig [5] ;
4'd6 : out=sig [6] ;
4'd7 : out=sig [7] ;
4'd8 : out=sig [8] ;
4'd9 : out=sig [9] ;
4'd10 : out=sig [10] ;
4'd11 : out=sig [11] ;
4'd12 : out=sig [12] ;
4'd13 : out=sig [13] ;
4'd14 : out=sig [14] ;
4'd15 : out=sig [15] ;
default : out=20'd0 ;
endcase
end
endmodule