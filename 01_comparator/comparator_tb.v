// simulation will run in steps of 1ns
// with a precision of 1ps
`timescale 1ns/1ps

module comparator_tb; // testbench (tb) name

    // inputs will be defined as registers
    reg x;
    reg y;

    // outputs as wires
    wire z;

    // initialize unit under test (uut)
    // it creates instance of 
    // the comparator module
    comparator uut
    (
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        //dumpfiles for graphical simulation
        // add before initializig inputs
        $dumpfile("comparator.vcd");
        $dumpvars(0, comparator_tb);
        
        // initialize inputs
        // at the beginning of simulation
        x = 0;
        y = 0;

        // update values after time interval
        // #20 means wait for 20ns
        #20; 
        x = 1;
        #20; 
        y = 1;
        #20; 
        y = 0;
        #20;
        x = 1;
        #40;
    end

    initial begin
        // $monitor() will display stuff in prompt
        $monitor("x = %d, y = %d, z = %d \n", x, y, z);
    end

endmodule