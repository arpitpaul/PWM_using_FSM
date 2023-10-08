`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mr. Arpit Paul
// 
// Create Date: 07.10.2023 23:56:38
// Design Name: 
// Module Name: pwm
// Project Name: PWM using Mealy FSM
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
    dout, clk, rst, din
    );
    
    
 output reg dout;
 input clk, rst;
 
 input [3:0] din;
    
 parameter idle=0, s0=1, s1=2;
 

 reg [1:0] ps;
 
 integer i=0;
 
 always @ (posedge clk)
 begin
   
    if(rst)
      ps <= idle;
    
    else
       begin
         
         case(ps)
          idle: begin ps <= s1;
                      dout<=1'b0;
                 end
           s1: begin 
                 if(i < din)
                    begin
                     ps <= s1;
                     i <= i+1;
                     dout<=1'b1;
                     end
                   else
                     begin
                     ps <= s0;
                      i <= 0;
                    
                     
                     end
               end
               
            s0: begin
                  if(i < (10-din))
                   begin
                   ps <= s0;
                   i <= i+1;
                   dout<=1'b0;
                   
                   end
                   else
                     begin
                     ps <= s1;
                      i <= 0;
                     
                     end            
               end
               
           endcase
       
       end
 end
 
 
 
 
    
    
endmodule
