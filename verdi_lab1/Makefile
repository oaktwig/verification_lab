all: comp run

comp:
	vcs -sverilog +v2k -timescale=1ns/1ns	\
	-debug_pp 	\
	-P $(FSDB_HOME)/novas.tab $(FSDB_HOME)/pli.a	\
	-f file_list.f


run:
	./simv	\
	+fsdb+autoflush	\
	-l sim.log

dbg:
	verdi -f file_list.f -ssf tb_mem.fsdb &


clean:
	rm -rf csrc simv* ucli.key *.log
