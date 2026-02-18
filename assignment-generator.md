---
title: 과제생성기
layout: home
nav_order: 700
permalink: /assignment-generator/
---

<div class="assignment-gen">
  <h2>과제 파일 생성기</h2>

  <input id="name" class="form-control" placeholder="이름" />
  <input id="studentId" class="form-control" placeholder="학번" />
  <input id="assignment" class="form-control" placeholder="과제명/주차 (예: HW03 또는 Week5)" />
  <textarea id="md" class="form-control" placeholder="여기에 마크다운 본문을 작성하세요."></textarea>

  <button id="btn" class="btn">.md 파일 다운로드</button>
  <p class="text-small text-grey-dk-100">파일명: {과제명}_{학번}_{이름}.md · 상단에 YAML이 자동 포함됩니다.</p>
</div>

<script>
  function sanitize(s) {
    return (s ?? "")
      .toString()
      .trim()
      .replace(/[\\/:*?"<>|]/g, "")
      .replace(/\s+/g, "_");
  }

  function todayYYYYMMDD() {
    const d = new Date();
    const y = d.getFullYear();
    const m = String(d.getMonth() + 1).padStart(2, "0");
    const day = String(d.getDate()).padStart(2, "0");
    return `${y}-${m}-${day}`;
  }

  document.addEventListener("DOMContentLoaded", () => {
    const btn = document.getElementById("btn");
    btn.addEventListener("click", () => {
      const name = document.getElementById("name").value.trim();
      const studentId = document.getElementById("studentId").value.trim();
      const assignment = document.getElementById("assignment").value.trim();
      const md = document.getElementById("md").value || "";

      if (!name || !studentId || !assignment) {
        alert("이름, 학번, 과제명을 모두 입력하세요.");
        return;
      }

      const yaml = [
        "---",
        `name: "${name}"`,
        `student_id: "${studentId}"`,
        `assignment: "${assignment}"`,
        `created_at: "${todayYYYYMMDD()}"`,
        "---",
        ""
      ].join("\n");

      const content = yaml + "\n" + md;
      const filename = `${sanitize(assignment)}_${sanitize(studentId)}_${sanitize(name)}.md`;

      const blob = new Blob([content], { type: "text/markdown;charset=utf-8" });
      const url = URL.createObjectURL(blob);

      const a = document.createElement("a");
      a.href = url;
      a.download = filename;
      document.body.appendChild(a);
      a.click();
      a.remove();

      URL.revokeObjectURL(url);
    });
  });
</script>

<style>
  /* Just the Docs 스타일에 자연스럽게 맞추는 최소 CSS */
  .assignment-gen input, .assignment-gen textarea { width: 100%; box-sizing: border-box; }
  .assignment-gen textarea { min-height: 240px; }
  .assignment-gen .btn { margin-top: 0.75rem; }
</style>
