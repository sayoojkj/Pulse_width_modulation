`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 13:51:34
// Design Name: 
// Module Name: pwm
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

module pwm(
    input clk,
  input [3:0] x,
    output reg z
    );
  reg [4:0] count=0;
    reg edge_flag=0;
  reg [3:0] xprev;

  always@(posedge clk)
    begin
      edge_flag=(xprev!=x)?1:0;
      xprev=x;
  	end
  always@ (posedge clk)
    begin
      if (edge_flag) 
        count<=0;
    end
  always@ (posedge clk)
    begin
      if (count<10) count=count+1;
      else count=0;
       
      z=(count<x)?1:0;
    end
endmodule