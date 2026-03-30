import re
from itertools import count

def replace_to_footnote_defs(text, max_notes=50):
    # [숫자 ]{.number} 패턴 (공백 허용)
    pat = re.compile(r"\[\s*\d+\s*\]\{\.number\}")
    c = count(1)

    def repl(m):
        i = next(c)
        if i > max_notes:
            # 50개 초과는 원본 그대로 남김 (원하면 계속 번호 매기게 수정 가능)
            return m.group(0)
        return f"[^{i}]: "

    return pat.sub(repl, text)

def process_file(input_path, output_path, max_notes=50):
    # 파일 읽기
    with open(input_path, "r", encoding="utf-8") as f:
        text = f.read()
    # 변환
    new_text = replace_to_footnote_defs(text, max_notes=max_notes)
    # 결과 저장
    with open(output_path, "w", encoding="utf-8") as f:
        f.write(new_text)
    print(f"변환 완료: {output_path}")

# 사용 예시
if __name__ == "__main__":
    process_file("coase-natureoffirm.md", "output.md", max_notes=50)