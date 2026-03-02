---
title: 과제-03 단문 연습 템플릿 생성기
layout: home
nav_order: 1
parent: 과제-03 단문 연습
permalink: /assignment-generator/asmt-03
---

<div class="assignment-gen">
  <h2>과제-03 단문 연습 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="과제 선택">
    <button id="tab-asmt-03" class="tab active" role="tab" aria-selected="true">과제-03</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-asmt-03">
    <input id="name" class="form-control" placeholder="이름 (예: 홍길동)" />
    <input id="classNo" class="form-control" placeholder="수강반 (예: 015)" />
    <input id="serialNo" class="form-control" placeholder="연번 (예: 33)" />

    <button id="btn-asmt-03" class="btn">과제-03 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>asmt-03-수강반-연번-이름.md</code>
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

  function asmt03Template(name, classNo, serialNo) {
    const navOrder = String(parseInt(serialNo, 10) || serialNo).trim();

    return [
      "---",
      `title: ${classNo}-${serialNo} ${name} (과제-03)`,
      "layout: home",
      `nav_order: ${navOrder}`,
      "parent: 과제-03 단문 연습",
      `permalink: /asmt-03/${classNo}-${serialNo}`,
      "---",
      "",
      `# 과제-03 단문 연습 ${classNo}-${serialNo} ${name} `,
      "",
      "## 단문",
      "",
      "로크의 노동 혼합 이론이 발생시키는 난제 중 하나는 노동이 전유의 정당성을 부여한다면 노동이 가치를 감소시키는 경우에도 전유가 정당화될 수 있는데, 이는 의문이라는 것이다. 이와 같은 난제는, 노동이 단순히 물리적 개입을 의미하는 것이 아니라 가치를 창출하는 방식으로 수행되어야 한다는 조건을 추가함으로써 해소될 수 있다. 왜냐하면 개인이 자신의 노동을 결합함으로써 자연물을 전유한다고 볼 수 있는 실체적 이유는 노동 결합이 해당 대상물의 유용성 증가 때문이라고 보아야 하기 때문이다. 즉, 대상물에 대한 전유를 정당화하는 노동은 단순한 신체적 행위가 아니라, 가치를 증가시키는 행위여야 한다. 만약 노동이 가치를 훼손하는 방식(예: 흙을 오염시키거나 나무를 썩게 만드는 것)으로 수행된다면, 이는 원래의 자연 상태보다도 자원을 비효율적으로 만드는 것이므로 전유를 정당화하지 못한다. 예를 들어, 한 사람이 숲에서 나무를 베어 집을 짓는다면, 그는 자신의 노동을 통해 원자재를 유용한 구조물로 변형했기 때문에 전유가 정당화된다. 그러나, 누군가가 해안의 조개껍질에 자신만의 색깔을 칠하고는 전체 해변을 소유하겠다고 주장한다면, 이는 조개껍질의 본래 가치에 대한 긍정적 기여 없이 단순한 신체적 개입만 있었을 뿐이므로 정당한 전유가 아니다. 따라서, 로크의 노동 혼합 이론에서 정당한 전유를 결정하는 핵심 기준은 단순한 물리적 노동이 아니라, 노동이 해당 자원의 가치를 증가시키는 방식으로 수행되었는가로 이해해야 한다. 이를 통해 노동이 자원 파괴나 낭비로 이어지는 상황에서도 단순한 개입만으로 소유권이 정당화된다는 의문을 해소할 수 있다.",
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
    const btn = document.getElementById("btn-asmt-03");

    btn.addEventListener("click", () => {
      const name = sanitize(document.getElementById("name").value);
      const classNo = sanitize(document.getElementById("classNo").value);
      const serialNo = sanitize(document.getElementById("serialNo").value);

      if (!name || !classNo || !serialNo) {
        alert("이름, 수강반, 연번을 모두 입력하세요.");
        return;
      }

      const filename = `asmt-03-${classNo}-${serialNo}-${name}.md`;
      const content = asmt03Template(name, classNo, serialNo);
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
</style>
