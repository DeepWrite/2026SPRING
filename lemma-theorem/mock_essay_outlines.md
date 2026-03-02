---
title: 좋은 논증문의 구조 도해 - 모의 에세이 예시
layout: home
nav_order: 90
parent: 1주차 (1차시) 기본 논증문 모델
permalink: /basic-model/lemma-samples/
---

<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>모의 에세이 구조도 — Lemma → Theorem 적용 예시</title>
<style>
  :root{
    --fg:#111;
    --muted:#555;
    --accent:#0b74de;
    --ok:#0a8f3c;
    --warn:#b15a00;
    --bg:#fff;
    --line:#dcdcdc;
    --pill:#f6f8fa;
  }
  body{color:var(--fg); background:var(--bg); font:16px/1.6 system-ui, -apple-system, Segoe UI, Roboto, Noto Sans KR, sans-serif; margin:0; padding:24px;}
  h1,h2,h3{line-height:1.25}
  .muted{color:var(--muted)}
  .toc{border:1px solid var(--line); padding:12px; background:var(--pill); border-radius:12px; margin:12px 0 24px}
  .toc a{display:block; text-decoration:none; color:var(--accent); margin:4px 0}
  .flow{display:grid; grid-template-columns: 1fr 40px 1fr; gap:10px 8px; align-items:center; margin:16px 0 24px}
  .node{border:1.5px solid var(--line); border-radius:12px; padding:10px 12px; background:white; box-shadow:0 1px 0 rgba(0,0,0,.03)}
  .node.theorem{border-color:var(--ok);}
  .node.lemma{border-color:#888}
  .node.thesis{border-color:#999}
  .arrow{height:2px; background:var(--line); position:relative}
  .arrow:after{content:""; position:absolute; right:-6px; top:-4px; width:0; height:0; border-left:8px solid var(--line); border-top:6px solid transparent; border-bottom:6px solid transparent}
  .vstack{display:flex; flex-direction:column; gap:6px}
  .pill{display:inline-block; background:var(--pill); border:1px solid var(--line); padding:2px 8px; border-radius:999px; font-size:12px; color:var(--muted)}
  details{border:1px solid var(--line); border-radius:10px; padding:10px 12px; background:#fff; margin:10px 0}
  details>summary{cursor:pointer; font-weight:600}
  .cols{display:grid; grid-template-columns:repeat(auto-fit, minmax(280px,1fr)); gap:14px}
  .card{border:1px solid var(--line); border-radius:12px; padding:12px; background:#fff}
  .callout{border-left:4px solid var(--accent); background:#f3f8ff; padding:10px 12px; border-radius:8px; margin:10px 0}
  .kbd{font-family:ui-monospace, SFMono-Regular, Menlo, monospace; font-size:13px; background:#f6f8fa; border:1px solid var(--line); padding:2px 6px; border-radius:6px}
  .place{background:#fff8e1; border:1px dashed #e0c164; padding:6px 8px; border-radius:8px; font-size:14px}
  .checklist{width:100%; border-collapse:collapse}
  .checklist th,.checklist td{border:1px solid var(--line); padding:8px; text-align:left; vertical-align:top}
  .checklist th{background:#f8f9fb}
  .footer-note{color:#777; font-size:13px; margin-top:18px}
</style>
</head>
<body>

<h1 id="top">모의 에세이 구조도 — <span class="pill">Lemma → Theorem</span> 적용 예시</h1>
<p class="muted">사회과학(Prospect Theory)·인문학(Geertz) 과제에 곧바로 적용 가능한 시각화 아웃라인</p>

<div class="toc">
  <strong>바로가기</strong>
  <a href="#prospect">①-1 사회과학 예시: 전망이론(Prospect Theory)로 재구성</a>
  <a href="#geertz">①-2 사회과학 예시:  Geertz의 해석인류학으로 재해석</a>
  <a href="#aesthetics">②-1 인문학 예시: 미학 — 칸트의 ‘무목적적 합목적성’</a>
  <a href="#history">②-2 인문학 예시: 역사학 — Collingwood의 ‘사고의 재구성’</a>
  <a href="#literature">②-3 인문학 예시: 문학 — Barthes의 ‘저자의 죽음’</a>
  <a href="#template">③ 공통 템플릿: Lemma 카드 & 문단 프롬프트</a>
  <a href="#rubric">④ 평가 체크리스트</a>
</div>

<!-- 1) Social Science Example -->
<h2 id="prospect">①-1 사회과학 예시: 전망이론(Prospect Theory)로 재구성</h2>
<p class="callout"><strong>주제 제안:</strong> “인간의 위험하 의사결정은 기대효용이론(EUT)이 아니라 전망이론으로 더 잘 설명된다.”<br>
<strong>Theorem(최종 주장):</strong> 손실회피·확률가중·프레이밍 효과를 누적적으로 입증함으로써, 전망이론이 설명우위를 가진다는 결론에 도달한다.</p>

<div class="flow" aria-label="prospect theory outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    기대효용이론(EUT): 인간은 기대효용을 극대화한다.
  </div>
  <div class="arrow" role="presentation"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    <em>확실성효과</em>: 사람들은 확실한 이득을 과대평가하여 EUT 공리를 위반한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    확률은 선형적으로 가중된다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    <em>확률가중</em>: 낮은 확률을 과대, 높은 확률을 과소평가한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    이득·손실의 가치평가는 대칭적이다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    <em>손실회피</em>: 동일 크기의 손실이 이득보다 더 크게 평가된다.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    전망이론: (i) 이득 영역은 오목, 손실 영역은 볼록인 <em>가치함수</em>, (ii) 비선형 <em>확률가중함수</em>로 인간 선택을 설명한다.
  </div>
</div>

<details>
  <summary>문단별 쓰기 프롬프트</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>논쟁 맥락 소개(They Say): EUT의 지배적 위치</li>
        <li>연구 질문: 실제 선택은 EUT를 따르는가?</li>
        <li>주장 미리보기(Theorem): 전망이론이 더 설명력 있음</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (확실성효과)</strong>
      <ul>
        <li>Anti-thesis: 확실한 결과에 편향</li>
        <li>근거: 고전 사례/실험(도식·표 가능)</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (확률가중)</strong>
      <ul>
        <li>Anti-thesis: 확률의 비선형 지각</li>
        <li>근거: 희박위험 과대평가 사례</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (손실회피)</strong>
      <ul>
        <li>Anti-thesis: 손실의 비대칭적 가치화</li>
        <li>근거: 소유효과/손실회피 데이터</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>세 Lemma의 논리적 연결</li>
        <li>전망이론 모형 요소로 통합</li>
        <li>한계·향후과제 제시</li>
      </ul>
    </div>
  </div>
</details>

<div class="place">
  ⬚ <strong>인용 삽입 자리(저작권 보호)</strong>: Kahneman &amp; Tversky (1979) 확실성효과·확률가중·손실회피 핵심 구절 — <em>추후 직접 인용문과 서지 추가</em>.
</div>

<h2 id="geertz">①-2 사회과학 예시: Geertz의 해석인류학으로 재해석</h2>
<p class="callout"><strong>주제 제안:</strong> “문화는 법칙의 대상이 아니라 ‘두꺼운 서술’이 요구되는 해석의 대상이다.”<br>
<strong>Theorem(최종 주장):</strong> 문화=‘의미의 그물’을 해석하는 학으로서 인류학을 재정립한다.</p>

<div class="flow" aria-label="geertz outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    기능주의/법칙지향: 문화는 보편 법칙으로 설명 가능.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    문화는 <em>의미의 그물(webs of significance)</em>이며, 해석이 1차적 과제다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    의례·놀이=경제적 효용 중심 행위.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    ‘깊은 놀이’는 경제 합리성으로 환원 불가 — 상징·위계의 <em>연극적 재현</em>.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    문화기술은 얇은 기술적 묘사로 충분.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    <em>두꺼운 서술</em>이 맥락적 의미를 포착 — 해석 없이는 ‘사실’도 공허.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    인류학은 의미 해석의 학: 법칙 탐색이 아니라 <em>텍스트로서의 문화</em> 읽기.
  </div>
</div>

<details>
  <summary>문단별 쓰기 프롬프트</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>They Say: 법칙지향적 설명 전통 소개</li>
        <li>연구 질문: 문화 이해의 1차 과제는 무엇인가?</li>
        <li>Theorem 예고: 해석·두꺼운 서술의 우선성</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (의미의 그물)</strong>
      <ul>
        <li>Anti-thesis: 문화=의미의 그물</li>
        <li>근거: 개념적 재정의 및 사례</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (깊은 놀이)</strong>
      <ul>
        <li>Anti-thesis: 경제 환원 비판</li>
        <li>근거: 투계·의례 분석</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (두꺼운 서술)</strong>
      <ul>
        <li>Anti-thesis: 얇은 묘사 불충분</li>
        <li>근거: 맥락적 의미·상징망 분석</li>
        <li>부분 결론 정식화</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>세 Lemma의 연결</li>
        <li>해석 인류학의 정당화</li>
        <li>한계·응용 제안</li>
      </ul>
    </div>
  </div>
</details>

<div class="place">
  ⬚ <strong>인용 삽입 자리(저작권 보호)</strong>: Geertz, “webs of significance”, “thick description” 핵심 문장 — <em>추후 직접 인용문과 서지 추가</em>.
</div>

<hr>
<!-- 2-1) Humanities Example: 미학 -->
<h2 id="aesthetics">②-1 인문학 예시: 미학 — 칸트의 ‘무목적적 합목적성’</h2>
<p class="callout"><strong>주제 제안:</strong> “예술은 단순한 쾌락이나 기술이 아니라, 보편적 타당성을 지닌 판단의 영역이다.”<br>
<strong>Theorem(최종 주장):</strong> 예술은 ‘무목적적 합목적성’을 통해 주관성과 보편성을 매개한다.</p>

<div class="flow" aria-label="aesthetics outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    미=쾌락의 주관적 경험(단순한 감각적 즐거움).
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    칸트: 미 판단은 단순한 쾌락이 아니라 <em>무목적적 합목적성</em> — 보편적 소통성을 요구한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    예술=도덕적 교훈 전달 수단.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    칸트: 예술은 도덕성에 종속되지 않으며, <em>자율적 영역</em>으로서 자유판단을 이끌어낸다.
  </div>

  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    미학적 판단은 주관과 보편을 매개하며, 예술을 자율적 영역으로 정립한다.
  </div>
</div>

---

<!-- 2-2) Humanities Example: 역사학 -->
<h2 id="history">②-2 인문학 예시: 역사학 — Collingwood의 ‘사고의 재구성’</h2>
<p class="callout"><strong>주제 제안:</strong> “역사는 사실의 나열이 아니라 과거 사고의 재구성이다.”<br>
<strong>Theorem(최종 주장):</strong> 역사학은 과거 행위자의 사고와 맥락을 해석·재현하는 인문학적 탐구다.</p>

<div class="flow" aria-label="history outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    역사는 객관적 사실의 연대기 기록이다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    Collingwood: 사실 자체는 죽은 것 — 역사는 <em>사고의 재구성</em>이어야 한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    사료는 사실 그 자체를 전한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    사료는 해석을 통해서만 의미를 가진다 — 역사가의 <em>질문과 맥락</em>이 핵심.
  </div>

  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    역사학은 사실 기록이 아니라 과거 사고를 재구성하는 해석적 학문이다.
  </div>
</div>

---

<!-- 2-3) Humanities Example: 문학 -->
<h2 id="literature">②-3 인문학 예시: 문학 — Barthes의 ‘저자의 죽음’</h2>
<p class="callout"><strong>주제 제안:</strong> “문학 텍스트의 의미는 저자 의도에 고정되지 않는다.”<br>
<strong>Theorem(최종 주장):</strong> 문학의 해석은 독자와 담론 속에서 새롭게 생성된다.</p>

<div class="flow" aria-label="literature outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    문학 작품의 의미=저자의 의도와 동일.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    Barthes: 저자는 더 이상 특권적 의미의 주체가 아니다 — <em>저자의 죽음</em>.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    독자는 저자의 의도를 단순 추적해야 한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    의미는 독자·텍스트·담론 공동체의 상호작용 속에서 <em>생성</em>된다.
  </div>

  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    문학 해석은 저자의 의도에 종속되지 않고, 독자와 담론 속에서 끊임없이 새롭게 구성된다.
  </div>
</div>

<div class="place">
  ⬚ <strong>인용 삽입 자리(저작권 보호)</strong>: Kant, <em>Kritik der Urteilskraft</em>; Collingwood, <em>The Idea of History</em>; Barthes, “La mort de l’auteur” — <em>추후 직접 인용문과 서지 추가</em>.
</div>

<hr>

<!-- 3) Common Template -->
<h2 id="template">③ 공통 템플릿: Lemma 카드 & 문단 프롬프트</h2>

<div class="cols">
  <div class="card">
    <strong>Lemma 카드(반복 모듈)</strong>
    <ol>
      <li><span class="pill">They Say</span> 해당 분야의 확립된 명제·전제 제시</li>
      <li><span class="pill">I Say</span> 정밀한 Anti-thesis로 겨냥(과장·허수아비 금지)</li>
      <li><span class="pill">Evidence</span> 데이터/텍스트/사례/논증 제시</li>
      <li><span class="pill">Lemma</span> 부분 결론을 한 문장으로 명시</li>
    </ol>
  </div>
  <div class="card">
    <strong>문단 프롬프트(복사-붙여넣기)</strong>
    <p class="muted">필요에 따라 대괄호를 채워 넣으세요.</p>
    <p><span class="kbd">[They Say 요약]. 그러나, [핵심 가정/누락] 때문에 이 주장은 [한계/오류]가 있다. </span></p>
    <p><span class="kbd">나는 [Anti-thesis]를 주장한다. 이를 위해 [자료/사례/논변]을 제시한다. </span></p>
    <p><span class="kbd">따라서, 우리는 [Lemma(부분 결론)]에 도달한다. 이 결론은 이어지는 [다음 Lemma/종합]을 뒷받침한다. </span></p>
  </div>
</div>

<hr>

<!-- 4) Rubric -->
<h2 id="rubric">④ 평가 체크리스트</h2>
<table class="checklist">
  <thead>
    <tr><th>Do (권장)</th><th>Don't (지양)</th></tr>
  </thead>
  <tbody>
    <tr>
      <td>They Say를 공정하게 요약하고 표적을 명확화</td>
      <td>기존 논의를 왜곡하거나 모호하게 제시</td>
    </tr>
    <tr>
      <td>정확한 Anti-thesis로 특정 가정을 정면 겨냥</td>
      <td>근거 없는 일반적 부정/감상적 주장</td>
    </tr>
    <tr>
      <td>각 Lemma에 즉시 근거(증거·추론)를 배치</td>
      <td>근거 없이 주장만 나열</td>
    </tr>
    <tr>
      <td>부분 결론(Lemma)을 한 문장으로 명시</td>
      <td>결론을 암시만 하고 명시하지 않음</td>
    </tr>
    <tr>
      <td>Lemma들 간 논리적 연결·전환을 분명히 함</td>
      <td>서로 무관한 점들을 단순 나열</td>
    </tr>
    <tr>
      <td>최종 Theorem에서 Lemma들을 종합적으로 재확인</td>
      <td>새 주장만 던지고 누적 논증과의 연결 부재</td>
    </tr>
  </tbody>
</table>

<p class="footer-note">※ 본 문서는 <em>Just the Docs</em> 테마와 호환되는 순수 HTML로 작성되었습니다. 인용이 필요한 핵심 구절은 <strong>인용 삽입 자리</strong>에 추후 직접 추가해 저작권을 준수해 주세요.</p>

<p style="margin-top:24px"><a href="#top">맨 위로 ↑</a></p>
</body>
</html>
