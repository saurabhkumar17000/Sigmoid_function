`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 10:19:27 AM
// Design Name: 
// Module Name: PWL
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


module PWL(x ,z);
input [19:0]x ;
output reg [19:0]z ;

always @(*)
if (x>=20'd327680)
z=20'd65536 ;
else if (x<20'd327680 && x>=20'd155648)
z=(x>>5)+20'd55296 ;
else if (x<20'd155648 && x>=20'd65536)
z=(x>>3)+ 20'd40960 ;
else if (x<20'd65536 && x>=0)
z=(x>>2)+20'd32768 ;
else
z=20'd0 ;
endmodule
