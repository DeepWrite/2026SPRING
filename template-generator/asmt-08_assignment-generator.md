---
title: 과제-08 기말과제 초고 템플릿 생성기
layout: home
nav_order: 1
parent: 과제-08 기말과제 초고 작성하기
permalink: /assignment-generator/asmt-08
---

<div class="assignment-gen">
  <h2>과제-08 기말과제 초고 작성하기 템플릿 생성기</h2>

  <div class="tabs" role="tablist" aria-label="과제 선택">
    <button id="tab-asmt-08" class="tab active" role="tab" aria-selected="true">과제-08</button>
  </div>

  <div class="panel" role="tabpanel" aria-labelledby="tab-asmt-08">
    <input id="name" class="form-control" placeholder="이름 (예: 홍길동)" />
    <input id="classNo" class="form-control" placeholder="수강반 (예: 015)" />
    <input id="serialNo" class="form-control" placeholder="연번 (예: 33)" />

    <button id="btn-asmt-08" class="btn">과제-08 템플릿 다운로드</button>
    <p class="text-small text-grey-dk-100">
      파일명: <code>asmt-08-수강반-연번-이름.md</code>
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

  async function loadAssignmentTemplate(templateName, name, classNo, serialNo) {
    const navOrder = String(parseInt(serialNo, 10) || serialNo).trim();
    const response = await fetch(`{{ site.baseurl }}/assets/templates/${templateName}.txt`, {
      cache: "no-store",
    });

    if (!response.ok) {
      throw new Error(`템플릿 파일을 불러오지 못했습니다: ${response.status}`);
    }

    return (await response.text())
      .replaceAll("__YAML_FRONT_MATTER_DELIMITER__", "---")
      .replaceAll("__CLASS_NO__", classNo)
      .replaceAll("__SERIAL_NO__", serialNo)
      .replaceAll("__NAME__", name)
      .replaceAll("__NAV_ORDER__", navOrder);
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
    const btn = document.getElementById("btn-asmt-08");

    btn.addEventListener("click", async () => {
      const name = sanitize(document.getElementById("name").value);
      const classNo = sanitize(document.getElementById("classNo").value);
      const serialNo = sanitize(document.getElementById("serialNo").value);

      if (!name || !classNo || !serialNo) {
        alert("이름, 수강반, 연번을 모두 입력하세요.");
        return;
      }

      const filename = `asmt-08-${classNo}-${serialNo}-${name}.md`;
      try {
        const content = await loadAssignmentTemplate("asmt-08-template", name, classNo, serialNo);
        downloadText(filename, content);
      } catch (error) {
        console.error(error);
        alert("템플릿 파일을 생성하지 못했습니다. 잠시 후 다시 시도하세요.");
      }
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
