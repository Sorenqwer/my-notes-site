QUARTO ?= quarto

.PHONY: preview build check

preview:
	$(QUARTO) preview

build:
	$(QUARTO) render

check:
	$(QUARTO) render
