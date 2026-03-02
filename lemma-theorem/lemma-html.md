---
title: 좋은 논증문의 구조 도해
layout: home
nav_order: 40
parent: 1주차 (1차시) 기본 논증문 모델
permalink: /basic-model/lemma/
---

<!-- 좋은 논증문 구조 도해 (한국어 번역, Just the Docs-ready) -->
<figure class="diagram-arg-structure" role="img" aria-label="좋은 논증문의 구조: 서론; 'They Say → I Say(반론)'을 통한 Lemma 축적; 종합; 결론" style="margin:1.25rem 0;">
  <style>
    .diagram-arg-structure svg { width: 100%; height: auto; }
    .diagram-arg-structure .box { fill: none; stroke: currentColor; stroke-width: 1.5; rx: 10; ry: 10; }
    .diagram-arg-structure .box--they { stroke-dasharray: 5 4; }
    .diagram-arg-structure .box--theorem { stroke-width: 2; }
    .diagram-arg-structure text { fill: currentColor; font-family: ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", "Apple Color Emoji", "Segoe UI Emoji"; }
    .diagram-arg-structure .h { font-weight: 700; }
    .diagram-arg-structure .s { font-size: 13px; }
  </style>

  <svg viewBox="0 0 1000 820" role="presentation">
    <defs>
      <marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="8" markerHeight="8" orient="auto-start-reverse">
        <path d="M 0 0 L 10 5 L 0 10 z" fill="currentColor"></path>
      </marker>
    </defs>

    <!-- 제목 -->
    <text x="500" y="34" text-anchor="middle" style="font-size:18px;" class="h">
      좋은 논증문의 구조
    </text>

    <!-- 서론 -->
    <rect class="box" x="350" y="60" width="300" height="90"></rect>
    <text x="500" y="86" text-anchor="middle" class="h">서론</text>
    <text x="500" y="108" text-anchor="middle" class="s">• 주제 제시 · 최종 주장(Theorem) 예고</text>
    <text x="500" y="128" text-anchor="middle" class="s">• 논증 전개 단계 안내</text>

    <!-- 화살표 -->
    <line x1="500" y1="150" x2="500" y2="172" stroke="currentColor" stroke-width="1.5" marker-end="url(#arrow)"></line>

    <!-- 첫 번째 라운드 -->
    <rect class="box box--they" x="100" y="180" width="300" height="90"></rect>
    <text x="250" y="206" text-anchor="middle" class="h">They Say (주장 #1)</text>
    <text x="250" y="228" text-anchor="middle" class="s">기존 학설 · 전제</text>

    <rect class="box" x="600" y="180" width="300" height="90"></rect>
    <text x="750" y="206" text-anchor="middle" class="h">I Say → Lemma #1</text>
    <text x="750" y="228" text-anchor="middle" class="s">반론 + 근거 ⇒ 부분 결론</text>

    <line x1="400" y1="225" x2="600" y2="225" stroke="currentColor" stroke-width="1.5" marker-end="url(#arrow)"></line>

    <!-- 두 번째 라운드 -->
    <rect class="box box--they" x="100" y="300" width="300" height="90"></rect>
    <text x="250" y="326" text-anchor="middle" class="h">They Say (주장 #2)</text>
    <text x="250" y="348" text-anchor="middle" class="s">관련된 전제 · 주장</text>

    <rect class="box" x="600" y="300" width="300" height="90"></rect>
    <text x="750" y="326" text-anchor="middle" class="h">I Say → Lemma #2</text>
    <text x="750" y="348" text-anchor="middle" class="s">비판 + 근거 ⇒ 부분 결론</text>

    <line x1="400" y1="345" x2="600" y2="345" stroke="currentColor" stroke-width="1.5" marker-end="url(#arrow)"></line>

    <!-- 세 번째 라운드 -->
    <rect class="box box--they" x="100" y="420" width="300" height="90"></rect>
    <text x="250" y="446" text-anchor="middle" class="h">They Say (주장 #3)</text>
    <text x="250" y="468" text-anchor="middle" class="s">추가 가정 · 전제</text>

    <rect class="box" x="600" y="420" width="300" height="90"></rect>
    <text x="750" y="446" text-anchor="middle" class="h">I Say → Lemma #3</text>
    <text x="750" y="468" text-anchor="middle" class="s">반박/수정 + 근거 ⇒ 부분 결론</text>

    <line x1="400" y1="465" x2="600" y2="465" stroke="currentColor" stroke-width="1.5" marker-end="url(#arrow)"></line>

    <!-- Lemma 연결 -->
    <line x1="750" y1="270" x2="750" y2="300" stroke="currentColor" stroke-width="1.2" marker-end="url(#arrow)"></line>
    <line x1="750" y1="390" x2="750" y2="420" stroke="currentColor" stroke-width="1.2" marker-end="url(#arrow)"></line>

    <!-- 종합 -->
    <rect class="box box--theorem" x="350" y="560" width="300" height="90"></rect>
    <text x="500" y="586" text-anchor="middle" class="h">종합</text>
    <text x="500" y="608" text-anchor="middle" class="s">여러 Lemma들을 통합하여 누적적 논증 형성</text>

    <!-- Lemma → 종합 연결 -->
    <line x1="750" y1="510" x2="650" y2="560" stroke="currentColor" stroke-width="1.2" marker-end="url(#arrow)"></line>
    <line x1="750" y1="390" x2="650" y2="560" stroke="currentColor" stroke-width="1.2" opacity="0.7" marker-end="url(#arrow)"></line>
    <line x1="750" y1="270" x2="650" y2="560" stroke="currentColor" stroke-width="1.2" opacity="0.5" marker-end="url(#arrow)"></line>

    <!-- 결론 -->
    <line x1="500" y1="650" x2="500" y2="672" stroke="currentColor" stroke-width="1.5" marker-end="url(#arrow)"></line>
    <rect class="box" x="350" y="680" width="300" height="80"></rect>
    <text x="500" y="706" text-anchor="middle" class="h">결론</text>
    <text x="500" y="728" text-anchor="middle" class="s">최종 주장(Theorem) 재진술 · Lemma들의 지지 · 함의 제시</text>

    <!-- 캡션 -->
    <text x="500" y="792" text-anchor="middle" class="s">
      패턴: “They Say” → “I Say”(반론) ⇒ Lemma … (반복) → 종합 → 결론에서 Theorem 재진술
    </text>
  </svg>
</figure>
