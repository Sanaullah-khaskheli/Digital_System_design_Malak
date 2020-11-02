`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 02:38:03 PM
// Design Name: 
// Module Name: Comparator_DataFlow_test
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


module Comparator_DataFlow_test();
reg [63:0] A, B;

wire  A_lt_B,   A_gt_B,   A_eq_B;

// instantiation
Comparator_DataFlow Comp1( A_lt_B, A_gt_B, A_eq_B, A, B);


initial
begin
    #00  A = 1000; B = 2000; //A<B
    #10  A = 1000; B = 700;
    #10  A = 5000; B = 5000;
    #10 $stop;
    
end

endmodule
