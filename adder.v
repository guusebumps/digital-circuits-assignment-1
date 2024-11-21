
`timescale 1ns / 1ps

module adder (
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire carry1, carry2, carry3;

    simple_adder first (A[0], B[0], Cin, Sum[0], carry1);
    simple_adder second (A[1], B[1], carry1, Sum[1], carry2);
    simple_adder third (A[2], B[2], carry2, Sum[2], carry3);
    simple_adder fourth (A[3], B[3], carry3, Sum[3], Cout);
endmodule
