`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2019 05:16:26
// Design Name: 
// Module Name: my_ave
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


module my_ave(
    input clk,
    input signed [31:0] a,
    input signed [31:0] b,
	input signed [31:0] c,
	input signed [31:0] d,
    input signed [31:0] e,
	input signed [31:0] f,
	input signed [31:0] g,
	output signed [31:0] h
  );
    reg signed[31:0] h_reg;
    reg signed[31:0] in_between;
    always @(posedge clk) begin
		in_between <= a+b+c+d+e+f+g;
        h_reg <= in_between/7; 
    end
    assign h = h_reg;
endmodule
