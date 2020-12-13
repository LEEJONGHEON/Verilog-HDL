`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:00 11/07/2020 
// Design Name: 
// Module Name:    five 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module five(
    input clk,
    input reset,
    input [1:0] sig,
    output reg [1:0] status
    );
	 
integer count = 0;
initial begin
status = 0;
end
always@(posedge clk , posedge reset) begin

if(reset ==1) begin
status = 0;
count = 0;

end
else begin
		case(status) 
		0 : begin
			if(sig == 2'b00) begin
				status = 1;
			end
		end
		
		1 : begin
		count = count + 1;
			if(count==2) begin
			status = 3;
			count = 0;
			end
		end
		
		2 : begin
			if(sig == 2'b01) begin
			status = 0;
			end
			if(sig == 2'b11) begin
			status = 3;
			end
		end
		
		3 : begin
			if(sig == 2'b01) begin
			status = 0;
			end
			if(sig == 2'b10) begin
			status = 2;
			end
		end
		
		endcase

end
end
endmodule
