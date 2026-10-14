SHELL :=/bin/bash

PATH_TO_FILE:= ./node_modules/.bin
ifneq ("$(wildcard $(PATH_TO_FILE))","")
    LOCAL=1
else
    LOCAL=0
endif

default: help

.PHONY: help 
help: #: Show help topics
	@grep "#:" Makefile* | grep -v "@grep" | sort | sed "s/\([A-Za-z_ -]*\):.*#\(.*\)/$$(tput setaf 3)\1$$(tput sgr0)\2/g"

.PHONY: html
html: #: Generate Antora HTML output
ifeq ($(LOCAL), 1)
	echo '--> npm is installed locally'; \
	${PATH_TO_FILE}/antora playbook.yml;
else
	echo '--> npm is installed globally'; \
	antora playbook.yml;
endif

.PHONY: open_browser
open_browser: #: Open build/index.html in browser
	@if xdg-open build/index.html 2>/dev/null; then \
		:; \
	elif open build/index.html 2>/dev/null; then \
		:; \
	elif firefox build/index.html 2>/dev/null; then \
		:; \
	else \
		echo "================================================"; \
		echo -e "\e[32mINFO\e[0m: Build complete: build/index.html"; \
		echo ""; \
		echo -e "\e[33mWARN\e[0m: No local browser available."; \
		echo -e "\e[32mINFO\e[0m: Open http://$$(hostname):8000 in your browser"; \
		echo "================================================"; \
		bundle exec rake server; \
	fi

.PHONY: server
server: #: Start HTTP server on port 8000 in build directory
	@bundle exec rake server

.PHONY: html_browser
html_browser: html open_browser #: Generate Antora HTML output AND open index.html in browser

## Not working right now!!! ##
.PHONY: pdf
pdf: #: Generate Asciidoctor pdf document
	@cd ./pdf; \
	asciidoctor-pdf xo-doc.adoc; \
	cd ..; \
	xreader pdf/xo-doc.pdf;
