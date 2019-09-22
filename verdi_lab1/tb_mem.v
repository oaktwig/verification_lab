module tb_mem();
	parameter	CLK_PERIOD = 10;

	reg		clock;
	reg		read_write;
	reg	[31:0]	data;
	reg	[31:0]	addr;
	
	initial begin
		$fsdbDumpfile("tb_mem.fsdb");
		$fsdbDumpvars();
		$fsdbDumpon();
	end


	initial begin
		clock = 0;
		forever 
		#(CLK_PERIOD/2.0) clock = ~clock;
	end

	initial begin
		@(negedge clock) read_write = 1; data = 4; addr = 1;
		@(negedge clock) read_write = 1; data = 5; addr = 2;
		@(negedge clock) read_write = 1; data = 6; addr = 3;
		@(negedge clock) read_write = 1; data = 7; addr = 4;
		@(negedge clock) read_write = 1; data = 8; addr = 5;
		repeat(200) @(posedge clock);
		$finish;
	end

	initial
		$monitor($time, "read_write = %d; data = %d, addr = %d", read_write,data, addr);

endmodule



