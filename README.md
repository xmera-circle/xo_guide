# xmera Omnia Guide

Developer project of xmera Omnia Guide

![xmera Omnia Guide Version](https://img.shields.io/badge/xmera_Omnia_Guide-1.3.0-red) ![xmera Omnia Version](https://img.shields.io/badge/xmera_Omnia-v4.0.z-blue) ![Language Support](https://img.shields.io/badge/Languages-de-green) ![Version Stage](https://img.shields.io/badge/Stage-release-important)

The xmera Omnia Guide is written in AsciiDoc and convertible into HTML by Antora or converitble into a pdf file.

---

## Installation

The documentation is based on AsciiDoc. The adoc-files are converted to a HTML documentation by Antora and to a PDF document by Asciidoctor PDF.

So you need to install:

- [Antora](https://docs.antora.org/antora/latest/install/install-antora/) and
- [Antora Lunr Extension](https://docs.antora.org/antora/latest/extend/supported-components/#component-matrix)
- [Asciidoctor PDF](https://asciidoctor.org/docs/asciidoctor-pdf/#install-the-published-gem)

For doing so, make sure you run the latest Node.js LTS version:

    node --version
    v18.13.0

Install all dependencies of this project by

    npm install

## Create xmera Omnia Guide via Makefile

Create the Antora HTML pages and start the guide with Firefox:

    make html_browser

Create the pages without starting the browser:

    make html

Create the pdf document and start the document in the document reader:

    make pdf

**NOTE** The PDF Creator is not working right now!

## Changelog

All notable changes to this project will be reported in the [changelog](https://circle.xmera.de/projects/xmera-omnia-guide/repository/xo_guide/revisions/develop/entry//CHANGELOG.md).

## License

xmera Omnia Guide © 2022-2023 by [xmera Solutions GmbH](https://xmera.de) is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en).
