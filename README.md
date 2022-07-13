# xmera Omnia Guide

Developer project of xmera Omnia Guide

![xmera Omnia Guide Version](https://img.shields.io/badge/xmera_Omnia_Guide-unreleased-red) ![xmera Omnia Version](https://img.shields.io/badge/xmera_Omnia-v3.x.x-blue) ![Language Support](https://img.shields.io/badge/Languages-de-green) ![Version Stage](https://img.shields.io/badge/Stage-development-important)

The xmera Omnia Guide is written in AsciiDoc and convertible into html by Antora or converitble into a pdf file.

---

## Installation

The documentation is based on AsciiDoc. The adoc-files are converted to a html-documentation by Antora and to a pdf-document by Asciidoctor PDF.

So you need to install:

- [Antora](https://docs.antora.org/antora/latest/install-and-run-quickstart/) and
- [Antora Lunr Extension](https://docs.antora.org/antora/latest/extend/supported-components/#component-matrix)
- [Asciidoctor PDF](https://asciidoctor.org/docs/asciidoctor-pdf/#install-the-published-gem)

## Create xmera Omnia Guide via Makefile

Create the Antora HTML pages and start the guide with Firefox:

    make html_browser

Create the pages without starting the browser:

    make html

Create the pdf document and start the document in the document reader:

    make pdf

**NOTE** The PDF Creator is not working right now!