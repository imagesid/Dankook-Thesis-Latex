# 단국대학교 대학원 학위논문 LaTeX 템플릿
# Dankook University Graduate School Thesis Template

> **대학원 학위논문 작성지침 기반 LaTeX 템플릿**

## Versions

- [Korean Version](https://github.com/imagesid/Dankook-Thesis-Latex)
- [English Version](https://github.com/imagesid/Dankook-Thesis-Latex/tree/english)
- [Korean CLS Version](https://github.com/imagesid/Dankook-Thesis-Latex/tree/korea-cls)

⭐ 템플릿이 도움이 되었다면 GitHub Star를 남겨주시면 큰 힘이 됩니다 :)

## 통계

![Stars](https://img.shields.io/github/stars/imagesid/Dankook-Thesis-Latex?style=flat-square)
![Forks](https://img.shields.io/github/forks/imagesid/Dankook-Thesis-Latex?style=flat-square)
![Issues](https://img.shields.io/github/issues/imagesid/Dankook-Thesis-Latex?style=flat-square)
![Views](https://komarev.com/ghpvc/?username=imagesid&repo=Dankook-Thesis-Latex&style=flat-square)

## Overleaf 업로드

1. ZIP 업로드: New Project → Upload Project
2. **컴파일러: LuaLaTeX** (Menu → Compiler → LuaLaTeX) ← 필수!
3. main.tex 컴파일

## main.tex 수정 항목

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
| 들여쓰기 | 2칸 |
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

## 출처

본 템플릿은 단국대학교 대학원 학위논문 작성지침 및 Hancom Docs 양식을 참고하여 제작되었습니다.

- [단국대학교 대학원 학위논문 작성지침](https://grad.dankook.ac.kr/-21?p_p_id=dku_bbs_web_BbsPortlet&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&_dku_bbs_web_BbsPortlet_cur=1&_dku_bbs_web_BbsPortlet_sKeyword=%ED%95%99%EC%9C%84&_dku_bbs_web_BbsPortlet_sKeyType=title&_dku_bbs_web_BbsPortlet_action=view_message&_dku_bbs_web_BbsPortlet_orderBy=createDate&_dku_bbs_web_BbsPortlet_bbsMessageId=114775)

## 기여

오류 수정, 기능 개선, 서식 개선 등 모든 기여를 환영합니다.

Issue 및 Pull Request를 자유롭게 등록해 주세요.
