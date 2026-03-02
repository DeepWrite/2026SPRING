---
title: 코멘트-01 템플릿 생성기
layout: home
nav_order: 1
parent: 과제-01에 대한 코멘트
permalink: /assignment-generator/comment-01
---

<div class="assignment-gen comment-gen">
  <h2>과제-01 코멘트 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="코멘트 선택">
    <button id="tab-comment-01" class="tab active" role="tab" aria-selected="true">코멘트-01</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-comment-01">
    <div class="card card-course">
      <h3>공통 정보</h3>
      <input id="classNo" class="form-control" placeholder="수강반 (예: 015)" />
    </div>

    <div class="split-grid">
      <div class="card card-writer">
        <h3>작성자 정보</h3>
        <input id="writerSerialNo" class="form-control" placeholder="연번 (예: 33)" />
        <input id="writerName" class="form-control" placeholder="이름 (예: 홍길동)" />
      </div>

      <div class="card card-target">
        <h3>코멘트 받을 학생 정보</h3>
        <input id="targetSerialNo" class="form-control" placeholder="연번 (예: 31)" />
        <input id="targetName" class="form-control" placeholder="이름 (예: 홍길서)" />
      </div>
    </div>

    <button id="btn-comment-01" class="btn">코멘트-01 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>comment-01-수강반-작성자연번-작성자이름-대상연번.md</code>
    </p>
  </div>
</div>

<script>
  function sanitize(s) {
    return (s ?? "")
      .toString()
      .trim()
      .replace(/[\\/:*?"<>|]/g, "")
      .replace(/\s+/g, "");
  }

  function comment01Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName) {
    const navOrder = String(parseInt(writerSerialNo, 10) || writerSerialNo).trim();

    return [
      "---",
      `title: ${classNo}-${writerSerialNo} ${writerName}의 코멘트 ${targetSerialNo} (과제-01)`,
      "layout: home",
      `nav_order: ${navOrder}`,
      `parent: ${classNo}-${targetSerialNo} ${targetName} (과제-01)`,
      `permalink: /asmt-01/${classNo}-${targetSerialNo}/comment-${classNo}-${writerSerialNo}`,
      "---",
      "",
      "# 과제-01 요약문 작성 연습에 대한 코멘트",
      "",
      "- 대상과제: `과제-01 요약문 작성 연습`",
      `- 코멘트를 제공하는 학생: \`${classNo}-${writerSerialNo} ${writerName}(작성자)\` `,
      `- 코멘트를 받는 학생: \`${classNo}-${targetSerialNo} ${targetName}(코멘트를 받는 학생 이름)\` `,
      "",
      "---",
      "",
      "## 핵심 코멘트",
      "",
      "이 요약문은 논문의 핵심 논제를 명확하게 전달하고 있으며, 논증적 글쓰기가 비판적 사고와 설득의 관계에서 어떤 역할을 하는지에 대한 주요 쟁점을 효과적으로 정리하고 있다. 특히, 논문의 핵심적 딜레마인 \"논증적 글쓰기가 설득을 촉진하는가, 혹은 오히려 독자의 방어적 태도를 강화하는가?\"라는 문제를 명확하게 제시하고 있으며, 논증적 글쓰기가 논리적 정합성과 감성적 설득 사이에서 균형을 찾아야 한다는 점을 강조하고 있다.",
      "",
      "그러나 \"S\"와 같은 진술에서 원문의 논지를 K로 오해하고 있는데, 이는 심리적 변화를 일으키는 원문의 '감화력' 개념과 이성적 합리적 추론 능력에 의존하는 '설득력' 개념을 혼동하고 있기 때문인 것으로 보인다. 한편, 논문의 주요 전제를 뒷받침하는 논거의 분석이 다소 부족하여, 논증의 추론적 구조가 충분히 설명되지 않았다. 예를 들어, 논증적 글쓰기가 독자의 인지적 저항을 유발할 수 있다는 주장에 대한 실증적 연구(A 연구)에 대한 설명이 비교적 간략하여, 해당 논거가 논문의 결론과 어떻게 연결되는지 명확하게 드러나지 않는다. 또한, 논문의 핵심적 추론의 전제가 되는 C가 D의 원인이 된다는 점을 누락하여 원문이 제기하는 논증 구조의 논리적 흐름을 놓치고 있다.",
      "",
      "---",
      "",
      "## 체크 포인트",
      "",
      "### 논제 진술의 명확성 및 표현  ",
      "- [ ] 요약된 논문의 주요 논제가 불명확하거나 모호하다.  ",
      "- [x] 논문의 핵심 용어를 부정확하게 사용하고 있다.  ",
      "- [ ] 논문의 핵심 논제가 명확하게 전달되었다.  ",
      "",
      "### 주요 쟁점 및 논의의 구조  ",
      "- [ ] 논문이 제기하는 쟁점이 충분히 드러나지 않았다.  ",
      "- [ ] 논문의 핵심적 딜레마나 논쟁적 요소가 불분명하게 요약되었다.  ",
      "- [x] 논문의 주요 쟁점이 명확히 정리되었다.  ",
      "",
      "### 논증의 요약 및 반론 고려  ",
      "- [ ] 논문의 핵심 논증이 충분히 전달되지 않았다.  ",
      "- [x] 논문의 주요 전제를 뒷받침하는 논거가 충분히 분석되지 않거나 누락되었다.  ",
      "- [x] 논문의 전제들과 결론 사이의 연역적 관계와 같은 추론적 구조가 충실히 분석되지 않았다.  ",
      "- [x] 논문의 다른 주요 추론적 전략이 불충분하게 서술되었다.",
      "- [ ] 논증과 반론이 충실하게 요약되었다. ",
      ""
    ].join("\\n");
  }

  function downloadText(filename, text) {
    const blob = new Blob([text], { type: "text/markdown;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");

    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    a.remove();

    URL.revokeObjectURL(url);
  }

  document.addEventListener("DOMContentLoaded", () => {
    const btn = document.getElementById("btn-comment-01");

    btn.addEventListener("click", () => {
      const classNo = sanitize(document.getElementById("classNo").value);
      const writerSerialNo = sanitize(document.getElementById("writerSerialNo").value);
      const writerName = sanitize(document.getElementById("writerName").value);
      const targetSerialNo = sanitize(document.getElementById("targetSerialNo").value);
      const targetName = sanitize(document.getElementById("targetName").value);

      if (!classNo || !writerSerialNo || !writerName || !targetSerialNo || !targetName) {
        alert("수강반, 작성자 정보, 코멘트 받을 학생 정보를 모두 입력하세요.");
        return;
      }

      const filename = `comment-01-${classNo}-${writerSerialNo}-${writerName}-${targetSerialNo}.md`;
      const content = comment01Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName);
      downloadText(filename, content);
    });
  });
</script>

<style>
  .assignment-gen input {
    width: 100%;
    box-sizing: border-box;
    margin-bottom: 0.5rem;
  }

  .assignment-gen .btn {
    margin-top: 0.75rem;
  }

  .tabs {
    display: flex;
    gap: 0.5rem;
    margin: 0.25rem 0 0.75rem;
  }

  .tab {
    border: 1px solid #d0d7de;
    border-radius: 6px;
    background: #f6f8fa;
    color: #24292f;
    padding: 0.35rem 0.75rem;
    cursor: default;
  }

  .tab.active {
    background: #fff;
    border-color: #0969da;
    color: #0969da;
    font-weight: 600;
  }

  .split-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0.75rem;
  }

  .card {
    border: 1px solid #d0d7de;
    border-radius: 8px;
    padding: 0.75rem;
    margin-bottom: 0.75rem;
  }

  .card h3 {
    margin: 0 0 0.5rem 0;
    font-size: 0.95rem;
  }

  .card-course {
    background: #f8f9fb;
  }

  .card-writer {
    background: #f3f9ff;
    border-color: #8ec5ff;
  }

  .card-target {
    background: #fff8f2;
    border-color: #ffcc9e;
  }

  @media (max-width: 768px) {
    .split-grid {
      grid-template-columns: 1fr;
    }
  }
</style>
