`timescale 1ns/1ps

module FullModel_tb;
reg [3:0]i; //input1
reg [3:0]j; //input2
wire n; //carryout;
wire[3:0]m; //sum

    FullModel F1(.a(i),.b(j),.cfinal(n),.s(m));

    initial begin
        i=4'b0010;
        j=4'b0101;
        #10;
        i=4'b1001;
        j=4'b0111;
        #10;
        i=4'b0000;
        j=4'b1111;
        #10;
        i=4'b1001;
        j=4'b1001;
        #10;
        i=4'b1111;
        j=4'b1111;
        #10;
    end
endmodule
