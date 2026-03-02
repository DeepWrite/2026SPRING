---
title: 코멘트-02 생성기
layout: home
nav_order: 1
parent: 과제-02에 대한 코멘트
permalink: /assignment-generator/comment-02
---

<div class="assignment-gen comment-gen">
  <h2>과제-02 코멘트 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="코멘트 선택">
    <button id="tab-comment-02" class="tab active" role="tab" aria-selected="true">코멘트-02</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-comment-02">
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

    <button id="btn-comment-02" class="btn">코멘트-02 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>comment-02-수강반-작성자연번-작성자이름-대상연번.md</code>
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

  function comment02Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName) {
    const navOrder = String(parseInt(writerSerialNo, 10) || writerSerialNo).trim();

    return [
      "---",
      `title: ${classNo}-${writerSerialNo} ${writerName}의 코멘트 ${targetSerialNo} (과제-02)`,
      "layout: home",
      `nav_order: ${navOrder}`,
      `parent: ${classNo}-${targetSerialNo} ${targetName} (과제-02)`,
      `permalink: /asmt-03/${classNo}-${targetSerialNo}/comment-${classNo}-${writerSerialNo}`,
      "---",
      "",
      "# 과제-02 쟁점과 딜레마 분석에 대한 코멘트",
      "",
      "- 대상과제: `과제-02 쟁점과 딜레마 분석`",
      `- 코멘트를 제공하는 학생: \`${classNo}-${writerSerialNo} ${writerName}(작성자)\` `,
      `- 코멘트를 받는 학생: \`${classNo}-${targetSerialNo} ${targetName}(코멘트를 받는 학생 이름)\` `,
      "",
      "---",
      "",
      "## 코멘트",
      "",
      "제출된 쟁점과 딜레마 분석 과제는 복잡한 학술적 논쟁을 다루려는 시도를 보여주며, 본격적인 논증문 작성을 위한 사전 설계로서 의미 있는 출발점을 제공하고 있다. 다만, 핵심 쟁점의 제시는 다소 포괄적으로 구성되어 있어 독자가 문제의 초점을 정확히 파악하기 어려운 부분이 있다. 논의가 이루어지는 학계의 논점이 보다 명확히 규정되었을 때, 글의 방향성도 더욱 선명해질 수 있다. 또한, 선택한 딜레마가 개념적으로는 흥미롭지만, 제시된 관련 학자들의 입장과의 연결이 다소 느슨한 인상을 주며, 각 학자들의 주장 간의 구체적 긴장관계나 반론의 구조가 분명하게 드러나지 않는 점이 아쉽다. 이를 보완하기 위해, 중심이 되는 학자의 주장을 하나의 기준점으로 삼고, 나머지 입장들을 그에 대한 **지지, 반박, 보완**의 관점에서 재배열하는 방식이 도움이 될 수 있다. 마지막으로, 작성자의 문제의식(초기 주장)은 타당하지만, 그것이 앞서 제시된 쟁점 및 딜레마와 논리적으로 어떤 방식으로 연결되는지를 보다 명확히 설명할 필요가 있다. 전반적으로 각 요소들은 흥미롭고 가치 있는 자료이지만, 이를 **하나의 논리적 흐름으로 엮어내는 작업**이 추가로 요구된다. ",
      "",
      "---",
      "",
      "## 체크 포인트",
      "",
      "### **기초 구조 점검**",
      "- [x] 핵심 쟁점(Core Issue)이 모호하거나 지나치게 넓어서, 문제 설정이 분명하지 않다.",
      "- [ ] 쟁점을 둘러싼 실제 학술 논쟁이 구체적인 문헌과 함께 잘 제시되어 있다.",
      "- [x] 딜레마의 구조가 두 주장 간의 긴장 또는 선택의 문제로 명확하게 드러나지 않는다.",
      "- [ ] 학자들의 입장이 핵심 쟁점과 딜레마에 밀접하게 연결되어 있다.",
      "- [x] 관련 학자들의 입장 정리가 단순 나열에 그치고 있으며, 논쟁적 구조(찬반, 대비 등)가 드러나지 않는다.",
      "",
      "### **작성자의 문제의식 및 초기 주장**",
      "- [ ] 작성자의 문제의식이 쟁점과 딜레마를 반영하여 논리적으로 연결되어 있다.",
      "- [x] 작성자의 초기 주장이 제시되어 있으나, 그것이 본문에서 제시된 학술 논쟁과 어떤 방식으로 연결되는지가 불분명하다.",
      "- [ ] 초기 주장이 학자들의 논의 사이에서 스스로의 입장을 잘 구성하고 있다.",
      "",
      "### **개선 방향 제안**",
      "- [x] 핵심 쟁점을 좁고 구체적으로 설정하여, 실제 논증문에서 다룰 문제를 명확히 할 필요가 있다.",
      "- [x] 학자 간의 대비되는 입장을 중심으로 논쟁적 구조를 선명히 정리하는 것이 좋다.",
      "- [ ] 작성자의 입장을 뒷받침할 수 있는 논문·문헌을 구체적으로 더 보강할 수 있다.",
      "- [ ] 서론이 될 수 있는 문제 배경 서술을 간결하게 재구성해보는 것도 도움이 될 것이다.",
      ""
    ].join("\n");
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
    const btn = document.getElementById("btn-comment-02");

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

      const filename = `comment-02-${classNo}-${writerSerialNo}-${writerName}-${targetSerialNo}.md`;
      const content = comment02Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName);
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
