`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 15:25:16
// Design Name: Mr. Arpit Paul
// Module Name: tb
// Project Name: Testbench for PWM
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


module tb;
  wire dout;
  reg clk, rst;
  reg [6:0] din;
  
  pwm dut(dout, clk, rst, din);
 
    initial begin
    
    rst =0;
    #10;
    rst =1;
    #15;
    rst=0;
    
    
    end
    
    initial begin
          //din  = 7'd2;           /////// duty cycle : 20 %
      //din  = 7'd5;           /////// duty cycle : 50 %
       din  = 7'd8;           /////// duty cycle : 80 %

    
    end
    
   initial begin
    clk = 0;
    
    forever #10 clk = ~clk;
    
    end
   
endmodule
