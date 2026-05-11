# 단국대학교 대학원 학위논문 LaTeX 템플릿
# Dankook University Graduate School Thesis Template

> **대학원 학위논문의 작성지침 (PDF) 완전 준수 버전**

## 파일 구조

```
main.tex                       ← 메인 파일
pages/
  01_cover.tex                 ← ① 겉표지 (서식 1)
  02_blank.tex                 ← ② 속지
  03_titlepage.tex             ← ③ 속표지 (서식 2)
  04_submission.tex            ← ④ 제출지 (서식 3)
  05_approval.tex              ← ⑤ 심사 판정지 (서식 4)
  06_toc.tex                   ← ⑥ 내용 차례
  07_abstract_ko.tex           ← ⑦ 국문 초록 (서식 5)
  08_acknowledgements.tex      ← ⑧ 감사의 글
  09_references.tex            ← ⑩ 참고문헌
  11_abstract_en.tex           ← ⑫ 영문 초록 (서식 6)
chapters/
  chapter1_intro.tex           ← Ⅰ. 서론
  chapter2_method.tex          ← Ⅱ. 이론적 배경 및 연구방법
  chapter3_results.tex         ← Ⅲ. 결과 및 토의
  chapter4_conclusion.tex      ← Ⅳ. 결론
figures/                       ← 그림 파일 저장
```

## Overleaf 업로드

1. ZIP 업로드: New Project → Upload Project
2. **컴파일러: XeLaTeX** (Menu → Compiler → XeLaTeX) ← 필수!
3. main.tex 컴파일

## main.tex에서 수정할 정보

```latex
\newcommand{\thesistitleko}{논문 제목}
\newcommand{\thesistitleen}{Thesis Title}
\newcommand{\authorname}{홍 길 동}
\newcommand{\authornameEN}{HONG Gildong}
\newcommand{\advisorname}{성 춘 향}
\newcommand{\submityear}{2024}
\newcommand{\submitmonth}{08}
\newcommand{\department}{○○○학과}
\newcommand{\major}{○○○전공}
\newcommand{\degreetype}{석사}   % 석사 or 박사
```

## 작성지침 준수 규격

| 항목 | 규격 |
|------|------|
| 용지 | A4 |
| 여백 | 상·하·좌·우 30mm / 머리말·꼬리말 15mm |
| 줄간격 | 160% |
| 들여쓰기 | 2 space |
| 장 Ⅰ. | 16pt 가운데 bold |
| 절 1. / 1.1 / 1.1.1 | 14pt 왼쪽 bold |
| 본문 | 11pt (국문) / 12pt (영문) |
| 각주 | 9pt (국문) / 10pt (영문) |
| 쪽번호 | 아래 중앙 / 앞부분 로마자 |
| 수식번호 | 식 (1), 식 (2) |
| 그림/표번호 | Figure 2-1 / Table 2-1 |

## 논문 순서 (작성지침 §3)
겉표지 → 속지 → 속표지 → 제출지 → 심사판정지
→ 내용차례 → 국문초록 → 감사의글 → **본문**
→ 참고문헌 → 부록 → **영문초록** → 속지 → 뒤표지

## Source

This template was created based on the official Dankook University Graduate School thesis guideline and Microsoft Word template:

- [Dankook University Graduate School Thesis Guideline](https://grad.dankook.ac.kr/-21?p_p_id=dku_bbs_web_BbsPortlet&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_dku_bbs_web_BbsPortlet_cur=1&_dku_bbs_web_BbsPortlet_sKeyword=%ED%95%99%EC%9C%84&_dku_bbs_web_BbsPortlet_sKeyType=title&_dku_bbs_web_BbsPortlet_action=view_message&_dku_bbs_web_BbsPortlet_orderBy=createDate&_dku_bbs_web_BbsPortlet_bbsMessageId=114775)
