`timescale 1ns / 1ps

module gray_counter_tb;  
  parameter N = 4;  
  reg clk;  
  reg rstn;  
  wire [N-1:0] out;  
  gray_counter uut( .clk(clk),  
               .rstn(rstn),  
               .out(out));  
  always #10 clk = ~clk;  
  initial begin  
    {clk, rstn} <= 0;  
repeat(2) @ (posedge clk);  
    rstn <= 1;  
    repeat(20) @ (posedge clk);  
    
  end  
endmodule  
