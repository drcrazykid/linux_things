SHELL = /bin/bash
vim := $(if $(shell which nvim),nvim,$(shell which vim))
vim_version := '${shell $(vim) --version}'
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@cp -r nvim ~/.config

test:
	$(info Testing NVIM 0.5+...)
	$(if $(shell nvim --version | egrep "NVIM v0\.[5-9]"),\
		$(info OK),\
		$(error   .. You need Neovim 0.5.x or newer))

	@echo All tests passed, hooray!

.PHONY: install test