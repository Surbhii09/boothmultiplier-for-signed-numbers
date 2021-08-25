module tetbench;
  wire signed [15:0] Z;
reg signed [7:0] a,b;


  boothmultiplier my_booth(.a(a),.b(b),.c(Z));

initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial
begin
  $monitor($time,"       ",a," *",b," = ", Z);

a = 8'b11110000;
b = 8'b11110000;

#10

a = 8'b10110101;
b = 8'b100000;

#10

a = 8'b0111;
b = 8'b0;

#10

b = 8'b1;
a = 8'b1;

#10  

a = 8'b00110100;
b = 8'b0101;

#10

a = 8'b10111010;
b = 8'b100011;

#10

a = 8'b010001;
b = 8'b11100;

#10
a = 8'b1000;
b = 8'b10111111;

end
endmodule