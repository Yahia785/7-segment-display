// Insert a module header that describes your module appropriately.
// Code for characters displayed on screen HEX 2 


module ssd2(in, out);
	input  [3:0] in;
	output [6:0] out;

// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that drives HEX2.
// You may use a structural model and primitive logic gates or a continuous assignment model using
// PERMITTED dataflow operators.
	
//assign out = 7'b1111111;
	
	
//segment 0

assign out[0] = ~in[3] | (~in[1] & ~in[0]) | (in[2] & ~in[0]);

//segment 1

assign out[1] = ~in[3] | (in[1] & in[0]) | (in[2] & in[0]) | (in[2] & in[1]);

//segment 2

assign out[2] = ~in[3] | (~in[2] & in[1] & in[0]) | (in[2] & ~in[1] & in[0]) | (in[2] & in[1] & ~in[0]);	
	
//segment 3

assign out[3] = ~in[3] | (~in[2] & ~in[0]) | (in[1] & ~in[0]);

//segment 4

assign out[4] = ~in[3] | (~in[2] & ~in[1]) | (~in[1] & ~in[0]);

//segment 5

assign out[5] = ~in[3] | (~in[2] & ~in[1]);

//segment 6 

assign out[6] = (~in[2] & ~in[1] & ~in[0]) | (~in[2] & in[1] & in[0]) | (in[2] & in[1] & ~in[0]);
	
	
endmodule

// If your module requires instances of other modules, you may write them here and instantiate
// them in the ssd2 module accordingly.
