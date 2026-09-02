# DSAIL 홈페이지 리뉴얼 — 배포 패키지
대상 레포: `kaist-dsail/kaist-dsail.github.io` (Jekyll, GitHub Pages, CNAME dsail.kaist.ac.kr)

## 1. 이 패키지의 내용
```
_layouts/gallery.html                 사진 갤러리 하위 페이지용 새 레이아웃
_pages/home.html                      /                    (기존 home.md 삭제)
_pages/research.html                  /research/           (기존 research.md 삭제)
_pages/publications.html              /publications/       (신규)
_pages/redirect_publications_conference.html   /publications_conference/ → /publications/   (기존 publications_conference.md 삭제)
_pages/redirect_publications_journal.html      /publications_journal/ → /publications/?type=journal (기존 publications_journal.md 삭제)
_pages/professor.html                 /professor/          (기존 professor.md 삭제)
_pages/members.html                   /members/            (기존 members.md 삭제)
_pages/alumni.html                    /alumni/             (기존 alumni.md 삭제)
_pages/news.html                      /news.html           (기존 news.md 삭제)
_pages/projects.html                  /projects.html       (기존 projects.md 삭제)
_pages/photo.html                     /photo/              (기존 photo.md 삭제)
_pages/additional_photo/*.md (38개)   기존 파일 덮어쓰기 (layout: gallery 로 교체)
research/papers.json                  논문 데이터 (Research·Publications 공용)
```
같은 permalink의 기존 `.md`를 반드시 삭제해야 합니다 (Jekyll 충돌). `photo2.md`, `photo_old.md`, `pictures.md`, `research_.md` 등 사용하지 않는 옛 파일은 그대로 두어도 무방합니다.

## 2. 데이터 소스 (갱신 방식은 지금과 동일)
| 페이지 | 읽는 데이터 |
|---|---|
| Home | `_data/news.yml` 최신 6개 (Liquid) |
| News | `_data/news.yml` 전체, 연도별 자동 그룹 |
| Members | `_data/current_phd.yml`, `current_masters.yml`, `current_undergrad.yml` |
| Alumni | `_data/alumni_phd.yml`, `alumni_ms.yml`, `alumni_visitor.yml`, `alumni_undergrad.yml` |
| Photo | `_data/activity.yml`; 하위 갤러리는 각 md의 `data:`/`folder:` |
| Research, Publications | `research/papers.json` |
| Professor, Projects | HTML에 직접 기재 |

## 3. 논문 관리 (변경점)
Publications/Research는 `publist_conf.yml` 등 대신 **`research/papers.json`** 만 읽습니다.
- 항목 필드: `id, title, authors, venue, year, type(main|journal|workshop|preprint), theme(ai4sci|llm|graph|recsys|multimodal|applications), secondary[], pdf, code, links{slide,video,news,model,dataset}, note, also_in[]`
- AI for Science 논문: `domain(materials|molecules|biology|engineering)`, `sci_llm(true/false)` 추가
- 대표 논문·교차 영역·응용·세부 분야 목록은 `themes[].representative`, `convergence`, `applications`, `themes[ai4sci].topics`에서 id로 참조
- 저널 14편 전부 포함. 워크숍/저널 중복 게재는 상위 venue 1건 + `also_in`
- URL 사전 필터: `/publications/?theme=ai4sci`, `?type=journal`, `?year=2026`
- 새 사진 갤러리: `_pages/additional_photo/<name>.md`에 `heading`, `data`, `folder` 세 줄짜리 front matter만 추가

## 4. `_includes/header.html` (옛 레이아웃을 쓰는 페이지가 남아 있을 경우)
Research의 Notion 링크 → `/research/`, Publications 드롭다운 → `/publications/` 단일 링크로 교체.

## 5. 배포 후 확인
`/`, `/research/`, `/publications/`, `/professor/`, `/members/`, `/alumni/`, `/news`, `/projects`, `/photo/`, `/additional_photo/kdd2608/`
Research·Publications에 "Could not load papers.json"이 보이면 `research/papers.json` 경로 확인.

## 6. 참고
- 모든 페이지는 `layout: null`(갤러리는 `gallery`)로 자체 헤더/CSS를 씁니다. 외부 로드는 Google Fonts(Fraunces, Inter)뿐이며, `<link>` 한 줄을 지우면 시스템 폰트로 동작합니다.
- Professor 전화번호는 기존 페이지 기준 3137, Home 연락처는 3177 — 사이트 원본 그대로이니 필요하면 통일하세요.
