/*
 * Copyright 2018, Jiumao <brize_huang@163.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

`timescale 1ns / 1ps

module test_aes_128;

    // Inputs
    reg clk,rst_n,start;
    // Outputs
    wire [127:0] in     ;
    wire [127:0] key_in ;
    wire [127:0] out    ;

    // DUT
    AES_128 dut(
        .clk    (clk)       ,
        .rst_n  (rst_n)     ,
        .start  (start)     ,
        .in     (in)        ,
        .key_in     (key_in)        ,
        .out    (out)
    );
    
    assign key_in = 128'h2b7e151628aed2a6abf7158809cf4f3c;
    assign in =     128'h3243f6a8885a308d313198a2e0370734;

    initial begin
        clk = 0;
        start = 0;
        rst_n = 0;
        #100;
        rst_n = 1;
        #100;
        start = 1;
        #20;
        start = 0;

        #300;

        if ( out !== 128'h3925841d02dc09fbdc118597196a0b32 ) begin
            $display("ERROR!!!"); $finish; 
        end
        $display("Correct.");
        $finish;
    end
      
    always #5 clk = ~clk;

endmodule

