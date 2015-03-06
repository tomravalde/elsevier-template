# README

## Basic use

- Put `elsevier.xelatex` somewhere that Pandoc can find
- Write your content in `paper.md`
- If you need to use any specific LaTeX packages, load them in `custom-local-els.sty` (I store this in the directory I'm working in)
- Build by running the shellscript

## Options for the YAML metadata

- The corresponding author should be defined as `'Joe Bloggs\corref{cor1}`'. Note the use of single quotation marks (and not double!) around the name.
- Addresses: you can specify an `address` for each author (make sure then to give each author a `group` identifier). If both/all authors have the same address, leave these fields blank and specify `address-general`.
- `options`: this includes options that would go in `\documentclass[<options.]{elsarticle}.` See Section 4 of [this document](http://www.elsevier.com/__data/assets/pdf_file/0011/109388/elsdoc.pdf) for details.
- `biblio-files`: this is the location of your `*.bib` file
