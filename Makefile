CC = xelatex
SRC_DIR = .
OUTPUT_DIR = .
RESUME_SRCS = $(shell find $(SRC_DIR)/resume -name '*.tex')

resume: $(SRC_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
