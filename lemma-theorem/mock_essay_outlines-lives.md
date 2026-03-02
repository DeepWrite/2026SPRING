---
title: 좋은 논증문의 구조 도해 - 실생활 문제해결 예시
layout: home
nav_order: 80
parent: 1주차 (1차시) 기본 논증문 모델
permalink: /basic-model/lemma-samples-lives/
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

<!-- A1) 일상 재무 예시: "소소한 지출"에서 "누적 절약 시스템"으로 -->
<h2 id="everyday-finance">① 일상 재무 — 소액 반복 지출을 다루는 간단한 시스템</h2>
<p class="callout"><strong>주제 제안:</strong> “큰 결심보다, 작은 반복을 설계하는 것이 지출을 줄인다.”<br>
<strong>Theorem(최종 주장):</strong> 소액 반복 지출을 자동 점검·자동 이체·한도화 세 축으로 관리하면 월간 고정 지출을 지속적으로 낮출 수 있다.</p>

<div class="flow" aria-label="everyday finance outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    큰 소비만 줄이면 된다. 작은 지출은 스트레스 풀기니까 괜찮다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    소액도 <em>반복</em>되면 큰 비용이 된다 — 구독·정기결제 목록을 월 1회 자동 점검.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    남는 돈이 있으면 저축한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    저축은 <em>남는 돈</em>이 아니라 <em>먼저 빠지는 돈</em>이다 — 월급일 D+0 자동이체.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    결심으로 커피/배달을 줄인다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    결심보다 <em>한도</em>가 지속 가능 — 카테고리별 주간 한도(예: 배달 2회/주) 설정.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    “구독 점검 + 선저축 자동이체 + 카테고리 한도”의 3단계 시스템으로 월 고정지출을 안정적으로 절감.
  </div>
</div>

<details>
  <summary>적용 가이드</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>They Say: 큰 지출만 관리하면 된다</li>
        <li>질문: 왜 월말만 되면 돈이 부족할까?</li>
        <li>Theorem 예고: 자동 점검/자동 이체/한도</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (구독 점검)</strong>
      <ul>
        <li>Anti-thesis: 소액 반복의 누적</li>
        <li>실행: 캘린더에 “구독 정리” 반복 등록</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (선저축)</strong>
      <ul>
        <li>Anti-thesis: 남는 돈 저축 → 먼저 빠지는 돈</li>
        <li>실행: 월급일 당일 자동이체</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (한도화)</strong>
      <ul>
        <li>Anti-thesis: 의지 대신 한도</li>
        <li>실행: 주간 카테고리 한도 알림</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>세 Lemma 연결 → 월 지출 안정화</li>
        <li>리뷰 주기·예외 규칙 정의</li>
      </ul>
    </div>
  </div>
</details>

<hr>


<!-- A2) 건강 습관 예시: "운동할 시간 없어요"에서 "마이크로 루틴"으로 -->
<h2 id="micro-fitness">② 건강 습관 — 10분 마이크로 루틴으로 최소 유효 운동 만들기</h2>
<p class="callout"><strong>주제 제안:</strong> “긴 운동보다, 짧고 자주가 지속 가능하다.”<br>
<strong>Theorem(최종 주장):</strong> 걷기·10분 근력·환경 트리거 3요소 루틴으로 ‘운동 제로’를 ‘꾸준함’으로 전환할 수 있다.</p>

<div class="flow" aria-label="micro fitness outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    운동하려면 최소 1시간은 필요하다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    10분도 운동이다 — 출퇴근/점심 후 <em>빠른 걷기 10분</em> 고정.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    헬스장 가야만 근력이 된다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    맨몸 루틴으로 충분 — <em>푸시업·스쿼트·플랭크 10분</em>.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    의지가 생기면 시작한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    의지보다 <em>환경</em> — 운동화 현관 배치, 알람·캘린더 트리거 설정.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    “10분 걷기 + 10분 근력 + 환경 트리거”로 주 5회 꾸준 루틴을 형성.
  </div>
</div>

<details>
  <summary>적용 가이드</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>They Say: 운동=긴 시간</li>
        <li>질문: 왜 작심삼일일까?</li>
        <li>Theorem 예고: 10분×2 + 환경</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (걷기)</strong>
      <ul>
        <li>장소/시간 고정: 점심 후</li>
        <li>보상: 체크리스트로 가시화</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (근력)</strong>
      <ul>
        <li>루틴: 3동작 10분</li>
        <li>점진: 주당 1~2회 반복수↑</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (환경)</strong>
      <ul>
        <li>장애물 제거: 장비 미리 깔아두기</li>
        <li>트리거: 알람·동료와 약속</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>세 Lemma가 꾸준함을 만든다</li>
        <li>2주·4주 리뷰로 보강</li>
      </ul>
    </div>
  </div>
</details>

<hr>


<!-- A3) 팀 협업 예시: "회의 많을수록 정렬"에서 "문서·체크리스트·스프린트"로 -->
<h2 id="team-collab">③ 팀 협업 — 회의 남발 대신 문서화·체크리스트·스프린트</h2>
<p class="callout"><strong>주제 제안:</strong> “정렬은 회의가 아니라, 문서와 리듬이 만든다.”<br>
<strong>Theorem(최종 주장):</strong> 문서 우선 → 필요회의 체크리스트 → 25분 집중 스프린트로 협업 비용을 줄이고 산출을 높일 수 있다.</p>

<div class="flow" aria-label="team collaboration outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    회의를 자주 하면 정렬이 잘 된다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    정렬은 <em>문서</em>가 만든다 — 안건·결정·담당·마감 4요소를 항상 기록.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    회의는 일단 열고 보자.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    회의 전 <em>체크리스트</em> — 목적·안건·자료·의사결정자 없으면 비동기 처리.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    오래 앉아 있으면 집중이 된다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    집중은 <em>짧고 선명</em> — 25분 스프린트+5분 휴식으로 작업 리듬 구성.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    “문서 우선 + 회의 체크리스트 + 스프린트”로 회의 시간을 줄이며 결정과 실행을 가속.
  </div>
</div>

<details>
  <summary>적용 가이드</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>They Say: 회의=정렬</li>
        <li>질문: 왜 회의 후에도 모호할까?</li>
        <li>Theorem 예고: 문서·체크리스트·스프린트</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (문서 우선)</strong>
      <ul>
        <li>템플릿: 문제/옵션/결정/담당/기한</li>
        <li>공유: 누구나 코멘트 가능</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (회의 체크리스트)</strong>
      <ul>
        <li>없으면: 비동기로 해결</li>
        <li>있으면: 25~45분 타임박스</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (스프린트)</strong>
      <ul>
        <li>개인/팀 타이머 사용</li>
        <li>마감: 스프린트 끝에 리뷰</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>세 Lemma → 결정 품질·속도↑</li>
        <li>주간 회고로 유지</li>
      </ul>
    </div>
  </div>
</details>

<hr>


<!-- A4) 제품 알림 예시: "많이 보내면 많이 쓴다"에서 "적게, 정확히"로 -->
<h2 id="product-notifs">④ 제품 알림 — 최소 알림으로 최대 효과</h2>
<p class="callout"><strong>주제 제안:</strong> “알림은 양이 아니라 적합성이다.”<br>
<strong>Theorem(최종 주장):</strong> 세그먼트·행동 트리거·조용 시간(Quiet hours) 3원칙으로 알림 수는 줄이고 전환은 높일 수 있다.</p>

<div class="flow" aria-label="product notifications outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    자주 보내야 잊지 않는다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    모두에게 동일 알림은 <em>무시</em>를 부른다 — 사용자 <em>세그먼트</em>별 메시지.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    정해진 시간에 일괄 발송이 효율적이다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    <em>행동 트리거</em>가 더 관련성 높음 — 사용자의 직전 행동·상태에 맞춰 발송.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    밤에도 보내면 누군가는 본다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    신뢰가 우선 — <em>조용 시간</em>과 빈도 상한으로 피로도 최소화.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    “세그먼트 + 행동 트리거 + 조용 시간”으로 알림량↓, 전환·만족도↑.
  </div>
</div>

<details>
  <summary>적용 가이드</summary>
  <div class="cols">
    <div class="card">
      <strong>서론</strong>
      <ul>
        <li>They Say: 자주=효과</li>
        <li>질문: 왜 차단·해지될까?</li>
        <li>Theorem 예고: 적게, 정확히</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 1 (세그먼트)</strong>
      <ul>
        <li>예: 신규/휴면/충성/위험</li>
        <li>맞춤 메시지·가치 제안</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 2 (트리거)</strong>
      <ul>
        <li>예: 장바구니 이탈, 기능 첫 사용</li>
        <li>즉시/지연 규칙 설정</li>
      </ul>
    </div>
    <div class="card">
      <strong>Lemma 3 (조용 시간)</strong>
      <ul>
        <li>시간대·요일 정책</li>
        <li>주별/월별 빈도 상한</li>
      </ul>
    </div>
    <div class="card">
      <strong>종합·결론</strong>
      <ul>
        <li>3원칙으로 알림 피로↓</li>
        <li>A/B 테스트로 지속 개선</li>
      </ul>
    </div>
  </div>
</details>
