%%
%% Custom Class Template
%% Author: Evan Jones
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ej_article}[2021/05/17 A customized class for articles written by Evan Jones.]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

% baseline class
\LoadClass[12pt, table]{article}

% Packages
% Text encoding
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}

% Margins and geometry manipulation
\RequirePackage[a4paper,margin=1in,nohead]{geometry}
\RequirePackage{pdflscape, changepage}

% Math equations
\RequirePackage{amsmath, amssymb, amsfonts, amsthm}
\theoremstyle{plain}
\newtheorem{definition}{Definition}[section]
\allowdisplaybreaks

% Tikz
\RequirePackage{tikz}
\usetikzlibrary{
	bayesnet, 
	arrows, 
	backgrounds,
	shapes,
	decorations,
	calc,
	arrows.meta,
	fit,
	positioning
}
\tikzset{
	-Latex,auto,node distance =1 cm and 1 cm,semithick,
	state/.style ={ellipse, draw, minimum width = 0.7 cm},
	point/.style = {circle, draw, inner sep=0.04cm,fill,node contents={}},
	bidirected/.style={Latex-Latex,dashed},
	el/.style = {inner sep=2pt, align=left, sloped}
	square/.style={regular polygon,regular polygon sides=4}
}


% Tables
\RequirePackage{
	adjustbox,
	array, 
	caption,
	float, 
	tabularx, 
	siunitx, 
	multirow, 
	hhline, 
	calc, 
	booktabs,
	indentfirst, 
	enumitem, 
	setspace,
	titling, 
	dcolumn, 
	makecell, 
	longtable,
	wrapfig,
	makecell,
	subcaption
}
\RequirePackage[]{xcolor}
%\RequirePackage[capposition=top]{floatrow}
\RequirePackage[symbol]{footmisc}
%newcolumntype{Y}{>{\raggedleft\arraybackslash}X}% raggedleft column X
%\captionsetup[table]{skip=-1pt} 

% Chinese text
%\RequirePackage{CJKutf8}

% Table cell spacings
\renewcommand\theadalign{bc}
\renewcommand\theadfont{\bfseries}
\renewcommand\theadgape{\Gape[4pt]}
\renewcommand\cellgape{\Gape[4pt]}

% Links
\RequirePackage[colorlinks, citecolor=blue, urlcolor=blue, linkcolor=blue]{hyperref}

% Graphics
\RequirePackage{graphicx}
\RequirePackage[space]{grffile}


% Title page and geenral formatting
\RequirePackage{hanging}
\RequirePackage[compact]{titlesec}
\RequirePackage{blindtext, titlefoot}
\RequirePackage{authblk}
\RequirePackage[title]{appendix}
\RequirePackage{enumitem}
\renewcommand\Affilfont{\small}
\setlength{\affilsep}{2em}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\bfseries}
\titleformat*{\subsubsection}{\normalsize\itshape}
\titlespacing*{\section}{0pt}{0pt}{0pt}
\setlength{\parindent}{2em}
\setlength{\parskip}{1em}

% dynamic word count
\RequirePackage{bashful}
\bash
texcount -inc -incbib -sum -1 *.tex
\END

% Bibliography
\RequirePackage[backend=biber, natbib, authordate, citetracker=false, ibidtracker=false]{biblatex-chicago}
\RequirePackage{keyval,ifthen}
\RequirePackage{csquotes}

\DeclareCiteCommand{\cite}
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand*{\cite}
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{citeyear}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\parencite}[\mkbibparens]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand*{\parencite}[\mkbibparens]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{citeyear}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\footcite}[\mkbibfootnote]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{ \usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\footcitetext}[\mkbibfootnotetext]
{\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{cite}}}
{\multicitedelim}
{\usebibmacro{postnote}}

\DeclareCiteCommand{\textcite}
{\boolfalse{cbx:parens}}
{\usebibmacro{citeindex}%
	\printtext[bibhyperref]{\usebibmacro{textcite}}}
{\ifbool{cbx:parens}
	{\bibcloseparen\global\boolfalse{cbx:parens}}
	{}%
	\multicitedelim}
{\usebibmacro{textcite:postnote}}


\makeatletter

\newcommand*\PrintSkips[1]{%
	\typeout{In #1:}%
	\typeout{\@spaces above: \the\abovecaptionskip}%
	\typeout{\@spaces below: \the\belowcaptionskip}%
}

\makeatother