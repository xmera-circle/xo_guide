PATH_TO_FILE=$(shell npm bin)
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
	${PATH_TO_FILE}/antora antora-playbook-local.yml;
else
	antora antora-playbook-local.yml;
endif

.PHONY: html_browser 
html_browser: #: Generate Antora HTML output AND open index.html in browser
ifeq ($(LOCAL), 1)
	${PATH_TO_FILE}/antora antora-playbook-local.yml; \
	firefox build/site/index.html;
else
	antora antora-playbook-local.yml; \
	firefox build/site/index.html;
endif

## Not working right now!!! ##
.PHONY: pdf
pdf: #: Generate Asciidoctor pdf document
	@cd ./pdf; \
	asciidoctor-pdf xo-doc.adoc; \
	cd ..; \
	xreader pdf/xo-doc.pdf;
