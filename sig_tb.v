`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2024 11:02:46 AM
// Design Name: 
// Module Name: exponent_tb
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


module sig_tb() ;
reg [19:0] x ;
wire [19:0] z ;
sig s (x,z) ;
initial begin
x=20'd69125 ;
#100
x=20'd83420 ;
#100
x=20'd00000 ;
#100

x=20'd102342 ;
#100
$stop ;
end
endmodule
