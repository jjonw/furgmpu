%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Classe desenvolvida para a MPU FURG 2020
%   email: jwieczynski@furg.br
%   github: https://github.com/jjonw (para versões mais recentes)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{furgmpu}[2020/08/14 Classe para trabalhos da MPU]

\LoadClass[12pt,oneside]{article}

\RequirePackage[paper=a4paper,
            left=3cm,
            top=2.5cm,
            bottom=4cm,
            right=3cm,
            headheight=2.1cm,
            headsep=0.4cm,
            footskip=0.6cm,
            asymmetric]{geometry}

\addtolength{\voffset}{0.9cm}
\RequirePackage[brazilian]{babel}
%\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{fancyhdr} 	
\RequirePackage{lastpage}

\RequirePackage{helvet}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{etoolbox}
\patchcmd{\thebibliography}{\section*}{\section}{}{}
\addto{\captionsbrazilian}{\renewcommand{\refname}{REFERÊNCIAS}}

\RequirePackage[alf,abnt-emphasize=bf]{abntex2cite}
%\citebrackets[]

\RequirePackage{booktabs}
\RequirePackage{titling}  
\pretitle{\center \vspace{-1.4cm}}
\preauthor{\flushright}
\postauthor{\vskip -1.0cm}
\posttitle{\vskip 0.4cm}

\RequirePackage{graphicx}

\RequirePackage{sectsty}
\sectionfont{\fontsize{12}{12}\selectfont}

\RequirePackage{titlesec}
\titlespacing{\section}{10pt}{24pt}{0pt}

\setlength{\parindent}{1.25cm}

\fancypagestyle{plain}{ 
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
    \fancyhead[L]{\includegraphics[height=1.8cm,scale=1]{furg/mpu_logo_esquerda.png}}
    \fancyhead[C]{{\footnotesize Universidade Federal do Rio Grande - FURG\\\textbf{19\textsuperscript{a} Mostra da Produção Universitária - MPU}\\\textit{Rio Grande/RS, Brasil, 11 a 13 de novembro de 2020}\\ISSN: 2317-4420}}
    \fancyhead[R]{\includegraphics[height=1.8cm,scale=1]{furg/mpu_logo_direita.png}}
    \fancyfoot[R]{\thepage}
}
\pagestyle{plain}


\newcommand{\titulo}[1]{\title{\textbf{#1}}}
\newcommand{\autores}[4]{\author{{\normalsize
    {#1 \\ \vspace{0.6cm}
     #2 \\
     #3 \\
     #4 \\
    }
}}
    \date{\vspace{-4.2ex}}
}

\newcommand{\palavraschave}[1]{
    \noindent \textbf{Palavras-chave:} #1. 
    \vspace{0.2cm}
    \renewcommand{\baselinestretch}{1.07}
}

%newcommand{\semdata}{\date{\vspace{-4.2ex}}}