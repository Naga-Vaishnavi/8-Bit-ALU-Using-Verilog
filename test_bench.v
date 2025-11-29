
module tb;
  reg [7:0]a,b;
  reg [3:0]sel;
  wire [7:0]y;
  integer i;
  alu dut(.*);
  initial begin
    for(i=0;i<16;i++)begin
     #10 {a,b}=$random;
      sel=i;
      $monitor("$time=%0t,a=%b,b=%b,sel=%b,y=%b",$time,a,b,sel,y);
    end
    $finish;
  end
endmodule
