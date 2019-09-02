/******************************************************************************
***                                                                         ***
*** Ece 527L Experiment #4                      German Zepeda, Spring 2019  ***
*** Experiment #4, FIFO                                                     ***
*******************************************************************************
*** Filename: Empty.sv                                                      ***
***                                                                         ***
*** This file does the empty flag check/comparator   			    ***
*******************************************************************************
*/
`timescale 1 ps/1ps
module Empty(
	r_pointer,
	w_pointer,
	e_flag
	);

//parameters
parameter SIZE = 4;

//inputs
input [SIZE-1:0] r_pointer;
input [SIZE-1:0] w_pointer;

//outputs
output e_flag;

//reg 
reg e_flag;

//always block
	always_comb begin
		if(r_pointer==w_pointer)begin
			e_flag	=1'b1;
		end else begin
			e_flag	=1'b0;
		end
	end
endmodule
