# Template for documentations

## Overview
This repository contains a asciidoc template.  
A docker container is used to create pdf and html files from the asciidoc files.  

Asciidoc is a markup language and is designed to write technical documentation.  
It has more features then markdown. For example: Complex tables, variables, and much more. 

For more information visit [docs.asciidoctor.org/asciidoc/latest/](https://docs.asciidoctor.org/asciidoc/latest/)

## Build documents with docker
```
docker build -t asciidoc-builder -f scripts/Dockerfile .
docker run --rm -v "$(pwd)":/data asciidoc-builder
```
The created documents can be found in the "output" directory.

## Structure
the index.adoc file is the starting point and defines the overall document.  
It links to the other files in the sub-directories.  
You can build the file structure however you like.  

## Pictures
Pictures should be referenced relative to the base directory.  
The imagesdir variable is set in the index file to the base directory.  
If a chapter file is viewed stand-alone the imagesdir variable is set in each file to render the file correctly.  
This is important to preview pictures correctly when an individual file is opened in github.  

## Other projects
In case you have the need to create software documentation with modules, different versions, and stored in different repositories you should look at [antora.org](https://antora.org)
