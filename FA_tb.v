`timescale 1ns/1ps

module FA_tb;
    reg m,n,p;
    wire c,s0;

    FA f(.x(m),.y(n),.cin(p),.cout(c),.s(s0));

    initial begin
        m=1'b0;n=1'b0;p=1'b0;
        #10;
        m=1'b0;n=1'b0;p=1'b1;
        #10;
        m=1'b0;n=1'b1;p=1'b0;
        #10;
        m=1'b0;n=1'b1;p=1'b1;
        #10;
        m=1'b1;n=1'b0;p=1'b0;
        #10;
        m=1'b1;n=1'b0;p=1'b1;
        #10;
        m=1'b1;n=1'b1;p=1'b0;
        #10;
        m=1'b1;n=1'b1;p=1'b1;
        #10;
    end
endmodule
