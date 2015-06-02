\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{usecase}[2015/06/02 usecase, V1.0.0]%
\LoadClass[11pt,twoside,a4paper]{report}%

\RequirePackage[utf8]{inputenc}%
\RequirePackage[T1]{fontenc}%

\RequirePackage[left=2.cm,right=2.cm,top=.8cm,bottom=.8cm,includefoot,includehead,headheight=39pt]{geometry}%
\RequirePackage{booktabs}%

\RequirePackage{amsmath,amssymb,amstext}%
\RequirePackage{esint}%

\RequirePackage{lipsum}%
\RequirePackage{colortbl}%
\arrayrulecolor{black}%

\RequirePackage{multirow}%
\RequirePackage{longtable}
\RequirePackage{pdflscape}%
\RequirePackage{color}%
\RequirePackage{rotating}%
\RequirePackage{fancyhdr}%

\RequirePackage{ifpdf}%
\ifpdf%
	\RequirePackage{graphicx}%
	\RequirePackage[pagebackref,hyperindex=true,hidelinks]{hyperref}%
\else%
	\RequirePackage{graphicx}%
	\RequirePackage[dvips,pagebackref,hyperindex=true,hidelinks]{hyperref}%
\fi%

\RequirePackage{bookmark}%

\renewcommand*{\title}{\@dblarg\set@title}%
\newcommand*{\set@title}[2][]{%
	\xdef\@title{#1}
	\xdef\@maintitle{#2}
}

\newcommand*{\name}[1]{%
   \title{Use-Case Specification: #1}%
   \maketitle
}%

