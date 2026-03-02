---
title: 좋은 논증문의 구조 도해 - 사회적 이슈 해결 예시
layout: home
nav_order: 79
parent: 1주차 (1차시) 기본 논증문 모델
permalink: /basic-model/lemma-samples-social/
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
<!-- S1) 도시 교통 정체: '차로 확장' vs '수요관리+대중교통' -->
<h2 id="urban-traffic">① 도시 교통 — 정체 해소를 위한 수요관리·대중교통 패키지</h2>
<p class="callout">
  <strong>주제 제안:</strong> “정체 해소의 핵심은 도로 증설이 아니라 수요관리와 이동수단 전환이다.”<br>
  <strong>Theorem(최종 주장):</strong> BRT 전용차로, 혼잡통행료, 보행·자전거 인프라를 결합한 패키지가 도로 확장보다 정체를 지속적으로 줄인다.
</p>

<div class="flow" aria-label="urban traffic outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    차로를 늘리면 정체가 풀린다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    도로 용량 증가는 유발 수요로 인해 단기간 내 추가 정체를 만든다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    대중교통은 보조 수단일 뿐이다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    전용 차로가 있는 간선급행버스체계(BRT)는 동일 차로에서 승객 처리량을 자동차 혼합차로보다 크게 높인다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    통행료는 시민 부담만 늘린다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    혼잡통행료는 첨두 수요(peak demand)를 분산시키고 대중교통 전환을 촉진하며 재원을 확보한다.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    BRT 전용차로, 혼잡통행료, 보행·자전거 인프라의 결합이 자동차 중심 도로 확장보다 정체·배출·사고를 지속적으로 줄인다.
  </div>
</div>

<hr>


<!-- S2) 주거비 안정: '임대료 상한' vs '복합 포트폴리오' -->
<h2 id="housing-affordability">② 주거 — 임대료 상한 단독이 아닌 복합 포트폴리오</h2>
<p class="callout">
  <strong>주제 제안:</strong> “세입자 보호, 공급 확대, 소득연동 지원을 함께 설계해야 한다.”<br>
  <strong>Theorem(최종 주장):</strong> 세입자 보호, 용적률 상향 등 공급 확대, 주거바우처·공공임대를 결합한 포트폴리오가 지속 가능한 주거 안정을 달성한다.
</p>

<div class="flow" aria-label="housing affordability outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    강한 임대료 상한제만으로 서민 주거비를 안정시킬 수 있다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    임대료 상한제 단독 정책은 신축 유인을 약화시켜 중장기적으로 임대 물량을 감소시킨다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    도심은 낮은 밀도를 유지해야 삶의 질이 유지된다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    용적률 상향과 혼합용도 고밀화는 접근 가능한 지역의 주택 공급을 확대하여 평균 임대료 상승 압력을 완화한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    시장이 모든 소득 계층을 스스로 포괄할 수 있다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    주거바우처와 공공임대는 시장공급으로 충족되지 않는 취약계층 수요를 보완한다.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    세입자 보호, 공급 확대, 소득연동 지원을 병행할 때 주거 안정이 장기적으로 달성된다.
  </div>
</div>

<hr>


<!-- S3) 공중보건 접종: '자발 홍보' vs '기본값+신뢰+접근성' -->
<h2 id="vaccination">③ 공중보건 — 접종률 제고를 위한 기본값·신뢰·접근성</h2>
<p class="callout">
  <strong>주제 제안:</strong> “자발적 홍보만으로는 한계가 있다.”<br>
  <strong>Theorem(최종 주장):</strong> 기본값 설계, 신뢰 기반 소통, 접근성 개선을 결합한 다층 전략이 단순 홍보보다 높은 접종률을 달성한다.
</p>

<div class="flow" aria-label="vaccination outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    자발적 홍보만으로도 충분한 접종률을 달성할 수 있다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    허위정보가 많은 환경에서는 자발적 참여가 집단면역 임계치 아래에서 정체된다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    정보만 제공하면 사람들은 스스로 예약한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    사전예약 기본값(옵트아웃)과 리마인더는 접종의 실행 장벽을 낮춰 실제 참여를 증가시킨다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    중앙 홍보가 신뢰 형성에 가장 효율적이다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    지역사회 신뢰 인사와 투명한 안전성 공개는 접종 의향을 유의미하게 높인다.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    기본값 설계, 신뢰 기반 소통, 접근성 개선을 결합해야 지속적으로 높은 접종률이 달성된다.
  </div>
</div>

<hr>


<!-- S4) 노숙 대응: '단속' vs '주거우선+통합지원' -->
<h2 id="homelessness">④ 노숙 문제 — 단속 중심에서 주거우선+통합지원으로</h2>
<p class="callout">
  <strong>주제 제안:</strong> “질서유지 단속만으로는 노숙이 줄어들지 않는다.”<br>
  <strong>Theorem(최종 주장):</strong> 주거우선, 통합적 보건·상담 지원, 제한적 질서유지를 결합한 접근이 단속 중심 접근보다 노숙을 지속적으로 감소시킨다.
</p>

<div class="flow" aria-label="homelessness outline">
  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    강제 퇴거와 단속은 거리 환경을 개선한다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 1</strong><br>
    강제 퇴거는 사람들을 다른 장소로 이동시킬 뿐 노숙 규모를 줄이지 못한다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    주거 제공은 자활 이전에 시행하면 역효과가 난다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 2</strong><br>
    주거우선은 선주거 제공으로 서비스 참여율을 높여 자활 효과를 증대시킨다.
  </div>

  <div class="node thesis">
    <strong>They Say · Thesis</strong><br>
    개별 서비스만으로도 재유입을 막을 수 있다.
  </div>
  <div class="arrow"></div>
  <div class="node lemma">
    <strong>I Say · Anti-thesis → Lemma 3</strong><br>
    상담, 정신건강, 중독 치료의 동시 제공은 재유입률을 유의미하게 낮춘다.
  </div>

  <div></div>
  <div class="arrow"></div>
  <div class="node theorem">
    <strong>THEOREM · 최종 종합</strong><br>
    주거우선과 통합지원은 단속 중심 접근보다 더 지속가능하게 노숙을 감소시킨다.
  </div>
</div>
