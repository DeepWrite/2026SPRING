---
title: 코멘트-03 템플릿 생성기
layout: home
nav_order: 1
parent: 과제-03에 대한 코멘트
permalink: /assignment-generator/comment-03
---

<div class="assignment-gen comment-gen">
  <h2>과제-03 코멘트 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="코멘트 선택">
    <button id="tab-comment-03" class="tab active" role="tab" aria-selected="true">코멘트-03</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-comment-03">
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

    <button id="btn-comment-03" class="btn">코멘트-03 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>comment-03-수강반-작성자연번-작성자이름-대상연번.md</code>
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

  function comment03Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName) {
    const navOrder = String(parseInt(writerSerialNo, 10) || writerSerialNo).trim();

    return [
      "---",
      `title: ${classNo}-${writerSerialNo} ${writerName}의 코멘트 ${targetSerialNo} (과제-03)`,
      "layout: home",
      `nav_order: ${navOrder}`,
      `parent: ${classNo}-${targetSerialNo} ${targetName} (과제-03)`,
      `permalink: /asmt-03/${classNo}-${targetSerialNo}/comment-${classNo}-${writerSerialNo}`,
      "---",
      "",
      "# 과제-03 단문 연습에 대한 코멘트",
      "",
      "- 대상과제: `과제-03 단문 연습`",
      `- 코멘트를 제공하는 학생: \`${classNo}-${writerSerialNo} ${writerName}(작성자)\` `,
      `- 코멘트를 받는 학생: \`${classNo}-${targetSerialNo} ${targetName}(코멘트를 받는 학생 이름)\` `,
      "",
      "---",
      "",
      "## 코멘트",
      "",
      "현재 제출된 OREO 논증문은 논리적 글쓰기를 훈련하는 데 있어 중요한 시도를 하고 있지만, OREO 모델의 요구 사항을 충분히 충족하지 못한 부분이 있다. 우선, 논제 진술(Opinion)이 명확하지 않거나 지나치게 일반적인 방식으로 제시되어, 독자가 글의 초점을 정확히 이해하기 어렵다. 또한, 이유(Reason)인 [ ]와 증거(Example)로 제시된 [ ]의 연결이 다소 느슨하며, 이유를 뒷받침하는 증거가 구체적으로 제시되지 않거나 논증과의 연관성이 명확하지 않은 경우가 있다. 예를 들어, [특정한 연구 결과]나 [사례]가 논리적 근거로 사용되지 않거나, 일반적인 주장 수준에서 머무르는 경우 논증의 설득력이 약화될 수 있습니다. 마지막으로, 의견 재진술(Opinion Restated) 부분에서 초기 논제를 효과적으로 강조하는 방식이 부족하여, 논증의 논리적 일관성이 약해질 가능성이 있다. 이를 개선하기 위해, 논제 진술을 보다 [ ]와 같은 방식으로 구체적으로 정리하고, [ ]와 같은 유형의 증거를 제시하여야 하고, 최종적으로 결론부에서 논제 진술을 보다 설득력 있게 재확인하는 방식으로 수정하는 것이 필요하다.  ",
      "",
      "---",
      "",
      "## 체크 포인트",
      "",
      "### **구성요소**",
      "- [x] 논제 진술문을 찾거나 식별하기 어렵다.",
      "- [ ] 논증 진술문을 찾거나 식별하기 어렵다.",
      "- [ ] 증거/사례 진술문을 찾거나 식별하기 어렵다.",
      "- [ ] 논제 재-진술문을 찾거나 식별하기 어렵다.",
      "- [ ] 논제, 논증, 증거/사례, 논제 재-진술문 각각 기능적으로 명확히 구분되어 진술되었다.",
      "",
      "### **논제 진술의 명확성 및 표현**  ",
      "- [x] 논제 진술문이 너무 일반적이거나 모호하여 독자가 핵심 주장을 명확히 이해하기 어렵다.  ",
      "- [x] 논제 진술문의 핵심 용어 선택이 모호하거나, 애매하거나, 잘못되었다.  ",
      "- [ ] 논제 진술문이 필자의 의도를 명확하게 전달하고 있다.  ",
      "",
      "### **논증과 증거/사례 제시**  ",
      "- [ ] 이유(Reason)가 논제와 무관하다.",
      "- [x] 이유(Reason)가 논제를 충분히 뒷받침하지 못하고 있으며, 명확한 논리적 연결이 부족하다.  ",
      "- [ ] 증거(Example)가 구체적이지 않거나, 논제 및 이유와의 관계가 명확하지 않다. ",
      "- [x] 증거(Example)가 사실적 근거보다는 개인적 견해에 의존하고 있다.  ",
      "- [ ] 이유와 증거가 논리적으로 명확하게 연결되었다.  ",
      "",
      "### **논제 재-진술**  ",
      "- [x] 논제 재-진술문이 적절하지 않거나, 단순한 반복에 그친다.   ",
      "- [ ] 논제 재-진술문이 단락 도입 부분의 논제 진술을 보다 구체화, 명료화하여, 단순한 반복을 넘어서는 역할을 수행한다.  ",
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
    const btn = document.getElementById("btn-comment-03");

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

      const filename = `comment-03-${classNo}-${writerSerialNo}-${writerName}-${targetSerialNo}.md`;
      const content = comment03Template(classNo, writerSerialNo, writerName, targetSerialNo, targetName);
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
