---
title: 과제-06 (조별) 개조식 요약문 템플릿 생성기
layout: home
nav_order: 1
parent: 과제-06 (조별) 개조식 요약문 작성
permalink: /assignment-generator/asmt-06
---

<div class="assignment-gen">
  <h2>과제-06 (조별) 개조식 요약문 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="과제 선택">
    <button id="tab-asmt-06" class="tab active" role="tab" aria-selected="true">과제-06</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-asmt-06">
    <input id="name" class="form-control" placeholder="이름 (예: 홍길동)" />
    <input id="classNo" class="form-control" placeholder="수강반 (예: 015)" />
    <input id="serialNo" class="form-control" placeholder="연번 (예: 33)" />

    <input
      id="teamNo"
      class="form-control"
      type="number"
      min="1"
      max="5"
      step="1"
      placeholder="조 번호 (1~5)"
    />

    <input
      id="lit1"
      class="form-control"
      maxlength="10"
      placeholder="문헌1 (띄어쓰기 포함 10글자 이내)"
    />
    <input
      id="lit2"
      class="form-control"
      maxlength="10"
      placeholder="문헌2 (띄어쓰기 포함 10글자 이내)"
    />

    <button id="btn-asmt-06" class="btn">과제-06 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>asmt-06-수강반-연번-이름-1조.md</code>
    </p>
  </div>
</div>

<script>
  function sanitizeCommon(s) {
    return (s ?? "")
      .toString()
      .trim()
      .replace(/[\\/:*?"<>|]/g, "");
  }

  function sanitizeCompact(s) {
    return sanitizeCommon(s).replace(/\s+/g, "");
  }

  function sanitizeLit(s) {
    return sanitizeCommon(s).slice(0, 10);
  }

  function padTeamNo(teamNo) {
    return String(teamNo).padStart(3, "0");
  }

  function asmt06Template(name, classNo, serialNo, teamNo, lit1, lit2) {
    const navOrder = String(parseInt(serialNo, 10) || serialNo).trim();
    const teamNoPadded = padTeamNo(teamNo);

    return [
      "---",
      `title: (${classNo}-${serialNo} ${name}) ${lit1}/${lit2}`,
      "layout: home",
      `nav_order: ${navOrder}`,
      `parent: 과제-06 (${teamNo}조) 개조식 요약문`,
      `permalink: /asmt-06/${teamNoPadded}/${classNo}-${serialNo}`,
      "---",
      "",
      `# 과제-06 (조별) 개조식 요약문 작성 ${classNo}-${serialNo} ${name} `,
      "",
      "## 소속 조/선정 주제",
      "",
      `- 소속 조: ${teamNo}조`,
      "- 선정된 주제: ",
      "- 주제에 대한 설명(1문장): ",
      "- 본인이 해당 문헌을 담당하게 된 배경에 대한 간략한 설명(문헌별 1문장):  ",
      "  - 문헌1: ",
      "  - 문헌2: ",
      "",
      "## 1. 『The Managed Heart』 - Arlie Hochschild (1983)",
      "",
      "- **서지정보**: Hochschild, A. R. (1983). *The managed heart: Commercialization of human feeling*. University of California Press.",
      "- **쟁점**: 감정 표현은 자율적 개인의 정서 발현인가, 아니면 조직에 의해 규율되는 수행 행위인가?  ",
      "- **딜레마**: 감정이 자율적이라면 조직이 훈련할 수 있는 이유는 무엇인가? / 반대로, 감정이 조직의 산물이라면 진정성(authenticity)은 어떻게 가능한가?  ",
      "- **주장**: 감정노동은 표면 연기와 내면 조절로 구성되며, 후자의 경우에는 감정 규칙에 부응하면서도 자아의 진정성을 경험할 수 있는 가능성이 존재한다.  ",
      "- **논증 방식**: Hochschild는 기존의 노동 개념이 신체적 활동이나 기술적 작업에만 초점을 맞추고 있어, 감정을 조절하고 표현하는 행위도 일종의 노동이라는 점을 설명하지 못한다고 비판한다. 이에 따라 그녀는 감정노동이라는 새로운 개념을 이론적으로 도입하면서, 감정을 연기하는 방식에 따라 두 가지 유형-겉으로만 감정을 표현하는 ‘표면 연기’와 실제로 그 감정을 느끼도록 자신을 조절하는 ‘내면 조절’-을 구분한다. 이 구분은 감정노동이 단순한 역할 연기를 넘어서 자아의 경험과 밀접하게 연결되어 있다는 점을 보여주는 핵심 기준이 된다. Hochschild는 이러한 이론적 구분이 실제 노동 현장에서 어떻게 나타나는지를 보여주기 위해, 델타항공 승무원 30명을 인터뷰한 결과(그중 27명이 감정 조절이 업무의 일부라고 응답함, pp. 35-44)와 직종별 감정노동 강도를 비교한 통계 자료(p. 53)를 활용한다. 이러한 경험적 자료들을 바탕으로, 그녀는 표면 연기와 내면 조절이라는 이론이 단지 개념적인 구분이 아니라 실제로 유효하다는 점을 **귀납적으로** 정당화한다. 나아가 내면 조절, 즉 ‘deep acting’을 통해 감정노동자가 자아를 소외당하지 않고 오히려 통합된 방식으로 경험할 수 있다는 주장은, 개념의 설명력과 실제 사례 간의 일치 가능성을 서로 조정하며 정합성을 확보해 나가는 반성적 평형의 구조를 통해 이론적으로 뒷받침된다.",
      "- **기타**: ",
      "",
      "---",
      "",
      "## 2. 『Discipline and Punish』 - Michel Foucault (1975)",
      "",
      "- **서지정보**: Foucault, M. (1975). *Discipline and punish: The birth of the prison* (A. Sheridan, Trans.). Vintage Books.",
      "- **쟁점**: 근대의 권력은 인간을 해방시키는가, 아니면 더욱 정교한 감시와 규율을 통해 주체를 형성하는가?  ",
      "- **딜레마**: 권력이 억압이 아니라면 어떻게 통제 기능을 수행하는가? / 억압이라면 왜 개인은 자발적으로 규율에 따르는가?  ",
      "- **주장**: 권력은 더 이상 외적 강제가 아니라, 감시와 규율을 통해 개인 내부에 작동하며 주체를 ‘생산’하는 방식으로 전환되었다.  ",
      "- **논증 방식**: Foucault는 역사적 사례 분석을 통해, Bentham의 파놉티콘 감옥 설계(p. 200-203)가 단지 감옥뿐 아니라 병원, 학교, 군대 등 제도 전반에 적용될 수 있는 감시 구조임을 **유비 추론**을 통해 제시한다. 이때 유비는 감시 구조의 원형적 기능이 **다양한 제도에서 유사하게 작동하는 구조적 조건**을 밝히며 정당화된다. 또한 \"권력은 억압이 아니라 생산\"이라는 논제는 단순한 용어 전복이 아닌, **기존 권력 개념의 기능적 재정의**를 통해 이론적으로 정당화된다. 이는 전통 개념이 현실 권력작용을 설명하지 못한다는 분석에 근거한 것이다.",
      "- **기타**: ",
      "",
      "## 3. 제목 (연도)",
      "",
      "- **서지정보**: ",
      "- **쟁점**: ",
      "- **딜레마**: ",
      "- **주장**:   ",
      "- **논증 방식**: ",
      "- **기타**: ",
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
    const btn = document.getElementById("btn-asmt-06");

    btn.addEventListener("click", () => {
      const name = sanitizeCompact(document.getElementById("name").value);
      const classNo = sanitizeCompact(document.getElementById("classNo").value);
      const serialNo = sanitizeCompact(document.getElementById("serialNo").value);
      const teamNoRaw = sanitizeCompact(document.getElementById("teamNo").value);
      const lit1 = sanitizeLit(document.getElementById("lit1").value);
      const lit2 = sanitizeLit(document.getElementById("lit2").value);

      if (!name || !classNo || !serialNo || !teamNoRaw || !lit1 || !lit2) {
        alert("이름, 수강반, 연번, 조 번호, 문헌1, 문헌2를 모두 입력하세요.");
        return;
      }

      if (!/^[1-5]$/.test(teamNoRaw)) {
        alert("조 번호는 1부터 5 사이의 숫자만 입력하세요.");
        return;
      }

      const teamNo = parseInt(teamNoRaw, 10);
      const filename = `asmt-06-${classNo}-${serialNo}-${name}-${teamNo}조.md`;
      const content = asmt06Template(name, classNo, serialNo, teamNo, lit1, lit2);
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
