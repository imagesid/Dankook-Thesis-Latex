% ===================================================================
% 1. 클래스 기본 선언 및 뼈대 로드
% ===================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dku_thesis}[Dankook University Graduate School Thesis Class]
\LoadClass[titlepage, 11pt, a4paper]{report}

% ===================================================================
% 2. 필수 외부 패키지 로드 (의존성 충돌 방지를 위해 최상단에 일괄 배치)
% ===================================================================
\RequirePackage{geometry}        % 여백 설정
\RequirePackage{luatexko}        % LuaLaTeX 한글 지원
\RequirePackage{fontspec}        % 폰트 설정
\RequirePackage{setspace}        % 줄간격 제어
\RequirePackage{indentfirst}     % 첫 줄 들여쓰기
\RequirePackage{titlesec}        % 제목(장, 절) 스타일 제어
\RequirePackage{caption}         % 캡션 스타일 제어
\RequirePackage{amsmath, amssymb}% 수식 관련
\RequirePackage{graphicx}        % 이미지 삽입
\RequirePackage{etoolbox}        % 환경 훅(Hook) 제어
\RequirePackage{tocloft}         % 목차 스타일 제어
\RequirePackage{fancyhdr}        % 머리말/꼬리말 스타일 제어
\RequirePackage{array}           % 표 확장 기능
\RequirePackage{makecell}        % 표 셀 다중 줄바꿈
\RequirePackage{multirow}        % 표 셀 병합

% ===================================================================
% 3. 전역 레이아웃 및 페이지 스타일 설정 (여백, 머리말/꼬리말, 줄 간격)
% ===================================================================
% 용지 여백 설정 (실전 출력 최적화 수치 44.9mm 유지)
\geometry{
  a4paper,
  top=44.9mm,
  bottom=44.9mm,
  left=30mm,
  right=30mm
}

% 머리말 및 꼬리말 (페이지 번호) 설정
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% 줄간격 및 기본 문단 포맷
\setstretch{1.6}
\setlength{\parindent}{10pt}

% ===================================================================
% 4. 폰트 및 서체 설정
% ===================================================================
% Serif (명조 계열)
\setmainfont{Times New Roman}
\setmainhangulfont{Noto Serif CJK KR}[BoldFont=* Bold]
\setmainhanjafont{Noto Serif CJK KR}[BoldFont=* Bold]

% Sans (고딕 계열)
\setsansfont{Arial}
\setsanshangulfont{Noto Sans CJK KR}[BoldFont=* Bold]
\setsanshanjafont{Noto Sans CJK KR}[BoldFont=* Bold]

\newfontfamily\gothicfont{Noto Sans CJK KR}[BoldFont=* Bold]
\newfontfamily\gothichangulfont{Noto Sans CJK KR}[BoldFont=* Bold]

% ===================================================================
% 5. 번호 매기기 방식 및 라벨링 (장, 절, 그림, 표, 수식)
% ===================================================================
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}

\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}} % 수식 번호 아라비아 숫자 고정

% ===================================================================
% 6. 제목 포맷팅 (Chapter, Section, Subsection)
% ===================================================================
\titleformat{\chapter}[block]
  {\centering\fontsize{16}{16}\selectfont\bfseries}
  {\Roman{chapter}.}{0.5em}{}
\titlespacing{\chapter}{0pt}{-7mm}{16pt}

\titleformat{\section}[block]
  {\filright\fontsize{14}{14}\selectfont\bfseries}
  {\thesection}{0.5em}{}
\titlespacing{\section}{0pt}{14pt}{10pt}

\titleformat{\subsection}[block]
  {\filright\fontsize{12}{12}\selectfont\bfseries}
  {\thesubsection}{0.5em}{}
\titlespacing{\subsection}{0pt}{12pt}{10pt}

% ===================================================================
% 7. 목차 (TOC, LOF, LOT) 및 참고문헌 스타일 설정
% ===================================================================
\renewcommand{\contentsname}{\hfill 목\quad차 \hfill}
\renewcommand{\listtablename}{\hfill List of Tables \hfill}
\renewcommand{\listfigurename}{\hfill List of Figures \hfill}
\renewcommand{\bibname}{\hfill 참 고 문 헌 \hfill}

\renewcommand{\cftchappresnum}{}
\renewcommand{\cftchapaftersnum}{.~} 
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}} 
\renewcommand{\cftchapfont}{\normalfont} 
\setlength{\cftbeforechapskip}{4pt} 
\renewcommand{\cftchappagefont}{\normalfont}

% 프리픽스 뒤 단어 밀림 방지를 위해 너비를 가장 자연스러운 수치로 고정
\renewcommand{\cfttabpresnum}{Table~}
\setlength{\cfttabnumwidth}{4.5em}

\renewcommand{\cftfigpresnum}{Figure~}
\setlength{\cftfignumwidth}{4.8em}

% ===================================================================
% 8. 플로트 (그림, 표) 캡션 및 환경 제어
% ===================================================================
\captionsetup[table]{
  labelsep=space, labelfont={bf,sf}, textfont=sf,
  justification=raggedright, singlelinecheck=false, position=above
}
\captionsetup[figure]{
  labelsep=space, labelfont={bf,sf}, textfont=normalfont,
  justification=centering, position=below
}

% 일반 데이터 테이블 진입 시 고딕체 자동 전환 자동화 환경 훅
\AtBeginEnvironment{tabular}{\sffamily\fontsize{11}{11}\selectfont}

% ===================================================================
% 9. 문서 구조 제어 명령어 (전면부, 본문부, 후면부)
% ===================================================================
\newcommand{\frontmatter}{\pagenumbering{roman}\setcounter{page}{1}}
\newcommand{\mainmatter}{\pagenumbering{arabic}\setcounter{page}{1}}
\newcommand{\backmatterabstract}{\pagenumbering{roman}\setcounter{page}{6}} 

% ===================================================================
% 10. 메타데이터 변수 입력 명령어 (main.tex와 통신)
% ===================================================================
\newcommand{\thesistitleko}[1]{\def\printthesistitleko{#1}}
\newcommand{\thesistitlekosub}[1]{\def\printthesistitlekosub{#1}}
\newcommand{\thesistitleen}[1]{\def\printthesistitleen{#1}}
\newcommand{\thesistitlenone}[1]{\def\printthesistitlenone{#1}}
\newcommand{\thesistitlentwo}[1]{\def\printthesistitlentwo{#1}}
\newcommand{\authorname}[1]{\def\printauthorname{#1}}
\newcommand{\authornameEN}[1]{\def\printauthornameEN{#1}}
\newcommand{\advisorname}[1]{\def\printadvisorname{#1}}
\newcommand{\advisornameEN}[1]{\def\printadvisornameEN{#1}}
\newcommand{\submityear}[1]{\def\printsubmityear{#1}}
\newcommand{\submitmonth}[1]{\def\printsubmitmonth{#1}}
\newcommand{\submitdate}[1]{\def\printsubmitdate{#1}}
\newcommand{\department}[1]{\def\printdepartment{#1}}
\newcommand{\major}[1]{\def\printmajor{#1}}
\newcommand{\departmentEN}[1]{\def\printdepartmentEN{#1}}
\newcommand{\majorEN}[1]{\def\printmajorEN{#1}}
\newcommand{\degreetype}[1]{\def\printdegreetype{#1}}
\newcommand{\gradschool}[1]{\def\printgradschool{#1}}
\newcommand{\gradschoolEN}[1]{\def\printgradschoolEN{#1}}

% ===================================================================
% 11. 템플릿 출력 매크로 (표지, 속표지, 인준지 등)
% ===================================================================
% 겉표지 생성
\newcommand{\makecover}{
  \thispagestyle{empty}
  {\hfill\fontsize{10}{10}\selectfont \printdegreetype 학위논문(심사용)\par}
  \begingroup
    \centering
    \vspace{14mm}
    {\fontsize{20}{20}\selectfont \printthesistitleko \\ [1.5mm]}
    {\fontsize{15}{15}\selectfont \printthesistitlekosub \par}
    
    \vspace{15mm}
    {\fontsize{13}{13}\selectfont \printthesistitlenone \\}
    {\fontsize{12}{12}\selectfont \printthesistitlentwo \par}
    
    \vspace{35mm}
    {\fontsize{13}{13}\selectfont
        \makebox[4em][s]{제출자} ： \makebox[3em][l]{\printauthorname} \\ [2mm]
        \makebox[4em][s]{지도교수} ： \makebox[3em][l]{\printadvisorname} \par
    }
    
    \vspace{23mm}
    {\fontsize{16}{16}\selectfont \printsubmityear \par}
    
    \vspace{20mm}
    {\fontsize{14}{14}\selectfont \printdepartment \\ [2mm]} 
    {\fontsize{14}{14}\selectfont \printmajor \\ [2mm]} 
    {\fontsize{15}{15}\selectfont \printgradschool \par}
  \endgroup
  \clearpage
}

% 속표지
\newcommand{\makesubmission}{
  \thispagestyle{empty}
  \begingroup
    \centering
    \vspace*{13pt}
    {\fontsize{20}{20}\selectfont \printthesistitleko \\ [1.5mm]} 
    {\fontsize{15}{15}\selectfont \printthesistitlekosub \par}
    
    \vspace{15mm}
    {\fontsize{13}{13}\selectfont \printthesistitlenone \\}
    {\fontsize{12}{12}\selectfont \printthesistitlentwo \par}
    
    \vspace{30mm}
    {\fontsize{15}{15}\selectfont 이 논문을 \printdegreetype 학위논문으로 제출함 \\}
    
    \vspace{16mm}
    {\fontsize{16}{16}\selectfont \printsubmityear 년 \printsubmitmonth 월 \\}
    
    \vspace{15mm}
    {\fontsize{15}{15}\selectfont \printgradschool \\ [2mm]}
    {\fontsize{14}{14}\selectfont \printdepartment \\ [2mm]}
    {\fontsize{14}{14}\selectfont \printmajor \par}
    
    \vspace{16mm}
    {\fontsize{15}{15}\selectfont \printauthorname \par}
  \endgroup
  \clearpage
}

% 심사 판정지 생성
\newcommand{\signline}[1]{%
  {\normalfont\fontsize{14}{14}\selectfont \makebox[6em][s]{#1}} & 
  {\normalfont\fontsize{14}{14}\selectfont 인} \\ \hline \noalign{\vspace{26pt}}%
}

\newcommand{\makeapproval}{
  \thispagestyle{empty}
  \begingroup
    \centering
    {\fontsize{20}{20}\selectfont \printauthorname 의 \printdegreetype 학위 논문을 \\}
    {\fontsize{20}{20}\selectfont 합격으로 판정함 \par}
    
    \vspace{22mm}
    {\fontsize{15}{15}\selectfont 심 사 일：\printsubmityear. \printsubmitmonth. \printsubmitdate. \par}
    
    \vspace{25mm}
    \begin{tabular}{p{0.55\textwidth}l}
        \signline{심사위원장}
        \signline{심사위원}
        \signline{심사위원}
        \signline{심사위원}
        \signline{심사위원}
    \end{tabular} \par
    
    \vspace{34mm}
    {\fontsize{20}{20}\selectfont \printgradschool \par}
  \endgroup
  \clearpage
}