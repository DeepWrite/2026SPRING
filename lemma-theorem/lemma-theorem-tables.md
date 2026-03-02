---
title: 좋은 논증문의 구조 - tables
layout: home
nav_order: 60
parent: 1주차 (1차시) 기본 논증문 모델
permalink: /basic-model/lemma-tables/
---

# 좋은 논증문의 구조

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/good_argument_structure.png" width="80%" height="auto">
</div> <br>

---
<div class="jtddiagram" role="img" aria-label="좋은 논증문 구조: 서론, 논제–반논제 순환을 통한 부분결론(Lemma)들, 종합(Integration), 최종결론(Theorem).">
  <style>
    .jtddiagram svg{max-width:100%;height:auto;display:block;margin:1rem 0}
    .jtddiagram .box{fill:none;stroke:currentColor;stroke-width:2;rx:12}
    .jtddiagram .title{font-weight:700;font-size:20px}
    .jtddiagram .label{font-size:14px}
    .jtddiagram .bold{font-weight:600}
    .jtddiagram .arrow{stroke:currentColor;stroke-width:2;fill:none;marker-end:url(#arrowhead)}
    .jtddiagram .caption{font-size:12px;opacity:.8}
  </style>

  <svg viewBox="0 0 1200 900" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="title desc">
    <title id="title">좋은 논증문 구조</title>
    <desc id="desc">상단에 서론, 이어서 세 차례의 논제→반논제 과정을 거쳐 Lemma 도출, 종합(Integration), 결론으로 이어짐.</desc>

    <defs>
      <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
        <polygon points="0 0, 10 3.5, 0 7" fill="currentColor"/>
      </marker>
    </defs>

    <!-- 제목 -->
    <text x="600" y="60" text-anchor="middle" class="title">좋은 논증문 구조</text>

    <!-- 서론 -->
    <rect class="box" x="450" y="90" width="300" height="80"/>
    <text x="600" y="120" text-anchor="middle" class="label bold">서론</text>
    <text x="600" y="142" text-anchor="middle" class="label">주제 제시 • 최종 주장(정리) 예고 • 논증 단계 안내</text>
    <line class="arrow" x1="600" y1="170" x2="600" y2="200"/>

    <!-- 1번째 논제→반논제 -->
    <rect class="box" x="100" y="220" width="320" height="90"/>
    <text x="260" y="252" text-anchor="middle" class="label bold">They Say</text>
    <text x="260" y="274" text-anchor="middle" class="label">논제 #1 (기존 견해)</text>

    <rect class="box" x="780" y="220" width="320" height="90"/>
    <text x="940" y="248" text-anchor="middle" class="label bold">I Say</text>
    <text x="940" y="270" text-anchor="middle" class="label">반논제 → Lemma #1</text>

    <line class="arrow" x1="420" y1="265" x2="780" y2="265"/>
    <line class="arrow" x1="940" y1="310" x2="940" y2="340"/>

    <!-- 2번째 논제→반논제 -->
    <rect class="box" x="100" y="360" width="320" height="90"/>
    <text x="260" y="392" text-anchor="middle" class="label bold">They Say</text>
    <text x="260" y="414" text-anchor="middle" class="label">논제 #2 (관련 주장)</text>

    <rect class="box" x="780" y="360" width="320" height="90"/>
    <text x="940" y="388" text-anchor="middle" class="label bold">I Say</text>
    <text x="940" y="410" text-anchor="middle" class="label">반논제 → Lemma #2</text>

    <line class="arrow" x1="420" y1="405" x2="780" y2="405"/>
    <line class="arrow" x1="940" y1="450" x2="940" y2="480"/>

    <!-- 3번째 논제→반논제 -->
    <rect class="box" x="100" y="500" width="320" height="90"/>
    <text x="260" y="532" text-anchor="middle" class="label bold">They Say</text>
    <text x="260" y="554" text-anchor="middle" class="label">논제 #3 (추가 주장)</text>

    <rect class="box" x="780" y="500" width="320" height="90"/>
    <text x="940" y="528" text-anchor="middle" class="label bold">I Say</text>
    <text x="940" y="550" text-anchor="middle" class="label">반논제 → Lemma #3</text>

    <line class="arrow" x1="420" y1="545" x2="780" y2="545"/>

    <!-- Lemma들 → 종합 -->
    <path class="arrow" d="M 940 590 L 940 640 L 600 640"/>

    <!-- 종합 -->
    <rect class="box" x="450" y="600" width="300" height="80"/>
    <text x="600" y="630" text-anchor="middle" class="label bold">종합</text>
    <text x="600" y="652" text-anchor="middle" class="label">여러 Lemma 통합 → 누적적 논증</text>

    <line class="arrow" x1="600" y1="680" x2="600" y2="710"/>

    <!-- 결론 -->
    <rect class="box" x="450" y="710" width="300" height="80"/>
    <text x="600" y="740" text-anchor="middle" class="label bold">결론</text>
    <text x="600" y="762" text-anchor="middle" class="label">최종 주장 재진술 • Lemma들의 뒷받침 확인 • 함의 제시</text>

    <!-- 캡션 -->
    <text x="600" y="830" text-anchor="middle" class="caption">
      좋은 논증문은 “They Say → I Say(반논제→Lemma)” 순환을 거쳐,
      종합(Integration)을 통해 최종 주장(정리)에 도달하고 결론에서 이를 강화한다.
    </text>
  </svg>
</div>

---

<style>
  .arg-diagram { --ink:#111; --muted:#6b7280; --accent:#1f6feb; --bg:#fff; }
  .arg-diagram { font-size:16px; line-height:1.55; margin: 1.25rem 0; color:var(--ink); }
  .arg-diagram .title { text-align:center; font-weight:700; font-size:1.35rem; margin-bottom:.25rem; }
  .arg-diagram .subtitle { text-align:center; color:var(--muted); margin:-.25rem 0 1.25rem; }

  .arg-diagram .grid { display:grid; grid-template-columns: 1fr; gap: 1rem; }

  /* 카드(박스) */
  .arg-box {
    border:2px solid var(--ink);
    border-radius:14px;
    background:var(--bg);
    padding:.9rem 1rem;
  }
  .arg-box h3 { margin:.1rem 0 .35rem; font-size:1rem; }
  .arg-box .kicker{
    display:block; font-size:.8rem; letter-spacing:.04em; text-transform:uppercase;
    color:var(--muted); margin-bottom:.25rem; font-weight:600;
  }
  .arg-box .small{ font-size:.93rem; color:#1f2937; }
  .arg-box .hint{ font-size:.85rem; color:var(--muted); margin-top:.25rem; }

  /* 레인(They Say ↔ I Say) */
  .lane{
    display:grid;
    grid-template-columns: 1fr 40px 1fr;
    gap:.75rem 1rem;
    align-items:center;
  }
  .lane .arrow-right{ text-align:center; font-size:1.3rem; }
  .connector{ text-align:center; color:var(--muted); font-size:.95rem; margin:.1rem 0 .35rem; }
  .centered{ grid-column:1 / -1; }

  /* 구분선 */
  .sep{ height:1px; background:rgba(0,0,0,.06); margin:.2rem 0 .75rem; }

  /* 반응형 */
  @media (max-width: 799px){
    .lane{ grid-template-columns:1fr; }
    .lane .arrow-right{ display:none; }
  }
</style>

<div class="arg-diagram" role="img" aria-label="좋은 논증문 구조: 서론, 논제–반논제 순환을 통한 Lemma들, 종합(Integration), 결론.">
  <div class="title">좋은 논증문 구조</div>
  <div class="subtitle">“They Say → I Say(반논제) → Lemma(부분 결론)”을 누적하여 최종 결론으로</div>

  <div class="grid">

    <!-- 서론 -->
    <div class="arg-box centered">
      <span class="kicker">서론 (Introduction)</span>
      <h3>주제 제시 · 최종 주장(정리) 예고 · 논증 단계 안내</h3>
      <div class="small">
        글의 문제의식과 맥락을 간략히 제시하고, 최종 결론(정리)을 예고합니다.
        이어서 본문이 어떤 단계(Lemma들)로 전개될지 로드맵을 제공합니다.
      </div>
    </div>

    <!-- 1번째 논제 → 반논제/Lemma -->
    <div class="lane" aria-label="1번째 논제에서 반논제과 Lemma로">
      <div class="arg-box">
        <span class="kicker">They Say · Thesis #1</span>
        <h3>논제 #1 (기존 견해)</h3>
        <div class="small">문헌·통설에서 널리 수용되는 주장/전제를 공정하게 요약합니다.</div>
        <div class="hint">※ 스트로맨 금지: 상대 견해를 정확·공정하게 기술</div>
      </div>
      <div class="arrow-right" aria-hidden="true">➜</div>
      <div class="arg-box">
        <span class="kicker">I Say · Anti-thesis → Lemma #1</span>
        <h3>핵심 반논제 제시 → 부분 결론 도출</h3>
        <div class="small">
          “그러나/반대로/이 견해는 ~를 간과한다”처럼 <b>정확히 겨냥한 반논제</b>을 제시하고,
          데이터·사례·논변으로 뒷받침하여 <b>부분 결론(Lemma #1)</b>을 명시적으로 정리합니다.
        </div>
      </div>
    </div>
    <div class="connector" aria-hidden="true">▼ 다음 쟁점(Thesis #2)로 진행</div>

    <!-- 2번째 논제 → 반논제/Lemma -->
    <div class="lane" aria-label="2번째 논제에서 반논제과 Lemma로">
      <div class="arg-box">
        <span class="kicker">They Say · Thesis #2</span>
        <h3>논제 #2 (관련 주장)</h3>
        <div class="small">첫 전제와 연결되거나 그 결과로 따라오는 또 다른 통설/가정을 소개합니다.</div>
      </div>
      <div class="arrow-right" aria-hidden="true">➜</div>
      <div class="arg-box">
        <span class="kicker">I Say · Anti-thesis → Lemma #2</span>
        <h3>두 번째 반논제 → 두 번째 부분 결론</h3>
        <div class="small">
          반례·측정 결과·텍스트 근거 등으로 정밀하게 논증하여 <b>Lemma #2</b>를 도출합니다.
          <div class="hint">이전 Lemma와의 연결(전이 문장)로 누적 논증임을 분명히 합니다.</div>
        </div>
      </div>
    </div>

    <!-- 3번째 논제 → 반논제/Lemma -->
    <div class="lane" aria-label="3번째 논제에서 반논제과 Lemma로">
      <div class="arg-box">
        <span class="kicker">They Say · Thesis #3</span>
        <h3>논제 #3 (추가 주장)</h3>
        <div class="small">앞선 논제들과 연동되는 추가적인 통설 혹은 세부 주장입니다.</div>
      </div>
      <div class="arrow-right" aria-hidden="true">➜</div>
      <div class="arg-box">
        <span class="kicker">I Say · Anti-thesis → Lemma #3</span>
        <h3>세 번째 반논제 → 세 번째 부분 결론</h3>
        <div class="small">핵심 근거를 제시하고, 해당 섹션의 <b>부분 결론(Lemma #3)</b>을 명확히 적시합니다.</div>
      </div>
    </div>

    <div class="sep" aria-hidden="true"></div>

    <!-- 종합 -->
    <div class="arg-box centered">
      <span class="kicker">Integration · 종합</span>
      <h3>여러 Lemma 통합 → 누적적 논증</h3>
      <div class="small">
        각각의 부분 결론이 <b>서로 어떻게 결합되어</b> 하나의 강한 주장으로 귀결되는지 구조적으로 보여줍니다.
        “Lemma #1과 #2로부터 따라서 …”처럼 <b>명시적으로 합성</b>합니다.
      </div>
    </div>

    <!-- 결론 -->
    <div class="arg-box centered">
      <span class="kicker">결론 (Conclusion)</span>
      <h3>최종 주장 재진술 · Lemma들의 뒷받침 확인 · 함의 제시</h3>
      <div class="small">
        서론에서 예고했던 최종 주장을 <b>더 정밀한 형식</b>으로 재진술하고,
        어떤 Lemma들이 이를 지지하는지 요약합니다. 필요하면 한계·함의·후속 과제도 간략히 제시합니다.
      </div>
    </div>

    <!-- 캡션 -->
    <div class="connector" role="note">
      좋은 논증문은 “They Say → I Say(반논제→Lemma)” 순환을 거쳐,
      종합(Integration)을 통해 최종 주장(정리)에 도달하고 결론에서 이를 강화합니다.
    </div>

  </div>
</div>

---

### 도식 설명

* **Introduction (서론)**
  주제 제시 → 최종 주장(Theorem) 미리 예고 → 논증 단계(로드맵) 안내

* **Core Argument (본문)**
  여러 차례의 **Thesis(They Say) → Anti-thesis(I Say) → Lemma(부분 결론)** 과정을 거침

  * 각 Anti-thesis는 기존 학설/주장의 한계를 비판적으로 겨냥
  * 근거 제시 후 Lemma(부분 결론)로 정리
  * 누적된 Lemma들이 다음 단계의 토대를 형성

* **Integration (종합)**
  누적된 Lemma들을 결합하여 **최종 논증 구조** 완성

* **Conclusion (결론)**
  Theorem(최종 주장)을 힘 있게 재진술 → Lemma들이 어떻게 이를 뒷받침하는지 보여줌 → 함의 제시

👉 이 도해는 “좋은 논증문은 무작위 주장들의 나열이 아니라, 각 부분 결론(Lemma)이 서로 연결되어 최종 결론(Theorem)으로 수렴하는 구조”임을 강조합니다.

---

## 기타 시각자료

1. **Lemma→Theorem 사다리**
   “They Say → Anti-thesis(=Lemma) × n → Theorem” 흐름을 한 눈에 보여주는 핵심 개념도. 각 반논제(anti-thesis)이 독립된 부분결론(Lemma)로 승격되고, 이것들이 종합되어 최종 결론(Theorem)으로 귀결되는 구조를 시각화했습니다.

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/01_lemma_theorem_ladder.png" width="80%" height="auto">
</div> <br>

2. **분야별 경로(사회과학 vs 인문학)**
   동일한 ‘They Say → I Say’ 구조가 사회과학(가설/모형 비판→실증근거→Lemma)과 인문학(재해석→근거 텍스트/맥락→Lemma)에서 어떻게 달리 전개되는지 분기 다이어그램으로 제시했습니다. 두 갈래가 아래의 Theorem에서 합류합니다.

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/02_discipline_pathways.png" width="80%" height="auto">
</div> <br>


3. **작성 워크시트(빈 표)**
   수업 활동용 빈 표. 각 행에 “Thesis(They Say) → Anti-thesis(I Say) → Evidence → Lemma”를 채워 넣게 되어 있어, 학생들이 자신의 논증 골격을 바로 설계할 수 있습니다. 프린트 배포용으로 적합합니다.

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/03_outline_planner.png" width="80%" height="auto">
</div> <br>


4. **사례 맵(전망이론 Prospect Theory)**
   “기대효용이론(Thesis) → 확실성효과/확률가중/손실회피(각 Anti-thesis→Lemma) → Prospect Theory(Theorem)”로 이어지는 대표 사회과학 사례를 흐름도로 정리했습니다. 수업 중 사례 설명용으로 좋습니다.

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/04_case_map_prospect_theory.png" width="80%" height="auto">
</div> <br>


5. **Do / Don’t 체크리스트**
   Anti-thesis를 Lemma로 만드는 실천 체크리스트(옳은 습관 vs 흔한 함정)를 표로 정리했습니다. 과제 피드백 기준으로도 활용 가능합니다.

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/lemma-theorem/05_checklist_do_dont.png" width="80%" height="auto">
</div> <br>


---

<h1>논증적 글쓰기: Lemma → Theorem 도해 모듈</h1>

<p>이 페이지는 학부 강좌에서 바로 사용할 수 있도록, <strong>They Say → Anti-thesis(=Lemma) × n → Theorem</strong>의 논증 구조를
분야별(사회과학/인문학)로 시각화하고, 수업 활동용 워크시트와 체크리스트를 함께 제공하는 <em>Just the Docs</em> 호환 HTML입니다.
각 도해 아래에는 교사용/학생용 설명이 포함되어 있습니다.</p>

<hr/>

<h2 id="fig-1">도해 1. Lemma→Theorem 사다리</h2>

<figure class="embed-responsive">
  <figcaption><strong>핵심 개념도: “They Say → Anti-thesis(=Lemma) × n → Theorem”</strong></figcaption>
  <svg viewBox="0 0 1000 620" width="100%" role="img" aria-labelledby="fig1-title fig1-desc">
    <title id="fig1-title">논증 사다리</title>
    <desc id="fig1-desc">기존 논지(They Say)에서 시작해, 반논제(Anti-thesis)을 부분결론(Lemma)으로 정식화하고, 여러 Lemma를 종합해 Theorem으로 나아가는 흐름</desc>
    <defs>
      <marker id="arrow" markerWidth="10" markerHeight="10" refX="6" refY="3" orient="auto" markerUnits="strokeWidth">
        <path d="M0,0 L0,6 L6,3 z"></path>
      </marker>
      <style>
        .box { fill: none; stroke: #333; stroke-width: 2; }
        .arrow { stroke: #333; stroke-width: 2; fill: none; marker-end: url(#arrow); }
        .label { font: 16px sans-serif; }
        .title { font: 20px sans-serif; font-weight: 700; }
      </style>
    </defs>

    <text x="500" y="40" class="title" text-anchor="middle">Building an Argument: From Theses to Lemmas to Theorem</text>

    <!-- Left column -->
    <rect x="60" y="90" width="360" height="80" class="box"></rect>
    <text x="240" y="125" class="label" text-anchor="middle">They Say</text>
    <text x="240" y="150" class="label" text-anchor="middle">(분야의 확립된 논지)</text>

    <line x1="240" y1="170" x2="240" y2="200" class="arrow"></line>

    <rect x="60" y="210" width="360" height="70" class="box"></rect>
    <text x="240" y="245" class="label" text-anchor="middle">I Say: Anti-thesis #1 → Lemma 1</text>

    <line x1="240" y1="280" x2="240" y2="310" class="arrow"></line>

    <rect x="60" y="320" width="360" height="70" class="box"></rect>
    <text x="240" y="355" class="label" text-anchor="middle">They Say (관련 Thesis #2)</text>

    <line x1="240" y1="390" x2="240" y2="420" class="arrow"></line>

    <rect x="60" y="430" width="360" height="70" class="box"></rect>
    <text x="240" y="465" class="label" text-anchor="middle">I Say: Anti-thesis #2 → Lemma 2</text>

    <!-- Theorem on right -->
    <rect x="580" y="250" width="360" height="120" class="box"></rect>
    <text x="760" y="290" class="label" text-anchor="middle" style="font-weight:700">THEOREM (최종 주장)</text>
    <text x="760" y="315" class="label" text-anchor="middle">Lemma 1..n의 종합</text>

    <!-- Arrows from lemmas to theorem -->
    <line x1="420" y1="245" x2="580" y2="290" class="arrow"></line>
    <line x1="420" y1="465" x2="580" y2="320" class="arrow"></line>

    <!-- Caption -->
    <text x="500" y="580" class="label" text-anchor="middle">
      각 Anti-thesis는 충분한 근거 제시를 통해 Lemma(부분결론)로 ‘승격’되고, 누적된 Lemma가 최종 결론(Theorem)을 지지합니다.
    </text>
  </svg>
</figure>

<div class="note">
  <p><strong>설명</strong> — 이 도해는 글쓰기의 핵심 구조를 한눈에 보여줍니다. <em>They Say</em>(선행연구의 주장)를 정확하게 요약한 뒤,
  그 주장에 대한 <em>Anti-thesis</em>(비판·보정)를 제시하고, 근거를 통해 <em>Lemma</em>(부분결론)로 정식화합니다.
  이러한 Lemma들을 구조적으로 연결·종합하여 최종 결론(<em>Theorem</em>)을 제시합니다.</p>
</div>

<hr/>

<h2 id="fig-2">도해 2. 분야별 경로(사회과학 vs 인문학)</h2>

<figure class="embed-responsive">
  <figcaption><strong>동일 구조의 분기: 사회과학 경로 vs 인문학 경로</strong></figcaption>
  <svg viewBox="0 0 1000 680" width="100%" role="img" aria-labelledby="fig2-title fig2-desc">
    <title id="fig2-title">분야별 논증 경로</title>
    <desc id="fig2-desc">중앙의 확립된 논지에서 출발하여, 사회과학과 인문학의 서로 다른 방식으로 Anti-thesis→Evidence→Lemma를 경유해 Theorem에 도달</desc>
    <defs>
      <marker id="arrow2" markerWidth="10" markerHeight="10" refX="6" refY="3" orient="auto" markerUnits="strokeWidth">
        <path d="M0,0 L0,6 L6,3 z"></path>
      </marker>
      <style>
        .box { fill: none; stroke: #333; stroke-width: 2; }
        .arrow { stroke: #333; stroke-width: 2; fill: none; marker-end: url(#arrow2); }
        .label { font: 16px sans-serif; }
        .title { font: 20px sans-serif; font-weight: 700; }
      </style>
    </defs>

    <text x="500" y="40" class="title" text-anchor="middle">Discipline-Specific Argument Pathways</text>

    <!-- Central thesis -->
    <rect x="380" y="80" width="240" height="80" class="box"></rect>
    <text x="500" y="115" class="label" text-anchor="middle">They Say: 확립된 논지</text>
    <text x="500" y="140" class="label" text-anchor="middle">(문헌고찰/지배적 견해)</text>

    <!-- Split arrows -->
    <line x1="500" y1="160" x2="220" y2="220" class="arrow"></line>
    <line x1="500" y1="160" x2="780" y2="220" class="arrow"></line>

    <!-- Left: Social Sciences -->
    <rect x="90" y="220" width="260" height="80" class="box"></rect>
    <text x="220" y="255" class="label" text-anchor="middle">사회과학: Anti-thesis=가설/모형 비판</text>
    <line x1="220" y1="300" x2="220" y2="340" class="arrow"></line>

    <rect x="90" y="340" width="260" height="80" class="box"></rect>
    <text x="220" y="375" class="label" text-anchor="middle">근거: 데이터·실험·사례</text>
    <line x1="220" y1="420" x2="220" y2="460" class="arrow"></line>

    <rect x="90" y="460" width="260" height="80" class="box"></rect>
    <text x="220" y="495" class="label" text-anchor="middle">Lemma: 부분결론(편향 발견, 모형 수정 등)</text>
    <line x1="220" y1="540" x2="500" y2="600" class="arrow"></line>

    <!-- Right: Humanities -->
    <rect x="650" y="220" width="260" height="80" class="box"></rect>
    <text x="780" y="255" class="label" text-anchor="middle">인문학: Anti-thesis=재해석</text>
    <line x1="780" y1="300" x2="780" y2="340" class="arrow"></line>

    <rect x="650" y="340" width="260" height="80" class="box"></rect>
    <text x="780" y="375" class="label" text-anchor="middle">근거: 정밀 독해·맥락·이론 적용</text>
    <line x1="780" y1="420" x2="780" y2="460" class="arrow"></line>

    <rect x="650" y="460" width="260" height="80" class="box"></rect>
    <text x="780" y="495" class="label" text-anchor="middle">Lemma: 부분결론(새 시각, 주제 재구성)</text>
    <line x1="780" y1="540" x2="500" y2="600" class="arrow"></line>

    <!-- Theorem bottom center -->
    <rect x="380" y="560" width="240" height="80" class="box"></rect>
    <text x="500" y="595" class="label" text-anchor="middle" style="font-weight:700">THEOREM / 최종 주장</text>
    <text x="500" y="620" class="label" text-anchor="middle">여러 Lemma의 종합</text>
  </svg>
</figure>

<div class="note">
  <p><strong>설명</strong> — 사회과학과 인문학은 증거 유형과 전개 방식이 다르지만,
  둘 다 <em>They Say → Anti-thesis → Evidence → Lemma → Theorem</em>이라는 같은 골격을 따릅니다.
  사회과학은 데이터·실험 중심, 인문학은 텍스트·맥락 중심으로 근거를 구축한다는 차이가 있습니다.</p>
</div>

<hr/>

<h2 id="fig-3">도해 3. 작성 워크시트(Outline Planner)</h2>

<figure>
  <figcaption><strong>수업 활동용: Lemma → Theorem 설계 표</strong></figcaption>
  <table>
    <thead>
      <tr>
        <th>Thesis (They Say)</th>
        <th>Your Anti-thesis (I Say)</th>
        <th>Evidence / Reasoning</th>
        <th>Lemma (부분결론)</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    </tbody>
  </table>
</figure>

<div class="note">
  <p><strong>설명</strong> — 각 행에 선행연구의 핵심 주장(Thesis)을 공정하게 요약하고, 그에 대한 자신의 Anti-thesis를 명시적으로 기술합니다.
  이어 바로 근거(증거·논증)를 정리한 뒤, 해당 부분에서 도출되는 부분결론(Lemma)을 간단히 문장으로 적습니다.
  완성 후, 여러 Lemma를 자연스럽게 이어주는 전환문장을 덧붙여 최종 결론(Theorem)으로 수렴시키세요.</p>
</div>

<hr/>

<h2 id="fig-4">도해 4. 사례 맵: 기대효용(Thesis) → 전망이론(Theorem)</h2>

<figure class="embed-responsive">
  <figcaption><strong>행동의사결정 사례: EUT에 대한 연속 Anti-thesis → Prospect Theory</strong></figcaption>
  <svg viewBox="0 0 1100 700" width="100%" role="img" aria-labelledby="fig4-title fig4-desc">
    <title id="fig4-title">Prospect Theory 사례 맵</title>
    <desc id="fig4-desc">기대효용이론에 대한 실증적 반례들을 각 Anti-thesis→Lemma로 제시하고, 이를 종합해 전망이론으로 귀결</desc>
    <defs>
      <marker id="arrow4" markerWidth="10" markerHeight="10" refX="6" refY="3" orient="auto" markerUnits="strokeWidth">
        <path d="M0,0 L0,6 L6,3 z"></path>
      </marker>
      <style>
        .box { fill: none; stroke: #333; stroke-width: 2; }
        .arrow { stroke: #333; stroke-width: 2; fill: none; marker-end: url(#arrow4); }
        .label { font: 16px sans-serif; }
        .title { font: 20px sans-serif; font-weight: 700; }
      </style>
    </defs>

    <text x="550" y="40" class="title" text-anchor="middle">From Expected Utility to Prospect Theory</text>

    <!-- Thesis -->
    <rect x="60" y="90" width="420" height="100" class="box"></rect>
    <text x="270" y="130" class="label" text-anchor="middle">They Say (Thesis): 기대효용이론</text>
    <text x="270" y="155" class="label" text-anchor="middle">→ 인간은 위험하에서 기대효용을 극대화</text>

    <!-- Lemma 1 -->
    <rect x="620" y="90" width="420" height="100" class="box"></rect>
    <text x="830" y="130" class="label" text-anchor="middle">Anti-thesis / Lemma 1: 확실성효과</text>
    <text x="830" y="155" class="label" text-anchor="middle">→ EUT 예측 위반</text>
    <line x1="480" y1="140" x2="620" y2="140" class="arrow"></line>

    <!-- Lemma 2 -->
    <rect x="60" y="310" width="420" height="100" class="box"></rect>
    <text x="270" y="350" class="label" text-anchor="middle">Anti-thesis / Lemma 2: 확률가중</text>
    <text x="270" y="375" class="label" text-anchor="middle">→ 희귀사건 과대평가</text>
    <line x1="830" y1="190" x2="270" y2="310" class="arrow"></line>

    <!-- Lemma 3 -->
    <rect x="620" y="310" width="420" height="100" class="box"></rect>
    <text x="830" y="350" class="label" text-anchor="middle">Anti-thesis / Lemma 3: 손실회피</text>
    <text x="830" y="375" class="label" text-anchor="middle">→ v(손실) &gt; v(이익)</text>
    <line x1="270" y1="410" x2="620" y2="360" class="arrow"></line>

    <!-- Theorem -->
    <rect x="330" y="500" width="440" height="140" class="box"></rect>
    <text x="550" y="540" class="label" text-anchor="middle" style="font-weight:700">THEOREM / 전망이론 (Prospect Theory)</text>
    <text x="550" y="565" class="label" text-anchor="middle">→ 가치함수: 이익(오목)/손실(볼록)</text>
    <text x="550" y="590" class="label" text-anchor="middle">→ 확률가중함수</text>

    <line x1="830" y1="410" x2="720" y2="500" class="arrow"></line>
    <line x1="270" y1="410" x2="380" y2="500" class="arrow"></line>
  </svg>
</figure>

<div class="note">
  <p><strong>설명</strong> — 각 Anti-thesis는 고전 이론(EUT)의 특정 가정이나 예측을 정밀하게 겨냥합니다.
  각각의 반례가 <em>Lemma</em>(부분결론)로 축적되면서, 최종적으로 새로운 모형(Prospect Theory)을 정당화하게 됩니다.</p>
</div>

<hr/>

<h2 id="fig-5">도해 5. 체크리스트 (Do / Don’t)</h2>

<figure>
  <figcaption><strong>Anti-thesis를 Lemma로 만드는 실천 체크리스트</strong></figcaption>
  <table>
    <thead>
      <tr>
        <th>Do (좋은 습관)</th>
        <th>Don't (흔한 함정)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>먼저 선행연구의 주장(They Say)을 공정하게 요약한다.</td>
        <td>기존 연구를 왜곡하거나 허수아비 때리기를 하지 않는다.</td>
      </tr>
      <tr>
        <td>구체적 가정 하나를 겨냥해 정밀한 Anti-thesis를 제시한다.</td>
        <td>대상이 불분명한 막연한 반대만 제시하지 않는다.</td>
      </tr>
      <tr>
        <td>Anti-thesis 직후 근거(데이터·분석·예시)를 곧바로 제시한다.</td>
        <td>근거 없이 주장만 나열하지 않는다.</td>
      </tr>
      <tr>
        <td>그 부분에서의 부분결론(Lemma)을 문장으로 명시한다.</td>
        <td>핵심 부분결론을 독자가 알아서 추론하도록 방치하지 않는다.</td>
      </tr>
      <tr>
        <td>전환문장으로 Lemma들 사이의 누적적 연결을 분명히 한다.</td>
        <td>서로 무관한 포인트를 나열식으로 나열하지 않는다.</td>
      </tr>
      <tr>
        <td>마지막에 Lemma들을 종합하여 Theorem(최종 주장)을 명확히 제시한다.</td>
        <td>앞 내용과 연결되지 않는 ‘깜짝 결론’을 던지지 않는다.</td>
      </tr>
    </tbody>
  </table>
</figure>

<div class="note">
  <p><strong>설명</strong> — 수업 피드백이나 자기 점검용으로 활용하세요. 특히 <em>“Lemma를 명시적으로 문장화”</em>하는 습관이
  최종 결론의 설득력을 결정합니다.</p>
</div>

<hr/>

<h2 id="usage">수업 활용 팁</h2>
<ul>
  <li>도해 1–2를 오리엔테이션에서 설명한 뒤, 도해 3 워크시트를 과제 초안 작성에 사용하세요.</li>
  <li>도해 4와 같은 <em>사례 맵</em>을 과목 주제에 맞게 추가 제작해 학습 전이를 촉진하세요(예: Geertz/Foucault/Said/Butler 버전).</li>
  <li>도해 5 체크리스트를 평가 루브릭과 함께 배포하면 피드백의 일관성이 높아집니다.</li>
</ul>