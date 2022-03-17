module comparator  // logic function name
    (
        input x,  // input port
        input y,
        output z  // output port
    );

    wire x_, y_, p, q;  // internal wires

    not (x_, x);    // gate(output, input)
    not (y_, y);
    and (p, x, y);
    and (q, x_, y_);
    or (z, p, q);

endmodule