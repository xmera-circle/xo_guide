# xmera Omnia Manual

Developer project of xmera Omnia application manual

![xmera Omnia manual Version](https://img.shields.io/badge/xmera_Omnia-unreleased-red) ![xmera Omnia Version](https://img.shields.io/badge/xmera_Omnia-v3.x.x-blue) ![Language Support](https://img.shields.io/badge/Languages-de-green) ![Version Stage](https://img.shields.io/badge/Stage-development-important)

The xmera Omnia manual is written in asciidoc and convertible into html by antora or converitble into a pdf file.

---

## Installation

The documentation is based on ascii-docs. The adoc-files are converted to a html-documantation by antora and to a pdf-document by Asciidoctor PDF.
So you need to install

- [antora](https://docs.antora.org/antora/2.3/install/install-antora/) and
- [Asciidoctor PDF](https://asciidoctor.org/docs/asciidoctor-pdf/#install-the-published-gem)

Antora needs an playbook (yml file), where the location of the content (the modules folder and the antora.yml) is located and the start page and the location of the userinterface are defined.

In the antora.yml the first navigation level is defined. The entries are links to the navigation files of the next navigation level. In this nav.yml in each module, the links to the content.yml's are specified.

The structure of the pdf file is specified in the xo-doc-hb.adoc. The basic information are defined in the header. In this case a special theme (cronicles theme)is used. You can download it [here](https://github.com/asciidoctor/asciidoctor-pdf/blob/fe1a0d8ef830e37c3bb9fa689ad888ca4e7924ba/examples/chronicles-theme.yml).  
In the content part of the adoc document, the content files in the module folders of the antora structure are inculded into the main document.

The relative links to the images in antora start in the folder of the content file, the relative path in the Asciidoctor PDF starts in the folder of the xo-doc-hb.adoc. To run both, html and pdf, there is an image folder parallel to the pdf folder with symlinks to the image folders in every modul. Doing so, the relative path is equal in both systems.

## Create documents and pages

### Create antora html manual

To create the antora html pages you have to run

    $ antora xo-doc-playbook.yml

A folder pages is created. You can start the index.html in the folder pages to see the outcome.

### Create pdf document manual

To create pdf document you have to run

    $ asciidoctor-pdf pdf/xo-doc.yml

A pdf-file (xo-doc.pdf) is created.

### Create documents and pages with makefile

Create the antora html pages and start the the page with firefox run:

    $ make xo-doc_html

Create the pdf document and start the document in the document reader run:

    $ make xo-doc_pdf
