% Papiers à en-tête IPGP - G. Moguilny -  Mars 2020
% compilé sous texlive 2019

\NeedsTeXFormat{LaTeX2e}
\LoadClass[10pt]{article}
\ProvidesClass{lettreIPGP}
\RequirePackage[a4paper,hmargin=2.5cm,vmargin=2.1cm]{geometry}
\RequirePackage[scaled=.85]{helvet} 
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage[x11names]{xcolor}
\definecolor{darkgray}{rgb}{0.45, 0.45, 0.45}
\parindent 0pt 
\parskip 12pt plus2pt minus2pt
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}

\newcommand{\lettertype}[1]{
  \ifstrequal{#1}{ETABLISSEMENT}{
     \def\mylogo{IPGP_UP}
     \newcommand{\myaddr}{Institut de physique du globe de Paris\\}
     \newcommand{\myfoot}{Institut de physique du globe de Paris (IPGP) -- 
                          1, rue Jussieu -- 75238 Paris Cedex 05 -- 
                          France -- www.ipgp.fr}
  }{}
  \ifstrequal{#1}{IPGP}{
     \def\mylogo{IPGP}
     \newcommand{\myaddr}{Institut de physique du globe de Paris\\}
     \newcommand{\myfoot}{Institut de physique du globe de Paris (IPGP) -- 
                          1, rue Jussieu -- 75238 Paris Cedex 05 -- 
                          France -- www.ipgp.fr}
  }{}
  \ifstrequal{#1}{UMR}{
     \def\mylogo{IPGP_UP_CNRS_UR_IGN}
     \newcommand{\myaddr}{Institut de physique du globe de Paris\\ UMR 7154\\}
     \newcommand{\myfoot}{Institut de physique du globe de Paris (IPGP) -- UMR 7154 --
                          1, rue Jussieu -- 75238 Paris Cedex 05 -- France -- www.ipgp.fr}
  }{}
  \ifstrequal{#1}{UMRlamarck}{
     \def\mylogo{IPGP_UP_CNRS_UR_IGN}
     \newcommand{\myaddr}{Institut de physique du globe de Paris\\ UMR 7154\\}
     \newcommand{\myfoot}{Institut de physique du globe de Paris (IPGP) -- UMR 7154 --
                          Bâtiment Lamarck A -- 35, rue Hélène Brion -- 75205 Paris Cedex 13 --
                          France\\[-1mm]  www.ipgp.fr}
  }{}
  \ifstrequal{#1}{OVFP}{
     \def\mylogo{IPGP_UP_OVPF}
     \newcommand{\myaddr}{Observatoire volcanologique du Piton de la Fournaise\\ 
                          Institut de physique du globe de Paris\\}
     \newcommand{\myfoot}{Observatoire volcanologique du Piton de la Fournaise -- 14 RN3 -- Km 27 --
                          97418 La Plaine des Cafres\\[-1mm] www.ipgp.fr}
  }{}
  \ifstrequal{#1}{OVSG}{
     \def\mylogo{IPGP_UP_OVSG}
     \newcommand{\myaddr}{Observatoire volcanologique et sismologique de Guadeloupe\\ 
                          Institut de physique du globe de Paris\\}
     \newcommand{\myfoot}{Observatoire volcanologique et sismologique de Guadeloupe -- Le Houëlmont --
                          97113 Gourbeyre --Guadeloupe, FWI\\[-1mm] www.ipgp.fr}
  }{}
  \ifstrequal{#1}{OVSM}{
     \def\mylogo{IPGP_UP_OVSM}
     \newcommand{\myaddr}{Observatoire volcanologique et sismologique de Martinique\\ 
                          Institut de physique du globe de Paris\\}
     \newcommand{\myfoot}{Observatoire volcanologique et sismologique de Martinique -- Morne des Cadets --
                          97250 Fonds Saint Denis -- Martinique, FWI\\[-1mm] www.ipgp.fr}
  }{}
  \ifstrequal{#1}{UMS}{
     \def\mylogo{IPGP_UP_CNRS}
     \newcommand{\myaddr}{Institut de physique du globe de Paris\\ UMS 3454\\}
     \newcommand{\myfoot}{Institut de physique du globe de Paris (IPGP) --  UMS 3454 --
                          1, rue Jussieu -- 75238 Paris Cedex 05 -- 
                          France -- www.ipgp.fr}
  }{}
} % end lettertype



\cfoot{\textcolor{darkgray}{\footnotesize\bfseries\myfoot}}
\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancyplain}

\newcommand{\putlogo}[1]{\includegraphics[height=1.8cm]{Logos/\mylogo}\\[5mm]}

