module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;
    integer i;

    full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        a = 0; b = 0; cin = 0;
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i[2:0];
            #10;
        end
        #10 $finish;
    end
endmodule
