`timescale 1ns/1ns
module sqrt_tb();
//reg clk_en, clock;
//reg [31:0] data;
//wire [31:0] result;

reg [63:0] radical;
wire [31:0]  q;
wire [32:0]  remainder;
sqrt_int sq(.radical(radical),
					    .q(q),
					    .remainder(remainder));


//sqrt_altfp_sqrt_ued sq(.clk_en(clk_en),
//							  .clock(clock),
//							  .data(data),
//							  .result(result));
//always #5 clock = ~clock;							  
initial 
begin
	//clock = 1'b0;
	//clk_en = 1'b1;
	#200 radical = 32'd4;
	#200 radical = 32'd6;
	#200 radical = 32'd9;
	#200 radical = 32'd144;
	#200 radical = 32'd21549;
	#200 radical = 32'd97344;
end

endmodule
	
	
	
	