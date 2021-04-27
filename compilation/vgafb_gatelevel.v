
module shift_1b ( i_shift, i_data, o_data );
  input [31:0] i_data;
  output [31:0] o_data;
  input i_shift;
  wire   n128;

  MUX2_X1 U130 ( .A(i_data[9]), .B(i_data[8]), .S(i_shift), .Z(o_data[9]) );
  MUX2_X1 U131 ( .A(i_data[8]), .B(i_data[7]), .S(i_shift), .Z(o_data[8]) );
  MUX2_X1 U132 ( .A(i_data[7]), .B(i_data[6]), .S(i_shift), .Z(o_data[7]) );
  MUX2_X1 U133 ( .A(i_data[6]), .B(i_data[5]), .S(i_shift), .Z(o_data[6]) );
  MUX2_X1 U134 ( .A(i_data[5]), .B(i_data[4]), .S(i_shift), .Z(o_data[5]) );
  MUX2_X1 U135 ( .A(i_data[4]), .B(i_data[3]), .S(i_shift), .Z(o_data[4]) );
  MUX2_X1 U136 ( .A(i_data[3]), .B(i_data[2]), .S(i_shift), .Z(o_data[3]) );
  MUX2_X1 U137 ( .A(i_data[31]), .B(i_data[30]), .S(i_shift), .Z(o_data[31])
         );
  MUX2_X1 U138 ( .A(i_data[30]), .B(i_data[29]), .S(i_shift), .Z(o_data[30])
         );
  MUX2_X1 U139 ( .A(i_data[2]), .B(i_data[1]), .S(i_shift), .Z(o_data[2]) );
  MUX2_X1 U140 ( .A(i_data[29]), .B(i_data[28]), .S(i_shift), .Z(o_data[29])
         );
  MUX2_X1 U141 ( .A(i_data[28]), .B(i_data[27]), .S(i_shift), .Z(o_data[28])
         );
  MUX2_X1 U142 ( .A(i_data[27]), .B(i_data[26]), .S(i_shift), .Z(o_data[27])
         );
  MUX2_X1 U143 ( .A(i_data[26]), .B(i_data[25]), .S(i_shift), .Z(o_data[26])
         );
  MUX2_X1 U144 ( .A(i_data[25]), .B(i_data[24]), .S(i_shift), .Z(o_data[25])
         );
  MUX2_X1 U145 ( .A(i_data[24]), .B(i_data[23]), .S(i_shift), .Z(o_data[24])
         );
  MUX2_X1 U146 ( .A(i_data[23]), .B(i_data[22]), .S(i_shift), .Z(o_data[23])
         );
  MUX2_X1 U147 ( .A(i_data[22]), .B(i_data[21]), .S(i_shift), .Z(o_data[22])
         );
  MUX2_X1 U148 ( .A(i_data[21]), .B(i_data[20]), .S(i_shift), .Z(o_data[21])
         );
  MUX2_X1 U149 ( .A(i_data[20]), .B(i_data[19]), .S(i_shift), .Z(o_data[20])
         );
  MUX2_X1 U150 ( .A(i_data[1]), .B(i_data[0]), .S(i_shift), .Z(o_data[1]) );
  MUX2_X1 U151 ( .A(i_data[19]), .B(i_data[18]), .S(i_shift), .Z(o_data[19])
         );
  MUX2_X1 U152 ( .A(i_data[18]), .B(i_data[17]), .S(i_shift), .Z(o_data[18])
         );
  MUX2_X1 U153 ( .A(i_data[17]), .B(i_data[16]), .S(i_shift), .Z(o_data[17])
         );
  MUX2_X1 U154 ( .A(i_data[16]), .B(i_data[15]), .S(i_shift), .Z(o_data[16])
         );
  MUX2_X1 U155 ( .A(i_data[15]), .B(i_data[14]), .S(i_shift), .Z(o_data[15])
         );
  MUX2_X1 U156 ( .A(i_data[14]), .B(i_data[13]), .S(i_shift), .Z(o_data[14])
         );
  MUX2_X1 U157 ( .A(i_data[13]), .B(i_data[12]), .S(i_shift), .Z(o_data[13])
         );
  MUX2_X1 U158 ( .A(i_data[12]), .B(i_data[11]), .S(i_shift), .Z(o_data[12])
         );
  MUX2_X1 U159 ( .A(i_data[11]), .B(i_data[10]), .S(i_shift), .Z(o_data[11])
         );
  MUX2_X1 U160 ( .A(i_data[10]), .B(i_data[9]), .S(i_shift), .Z(o_data[10]) );
  NOR2_X1 U161 ( .A1(i_shift), .A2(n128), .ZN(o_data[0]) );
  INV_X1 U162 ( .A(i_data[0]), .ZN(n128) );
endmodule

