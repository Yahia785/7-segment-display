// Insert a module header that describes your module appropriately.
//Code for characters displayed on screen HEX 0 


module ssd0(in, out);
	input  [3:0] in;
	output [6:0] out;

// In LEARNING EXPERIENCE E.3, replace this continuous assignment with the logic that drives HEX0.
// You may use a structural model and primitive logic gates or a continuous assignment model using
// PERMITTED dataflow operators.

// Since you wrote this logic in Learning Experience E.2, you may copy that logic from the previous
// assignment and paste it here to replace the continuous assignment. IF YOU HAVE CHOSEN TO MODIFY
// YOUR SEVEN-SEGMENT DECODER LOGIC, USE YOUR NEW CODE IN THIS MODULE.

//assign out = 7'b1111111;

//Module for 7 segment decoder from LE B
				

	// Instantiate your wires here
	
	// inverses such that in[3:0] = abcd

	wire N0, N1, N2, N3;
	
	//out[0]

	wire W1;
	
   //out[1]
	
	wire W2, W3, W4;
	
   //out[2] 
 
   wire W5, W6;

  //out[3]	
   
	wire W7;

  //out[4]
 
  wire W8;
  //out[5]
  
  wire W9, W10, W11, W12;
  
  //out[6]
  
  wire W13, W14, W15;
  

  // Instantiate your gates here
  
  
 //Inverses
 
  not n3(N3, in[3]);
  not n2(N2, in[2]);
  not n1(N1, in[1]);
  not n0(N0, in[0]);
 
  //out[0]
  
 nand nand1(W1, in[2], in[0]);
 nand nand2(W2, in[3], in[1], in[0]);
 nand Nand1(out[0], W1, W2);
 
  //out[1]
  
 nand nand3(W3, N3, N1);
 nand nand4(W4, in[1], N0);
 nand nand5(W5, in[3], N2, in[1]);
 nand Nand2(out[1], W3, W4, W5);
 
  
 //out[2]
  
nand nand6(W6, N3, N1);
nand nand7(W7, in[3], N2, in[0]);
nand nand8(W8, in[3], N2, in[1]);
nand Nand3(out[2], W6, W7, W8);  
  
 //out[3]

 and And1(out[3], in[1], in[0]);

 //out[4]

nand nand9(W9, in[2], N1);
nand nand10(W10, in[2], in[0]);
nand Nand4(out[4], W9, W10);
 
 //out[5]

nand nand11(W11, N2, N1, in[0]); 
nand nand12(W12, in[2], N1, N0);
nand nand13(W13, in[2], in[1], in[0]); 
nand Nand5(out[5], W11, W12, W13);

 //out[6]

nand nand14(W14, N2, N1, N0);
nand nand15(W15, in[3], in[1], in[0]);
nand Nand6(out[6], W14, W15); 


endmodule

// If your module requires instances of other modules, you may write them here and instantiate
// them in the ssd0 module accordingly.
