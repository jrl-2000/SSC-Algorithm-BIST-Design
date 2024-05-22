

`timescale 1 ns / 1ns

//Random Test Socket Architecture
module SSC_RTSArchitecture ();

	parameter PRPG_Size = 16;
	parameter SRSG_Size = 16;
	parameter MISR_Size = 24;
	parameter SISA_Size = 16;
	
	
	parameter Shift_Cnt   = 1;    //Scan_Size = 24
	parameter numOfRounds = 100;
	parameter numOfConfig = 1;

    reg [ 1000 : 1 ] str;
	
	integer sigFile, cfgFile, faultFile, resultFile;
	integer status;
	integer i;

    reg masterRst, clk = 0;
	wire NbarT, internalRst;
	wire PRPG_En, SRSG_En, SISA_En, MISR_En;
	wire CPU_En, done;
	wire Si;
	wire So;
	
	wire [26:0] PO;

    reg  [PRPG_Size - 1:0] PRPG_Poly = 8'b00000100;
	reg  [PRPG_Size - 1:0] PRPG_Seed = 8'b00000001;
	wire [PRPG_Size - 1:0] PRPG_Out;
	
	reg  [MISR_Size - 1:0] MISR_Poly = 1;
	reg  [MISR_Size - 1:0] MISR_Seed = 0;
	wire [MISR_Size - 1:0] MISR_Out;
	reg  [MISR_Size - 1:0] Golden_MISR_Out = 0;

	reg  [SRSG_Size - 1:0] SRSG_Poly = 4;
	reg  [SRSG_Size - 1:0] SRSG_Seed = 1;
	
	reg  [SISA_Size - 1:0] SISA_Poly = 1;
	reg  [SISA_Size - 1:0] SISA_Seed = 0;
	wire [SISA_Size - 1:0] SISA_Out;
	reg  [SISA_Size - 1:0] Golden_SISA_Out = 0;
	
	reg stuckAtVal;
	reg [ 8 * 80 : 1 ] wireName;
	integer numOfFaults = 0, numOfDetected = 0;
	real coverage;

    //scaninserted module instantiuation
	SSC_net DUT (clk, internalRst, 1'b1, PO[26], PO[25], PRPG_Out[15:0], PO[15:0], PO[23:16], PO[24], Si, So, NbarT);

    LFSR #(PRPG_Size) PRPG( clk, internalRst, PRPG_En, PRPG_Poly, PRPG_Seed, PRPG_Out );
		
	MISR #(MISR_Size) MISR_1( clk, internalRst, MISR_En, MISR_Poly, MISR_Seed,
							{ 8'b00000000, PO }, MISR_Out );
	
	SRSG #( SRSG_Size ) SRSG_1( clk, internalRst, SRSG_En, SRSG_Poly, SRSG_Seed, Si );

	SISA #(SISA_Size ) SISA_1( clk, internalRst, SISA_En, SISA_Poly, SISA_Seed, So, SISA_Out );
	
	RTS_Controller  #(Shift_Cnt, numOfRounds) RTS_Controller_1( clk, masterRst, NbarT, internalRst, PRPG_En,
													            SRSG_En, SISA_En, MISR_En, done );

    
	always #5 clk = !clk;

	initial begin	

		sigFile =$fopen ("G:/ECE 5724/ECE 5724 Project 5/Signature.txt", "w");
		resultFile =$fopen ("G:/ECE 5724/ECE 5724 Project 5/result.txt", "w");

	
		
		PRPG_Seed = 12;
		SRSG_Seed = 5;
		MISR_Seed = 13;
		SISA_Seed = 24;

		// start "Generating Dictionary of Signatures for Various Configurations"
		$display("config");
		cfgFile =$fopen ("G:/ECE 5724/ECE 5724 Project 5/Configuration.txt", "r");
		status = $fscanf( cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str );		
		i = 0;
		while (!$feof(cfgFile) ) begin
			
			i = i + 1;
			//Apply Configurations
			
			status = $fscanf( cfgFile, "%b %b %b %b\n", PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly );
			masterRst = 1'b1;
			#1 masterRst = 1'b0;

			//Wait for signature		
			@( posedge done );
			$fwrite( sigFile, "%b %b\n", MISR_Out, SISA_Out );
			$display( "Signature for configuration %d was generated ", i );
		end
		$display("end cfgfile");
		$fclose( sigFile );

		#1;
		// end "Generating Dictionary of Signatures for Various Configurations"

		//starting "Fault Simulation"
		
		$FaultCollapsing ( DUT, "SSC.flt");	

		sigFile =$fopen ("G:/ECE 5724/ECE 5724 Project 5/Signature.txt", "r");
		cfgFile =$fopen ("G:/ECE 5724/ECE 5724 Project 5/Configuration.txt", "r");

		status = $fscanf( cfgFile, "%s\t%s\t%s\t%s\n", str, str, str, str );		

		i = 0;
		$fwrite( resultFile, "PRPG_Poly\tSRSG_Poly\tMISR_Poly\tSISA_Poly\t#Rounds\t#ClockTicks\tCoverage\n"  );
		$display("Here");
		//$getSystemTime("Starting Fault Simulation..");
		while (!$feof(cfgFile) ) begin

			i = i + 1;
			$display( "###############Configuration %d...###############", i  );
			//extract golden signature
			status = $fscanf( sigFile, "%b %b\n", Golden_MISR_Out, Golden_SISA_Out );

			//Apply Configurations
			status = $fscanf( cfgFile, "%b %b %b %b \n", PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly );
			
			#1;

			faultFile =$fopen ("SSC.flt", "r");					
			numOfFaults = 0;
			numOfDetected = 0;
			while( !$feof(faultFile)) begin	

				status = $fscanf(faultFile,"%s s@%b\n",wireName, stuckAtVal );			

				numOfFaults = numOfFaults + 1; 
				$display( "Injecting Fault%d", numOfFaults );
				$InjectFault (  wireName, stuckAtVal );


				masterRst = 1'b1;
				#1 masterRst = 1'b0;


				//Wait for signature		
				@( posedge done );

				//compare
				if( { MISR_Out, SISA_Out } != { Golden_MISR_Out, Golden_SISA_Out } )
					numOfDetected = numOfDetected + 1;
					
				$RemoveFault( wireName );


			end // "while( !$feof(faultFile))"

			coverage = numOfDetected * 100.0  /  numOfFaults;
			$display("number of faults = %d",numOfFaults  );
			$display("number of detected faults = %d", numOfDetected );
			$display("Coverage = %f %%\n", coverage  );
			//$getSystemTime("end..");
			
			$fwrite( resultFile, "%b %b %b %b %d %d   %f\n",
					 PRPG_Poly, SRSG_Poly, MISR_Poly, SISA_Poly, numOfRounds,
					 numOfRounds * Shift_Cnt, coverage  );
						

		end //"while ( !$feof(cfgFile) ) "
	$stop;
	end
endmodule
