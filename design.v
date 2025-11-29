//ALU program
module alu(a,b,sel,y);
  input [7:0]a,b;
  input [3:0]sel;
  output reg [7:0]y;
  always @(*) begin
    case(sel)
       4'b0001:y=a+b;
       4'b0011:y=a-b;
       4'b0101:y=a*b;
       4'b1001:y=a/b;
       4'b0111:y=a<<b;
       4'b1101:y=a>>b;
       4'b1011:y=a&b;
       4'b0010:y=a|b;
       4'b1111:y=(a==b);
       default:y=8'b00000000;
    endcase
  end
  
endmodule
