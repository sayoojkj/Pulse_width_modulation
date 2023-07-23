`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2023 13:56:39
// Design Name: 
// Module Name: pwm_tb
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
module pwm_tb;
    reg clk=0;
    reg [3:0] x;
    wire z;
    
    pwm dut(clk,x,z);
    always #1 clk=~clk;
    initial
    begin
        #5 x=1; #255 x=5 ; #255 x=9;
        #255 $finish ;
    end
    initial begin
        $dumpvars(0);
        $dumpfile("pwm.vcd");
    end
endmodule