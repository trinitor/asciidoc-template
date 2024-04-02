#!/bin/bash

rm -rf /data/output
mkdir -p /data/output

echo "Create html output"
asciidoctor \
	-a data-uri \
	-o /data/output/document.html \
	index.adoc 

echo "Create txt output"
w3m -dump -cols 2147483647 /data/output/document.html > /data/output/document.txt

echo "Create multipage html output"
asciidoctor-multipage \
    -a stylesdir=scripts/asciidoc-theme \
	-a stylesheet=html-output.css \
    -a data-uri \
	-D /data/output/document-multipage/ \
	index.adoc 

echo "Create pdf output"
asciidoctor-pdf \
	-a pdf-themesdir=scripts/asciidoc-theme \
	-a pdf-fontsdir="scripts/asciidoc-theme;GEM_FONTS_DIR" \
	-a rouge-style=custom-highlight \
	-a pdf-theme=custom \
	-o /data/output/document.pdf \
	index.adoc 

