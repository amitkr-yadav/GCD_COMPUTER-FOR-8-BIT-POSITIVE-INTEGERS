`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 23:54:44
// Design Name: 
// Module Name: gcd_tb
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

module gcd_tb(

    );
   reg clk,clr,go;
   reg [7:0] xin,yin;
   wire [7:0] gcd_out;
   
   gcd U4(.clk(clk),.clr(clr),.go(go),.xin(xin),.yin(yin),.gcd_out(gcd_out));
   
   initial 
   begin
   clk=1'b0;
   clr=1'b0;
   go=1'b0;
   xin=8'b00000000;
   yin=8'b00000000;
   end
   
   always #10 clk=~clk;
   
   initial
   begin
   @(negedge clk);
   clr=1;
   
   @(negedge clk);
   clr=1'b0;
   go=1'b1;
   xin=8'b00000011;
   yin=8'b00000110;
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   clr =1;
   @(negedge clk);
   clr=1'b0;
   go=1'b1;
   xin=8'b00110001;
   yin=8'b00100011;
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   @(negedge clk);
   $finish;
   end
   endmodule

