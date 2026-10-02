module tb_adder_8bit;
    reg  [7:0] a, b;
    reg        cin;
    wire [7:0] sum;
    wire       cout;
    integer i;

    adder_8bit uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        a = 8'd0;   b = 8'd0;   cin = 0; #10;
        a = 8'd25;  b = 8'd30;  cin = 0; #10;
        a = 8'd100; b = 8'd55;  cin = 1; #10;
        a = 8'hFF;  b = 8'h01;  cin = 0; #10;   // carry out হবে
        a = 8'hFF;  b = 8'hFF;  cin = 1; #10;   // সর্বোচ্চ যোগ
        for (i = 0; i < 10; i = i + 1) begin
            a = $random; b = $random; cin = $random; #10;
        end
        #10 $finish;
    end
endmodule
