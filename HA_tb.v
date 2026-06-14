`timescale 1ns/1ps
module HA_tb;
    reg x,y;
    wire s,c;

    HA ha_tb(.a(x),.b(y),.carry(c),.sum(s));

    initial begin
        x=1'b0;y=1'b0;
        #10;
        x=1'b0;y=1'b1;
        #10;
        x=1'b1;y=1'b0;
        #10;
        x=1'b1;y=1'b1;
        #10;
    end
endmodule