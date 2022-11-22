`timescale 1ns/1ns
module tb();
reg [11:0] degree;
wire [1:0] degree_range;
integer i;
degree_range dr(.degree(degree), 
					 .degree_range(degree_range));

initial
begin
	degree = 12'd0;
	for(i=0;i<3610;i=i+1)
	begin
		#20
		degree = i;
	end
	$stop;
end

endmodule