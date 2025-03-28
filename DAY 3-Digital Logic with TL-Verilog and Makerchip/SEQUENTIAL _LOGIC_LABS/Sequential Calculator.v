\m5_TLV_version 1d: tl-x.org
\m5
  
  // =================================================
  // Welcome!  New to Makerchip? Try the "Learn" menu.
  // =================================================
  
  //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
  // Macro providing required top-level module definition, random
  // stimulus support, and Verilator config.
  m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
  $reset = *reset;
  
  
  //...
  // Assert these to end simulation (before Makerchip cycle limit).
  //Sequential Calculator(Calculator with Memory )
  $in1[31:0] = >>1$op; //Memory Element that stores the previous result
  $in2[31:0] = $rand2[3:0];
  $sel[1:0] = $rand3[1:0];
  $sum[31:0] = $in1 + $in2;
  $diff[31:0] = $in1 - $in2;
  $prod[31:0] = $in1 * $in2;
  $quot[31:0] = $in1 / $in2;
  $temp[31:0] = (($sel == 2'b00) ? $sum : ($sel == 2'b01) ? $diff : ($sel == 2'b10) ? $prod : $quot);
  $op[31:0] = $reset ? 32'b0 : $temp;
  *passed = *cyc_cnt > 40;
  *failed = 1'b0;
\SV
  endmodule
