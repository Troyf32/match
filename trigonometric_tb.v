`timescale 1ns/1ns
module trigonometric_tb();
reg [11:0] degree;
reg clk, iscos;
wire [9:0] value;
integer i;
wire sin_reverse, cos_reverse;

assign sin_reverse = trigonometric_tb.tr.sL.sin_reverse;
assign cos_reverse = trigonometric_tb.tr.sL.cos_reverse;

sinLUT_test tr(.degree(degree), 
					.clk(clk), 
					.value(value), 
					.iscos(iscos));

always#20 clk = ~clk;
initial
begin
	degree = 12'd0;
	clk = 1'b1;
	iscos = 1'b0;
//	#80
//		degree = 12'd300;
//	#80
//		degree = 12'd1500;
//	#80
//		degree = 12'd2100;
//	#80
//		degree = 12'd3300;
//	#80
//		iscos = 1'b1;
//		degree = 12'd600;
//	#80
//		degree = 12'd1200;
//	#80
//		degree = 12'd2400;
//	#80
//		degree = 12'd3000;
//	#80
	for(i=0;i<3600;i=i+1)
	begin
		#40
		degree <= degree+1'b1;
	end
	#40
	degree = 12'd0;
	iscos = 1'b1;
	for(i=0;i<3600;i=i+1)
	begin
		#40
		degree <= degree+1'b1;
	end
	$stop;
end
					  
endmodule