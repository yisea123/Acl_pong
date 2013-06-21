//  ===================================================================================
//  								  Define Module, Inputs and Outputs
//												* Draw game board *
//  ===================================================================================
module board ( 
		hcount, 
		vcount,
		clk,
		pixel 
);

// ====================================================================================
// 										Port Declarations
// ====================================================================================
	input [10:0] hcount;
	input [9:0]  vcount;
	input 		 clk;
	output [7:0] pixel;

// ====================================================================================
// 								Parameters, Register, and Wires
// ====================================================================================
	reg [7:0] 	 pixel;

//  ===================================================================================
// 							  				Implementation
//  ===================================================================================
					
		always @(posedge clk) 
		begin
			if ( hcount == 0 || vcount == 0 || hcount == 400 || hcount == 796 || vcount == 599 )
				pixel <= 8'hFF;
			else
				pixel <= 8'b0;
		end
					
endmodule
