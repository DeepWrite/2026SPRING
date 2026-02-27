---
title: 기본 논증문 모델(1주차 1차시)
layout: home
nav_order: 40
permalink: /basic-model/
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