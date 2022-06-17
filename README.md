LaTeX Templates 
===============

This repo contains folders with a number of different templates useful for research projects, papers and presentations. 

It is a *work in progress* and will be periodically updated with additional templates as I get around to streamlining my workflow.

As I add new templates, I will provide a brief synopsis of each below.


beamer-pres
------------

A template for LaTeX beamer presentations based heavily on [Paul Goldsmith-Pinkham's github repo](https://github.com/paulgp/beamer-tips). If you want to learn more about creating and customizing your own beamer templates for presentations, I highly recommend you head to that repo and peruse it closely. Thanks to my good friend, Kee Hyun Park, for sharing this source with me.

Notes:
- Figures should be kept in the *figures/* directory and the template is entitled *presentation.tex*
- Further customization options are laid out in inline comments.
- Already contains packages for custom colors, fonts, tikzpicture (yes, that means gorgeous DAGs!), and any math equations you can imagine.

article
--------

A LaTeX class for journal articles. The class can be called by beginning the document with `\documentclass{ej_article}`. 

Notes
- The file `ej_article.cls` must be located in the same directory as the document for correct compilation.
- Figures should be kept in the *figures/* directory and any `tex` files in the *tex/* directory. Tex files can then be included in the article via the `\input{}` command.
- Further customization options are laid out in inline comments.
- Already contains packages for tables, appendices, word counts, tikzpicture (yes, that means gorgeous DAGs!), any math equations you can imagine, and much more.
- To compile correct, the tex command should include `--shell-escape`. If you use pdflatex engine, it should be: `pdflatex -synctex=1 -interaction=nonstopmode --shell-escape %.tex` 
