include ../common.mak

TESTS:=test18828 test19416 test19421 test19561 test20088 test20613

.PHONY: all clean
all: $(addprefix $(ROOT)/,$(addsuffix ,$(TESTS)))

$(ROOT)/%: $(SRC)/%.d
	$(QUIET)$(DMD) -betterC -of$@ $<

clean:
	rm -rf $(ROOT)
