// Verilog STILDPV testbench written by  TetraMAX (TM)  E-2010.12-SP2-i110224_175206 
// Date: Thu Mar 15 00:56:52 2012
// Module tested: s5378_bench

`timescale 1 ns / 1 ns

module s5378_bench_test;
   integer verbose;         // message verbosity level
   integer report_interval; // pattern reporting intervals
   integer diagnostic_msg;  // format miscompares for TetraMAX diagnostics
   parameter NINPUTS = 40, NOUTPUTS = 51;
   // The next two variables hold the current value of the TetraMAX pattern number
   // and vector number, while the simulation is progressing. $monitor or $display these
   // variables, or add them to waveform views, to see these values change with time
   integer pattern_number;
   integer vector_number;

   wire blif_clk_net;  reg blif_clk_net_REG ;
   wire blif_reset_net;  reg blif_reset_net_REG ;
   wire n3065gat;  reg n3065gat_REG ;
   wire n3066gat;  reg n3066gat_REG ;
   wire n3067gat;  reg n3067gat_REG ;
   wire n3068gat;  reg n3068gat_REG ;
   wire n3069gat;  reg n3069gat_REG ;
   wire n3070gat;  reg n3070gat_REG ;
   wire n3071gat;  reg n3071gat_REG ;
   wire n3072gat;  reg n3072gat_REG ;
   wire n3073gat;  reg n3073gat_REG ;
   wire n3074gat;  reg n3074gat_REG ;
   wire n3075gat;  reg n3075gat_REG ;
   wire n3076gat;  reg n3076gat_REG ;
   wire n3077gat;  reg n3077gat_REG ;
   wire n3078gat;  reg n3078gat_REG ;
   wire n3079gat;  reg n3079gat_REG ;
   wire n3080gat;  reg n3080gat_REG ;
   wire n3081gat;  reg n3081gat_REG ;
   wire n3082gat;  reg n3082gat_REG ;
   wire n3083gat;  reg n3083gat_REG ;
   wire n3084gat;  reg n3084gat_REG ;
   wire n3085gat;  reg n3085gat_REG ;
   wire n3086gat;  reg n3086gat_REG ;
   wire n3087gat;  reg n3087gat_REG ;
   wire n3088gat;  reg n3088gat_REG ;
   wire n3089gat;  reg n3089gat_REG ;
   wire n3090gat;  reg n3090gat_REG ;
   wire n3091gat;  reg n3091gat_REG ;
   wire n3092gat;  reg n3092gat_REG ;
   wire n3093gat;  reg n3093gat_REG ;
   wire n3094gat;  reg n3094gat_REG ;
   wire n3095gat;  reg n3095gat_REG ;
   wire n3097gat;  reg n3097gat_REG ;
   wire n3098gat;  reg n3098gat_REG ;
   wire n3099gat;  reg n3099gat_REG ;
   wire n3100gat;  reg n3100gat_REG ;
   wire n3104gat;
   wire n3105gat;
   wire n3106gat;
   wire n3107gat;
   wire n3108gat;
   wire n3109gat;
   wire n3110gat;
   wire n3111gat;
   wire n3112gat;
   wire n3113gat;
   wire n3114gat;
   wire n3115gat;
   wire n3116gat;
   wire n3117gat;
   wire n3118gat;
   wire n3119gat;
   wire n3120gat;
   wire n3121gat;
   wire n3122gat;
   wire n3123gat;
   wire n3124gat;
   wire n3125gat;
   wire n3126gat;
   wire n3127gat;
   wire n3128gat;
   wire n3129gat;
   wire n3130gat;
   wire n3131gat;
   wire n3132gat;
   wire n3133gat;
   wire n3134gat;
   wire n3135gat;
   wire n3136gat;
   wire n3137gat;
   wire n3138gat;
   wire n3139gat;
   wire n3140gat;
   wire n3141gat;
   wire n3142gat;
   wire n3143gat;
   wire n3144gat;
   wire n3145gat;
   wire n3146gat;
   wire n3147gat;
   wire n3148gat;
   wire n3149gat;
   wire n3150gat;
   wire n3151gat;
   wire n3152gat;
   wire test_si1;  reg test_si1_REG ;
   wire test_so1;
   wire test_si2;  reg test_si2_REG ;
   wire test_so2;
   wire test_se;  reg test_se_REG ;

   // map register to wire for DUT inputs and bidis
   assign blif_clk_net = blif_clk_net_REG ;
   assign blif_reset_net = blif_reset_net_REG ;
   assign n3065gat = n3065gat_REG ;
   assign n3066gat = n3066gat_REG ;
   assign n3067gat = n3067gat_REG ;
   assign n3068gat = n3068gat_REG ;
   assign n3069gat = n3069gat_REG ;
   assign n3070gat = n3070gat_REG ;
   assign n3071gat = n3071gat_REG ;
   assign n3072gat = n3072gat_REG ;
   assign n3073gat = n3073gat_REG ;
   assign n3074gat = n3074gat_REG ;
   assign n3075gat = n3075gat_REG ;
   assign n3076gat = n3076gat_REG ;
   assign n3077gat = n3077gat_REG ;
   assign n3078gat = n3078gat_REG ;
   assign n3079gat = n3079gat_REG ;
   assign n3080gat = n3080gat_REG ;
   assign n3081gat = n3081gat_REG ;
   assign n3082gat = n3082gat_REG ;
   assign n3083gat = n3083gat_REG ;
   assign n3084gat = n3084gat_REG ;
   assign n3085gat = n3085gat_REG ;
   assign n3086gat = n3086gat_REG ;
   assign n3087gat = n3087gat_REG ;
   assign n3088gat = n3088gat_REG ;
   assign n3089gat = n3089gat_REG ;
   assign n3090gat = n3090gat_REG ;
   assign n3091gat = n3091gat_REG ;
   assign n3092gat = n3092gat_REG ;
   assign n3093gat = n3093gat_REG ;
   assign n3094gat = n3094gat_REG ;
   assign n3095gat = n3095gat_REG ;
   assign n3097gat = n3097gat_REG ;
   assign n3098gat = n3098gat_REG ;
   assign n3099gat = n3099gat_REG ;
   assign n3100gat = n3100gat_REG ;
   assign test_si1 = test_si1_REG ;
   assign test_si2 = test_si2_REG ;
   assign test_se = test_se_REG ;

   // instantiate the design into the testbench
   s5378_bench dut (
      .blif_clk_net(blif_clk_net),
      .blif_reset_net(blif_reset_net),
      .n3065gat(n3065gat),
      .n3066gat(n3066gat),
      .n3067gat(n3067gat),
      .n3068gat(n3068gat),
      .n3069gat(n3069gat),
      .n3070gat(n3070gat),
      .n3071gat(n3071gat),
      .n3072gat(n3072gat),
      .n3073gat(n3073gat),
      .n3074gat(n3074gat),
      .n3075gat(n3075gat),
      .n3076gat(n3076gat),
      .n3077gat(n3077gat),
      .n3078gat(n3078gat),
      .n3079gat(n3079gat),
      .n3080gat(n3080gat),
      .n3081gat(n3081gat),
      .n3082gat(n3082gat),
      .n3083gat(n3083gat),
      .n3084gat(n3084gat),
      .n3085gat(n3085gat),
      .n3086gat(n3086gat),
      .n3087gat(n3087gat),
      .n3088gat(n3088gat),
      .n3089gat(n3089gat),
      .n3090gat(n3090gat),
      .n3091gat(n3091gat),
      .n3092gat(n3092gat),
      .n3093gat(n3093gat),
      .n3094gat(n3094gat),
      .n3095gat(n3095gat),
      .n3097gat(n3097gat),
      .n3098gat(n3098gat),
      .n3099gat(n3099gat),
      .n3100gat(n3100gat),
      .n3104gat(n3104gat),
      .n3105gat(n3105gat),
      .n3106gat(n3106gat),
      .n3107gat(n3107gat),
      .n3108gat(n3108gat),
      .n3109gat(n3109gat),
      .n3110gat(n3110gat),
      .n3111gat(n3111gat),
      .n3112gat(n3112gat),
      .n3113gat(n3113gat),
      .n3114gat(n3114gat),
      .n3115gat(n3115gat),
      .n3116gat(n3116gat),
      .n3117gat(n3117gat),
      .n3118gat(n3118gat),
      .n3119gat(n3119gat),
      .n3120gat(n3120gat),
      .n3121gat(n3121gat),
      .n3122gat(n3122gat),
      .n3123gat(n3123gat),
      .n3124gat(n3124gat),
      .n3125gat(n3125gat),
      .n3126gat(n3126gat),
      .n3127gat(n3127gat),
      .n3128gat(n3128gat),
      .n3129gat(n3129gat),
      .n3130gat(n3130gat),
      .n3131gat(n3131gat),
      .n3132gat(n3132gat),
      .n3133gat(n3133gat),
      .n3134gat(n3134gat),
      .n3135gat(n3135gat),
      .n3136gat(n3136gat),
      .n3137gat(n3137gat),
      .n3138gat(n3138gat),
      .n3139gat(n3139gat),
      .n3140gat(n3140gat),
      .n3141gat(n3141gat),
      .n3142gat(n3142gat),
      .n3143gat(n3143gat),
      .n3144gat(n3144gat),
      .n3145gat(n3145gat),
      .n3146gat(n3146gat),
      .n3147gat(n3147gat),
      .n3148gat(n3148gat),
      .n3149gat(n3149gat),
      .n3150gat(n3150gat),
      .n3151gat(n3151gat),
      .n3152gat(n3152gat),
      .test_si1(test_si1),
      .test_so1(test_so1),
      .test_si2(test_si2),
      .test_so2(test_so2),
      .test_se(test_se)   );

   // STIL Direct Pattern Validate Access
   initial begin
      //
      // --- establish a default time format for %t
      //
      $timeformat(-9,2," ns",18);
      vector_number = 0;

      //
      // --- default verbosity to 0; use '+define+tmax_msg=N' on verilog compile line to change.
      //
      `ifdef tmax_msg
         verbose = `tmax_msg ;
      `else
         verbose = 0 ;
      `endif

      //
      // --- default pattern reporting interval is every 5 patterns;
      //     use '+define+tmax_rpt=N' on verilog compile line to change.
      //
      `ifdef tmax_rpt
         report_interval = `tmax_rpt ;
      `else
         report_interval = 5 ;
      `endif

      //
      // --- support generating Extened VCD output by using
      //     '+define+tmax_vcde' on verilog compile line.
      //
      `ifdef tmax_vcde
         // extended VCD, see Verilog specification, IEEE Std. 1364-2001 section 18.3
         if (verbose >= 1) $display("// %t : opening Extended VCD output file", $time);
         $dumpports( dut, "sim_vcde.out");
      `endif

      //
      // --- default miscompare messages are not formatted for TetraMAX diagnostics;
      //     use '+define+tmax_diag=N' on verilog compile line to format errors for diagnostics.
      //
      `ifdef tmax_diag
         diagnostic_msg = `tmax_diag ;
      `else
         diagnostic_msg = 0 ;
      `endif

      // '+define+tmax_parallel=N' on the command line overrides default simulation, using parallel load
      //   with N serial vectors at the end of each Shift
      // '+define+tmax_serial=M' on the command line forces M initial serial patterns,
      //   followed by the remainder in parallel (with N serial vectors if tmax_parallel is also specified)

      // +define+tmax_par_force_time on the command line overrides default parallel check/load time
      `ifdef tmax_par_force_time
         $STILDPV_parallel(,,,`tmax_par_force_time);
      `endif

      // TetraMAX parallel-mode simulation required for these patterns
      `ifdef tmax_parallel
         // +define+tmax_serial_timing on the command line overrides default minimal-time for parallel load behavior
         `ifdef tmax_serial_timing
         `else
            $STILDPV_parallel(,,0); // apply minimal time advance for parallel load_unload
            // if tmax_serial_timing is defined, use equivalent serial load_unload time advance
         `endif
         `ifdef tmax_serial
            $STILDPV_parallel(`tmax_parallel,`tmax_serial);
         `else
            $STILDPV_parallel(`tmax_parallel,0);
         `endif
      `else
         `ifdef tmax_serial
            // +define+tmax_serial_timing on the command line overrides default minimal-time for parallel load behavior
            `ifdef tmax_serial_timing
            `else
               $STILDPV_parallel(,,0); // apply minimal time advance for parallel load_unload
               // if tmax_serial_timing is defined, use equivalent serial load_unload time advance
            `endif
            $STILDPV_parallel(0,`tmax_serial);
         `else
            // +define+tmax_serial_timing on the command line overrides default minimal-time for parallel load behavior
            `ifdef tmax_serial_timing
            `else
               $STILDPV_parallel(,,0); // apply minimal time advance for parallel load_unload
               // if tmax_serial_timing is defined, use equivalent serial load_unload time advance
            `endif
            // default parallel mode with 0 serial vectors at end of each Shift.
            $STILDPV_parallel(0,0);
         `endif
      `endif

      if (verbose>3)      $STILDPV_trace(1,1,1,1,1,report_interval,diagnostic_msg); // verbose=4; + trace each Vector
      else if (verbose>2) $STILDPV_trace(1,0,1,1,1,report_interval,diagnostic_msg); // verbose=3; + trace labels
      else if (verbose>1) $STILDPV_trace(0,0,1,1,1,report_interval,diagnostic_msg); // verbose=2; + trace WFT-changes
      else if (verbose>0) $STILDPV_trace(0,0,1,0,1,report_interval,diagnostic_msg); // verbose=1; + trace proc/macro entries
      else                $STILDPV_trace(0,0,0,0,0,report_interval,diagnostic_msg); // verbose=0; only pattern-interval

      $STILDPV_setup( "./pathdelay/patterns200.stil",,,"s5378_bench_test.dut" );
      while ( !$STILDPV_done()) #($STILDPV_run( pattern_number, vector_number ));
      $display("Time %t: STIL simulation data completed.",$time);
      $finish; // comment this out if you terminate the simulation from other activities
   end

   // STIL Direct Pattern Validate Trace Options
   // The STILDPV_trace() function takes '1' to enable a trace and '0' to disable.
   // Unspecified arguments maintain their current state. Tracing may be changed at any time.
   // The following arguments control tracing of:
   // 1st argument: enable or disable tracing of all STIL labels
   // 2nd argument: enable or disable tracing of each STIL Vector and current Vector count
   // 3rd argument: enable or disable tracing of each additional Thread (new Pattern)
   // 4th argument: enable or disable tracing of each WaveformTable change
   // 5th argument: enable or disable tracing of each Procedure or Macro entry
   // 6th argument: interval to print starting pattern messages; 0 to disable
   // For example, a separate initial block may be used to control these options
   // (uncomment and change time values to use):
   // initial begin
   //    #800000 $STILDPV_trace(1,1);
   //    #600000 $STILDPV_trace(,0);
   // Additional calls to $STILDPV_parallel() may also be defined to change parallel/serial
   // operation during simulation. Any additional calls need a # time value.
   // 1st integer is number of serial (flat) cycles to simulate at end of each shift
   // 2nd integer is TetraMAX pattern number (starting at zero) to start parallel load
   // 3rd optional value '1' will advance time during the load_unload the same as a serial
   //     shift operation (with no events during that time), '0' will advance minimal time
   //     (1 shift vector) during the parallel load_unload.
   // For example,
   //    #8000 $STILDPV_parallel( 2,10 );
   // end // of initial block with additional trace/parallel options
endmodule
