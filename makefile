OUT_NAME	= ext
OUT_DIR		= ./bin/
TEX_MAIN	= ./src/main.tex

TEXCC       = pdflatex

CCFLAGS     = -jobname=$(OUT_NAME) -output-dir=$(OUT_DIR) -interaction=nonstopmode

.PHONY: all clean

all: $(OUT_DIR) $(OUT_NAME)

$(OUT_NAME):
	$(TEXCC) $(CCFLAGS) $(TEX_MAIN)

$(OUT_DIR):
	mkdir $@

clean:
	rm $(OUT_DIR)*
