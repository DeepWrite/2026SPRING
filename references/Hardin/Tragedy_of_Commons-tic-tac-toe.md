---
title: 틱택토 (Tic-Tac-Toe)
layout: home
nav_order: 1
parent: The Tragedy of the Commons (1968)(번역본)
permalink: /references/Hardin/OriginalText_kor/Tic-Tac-Toe/
---

## 틱택토 (Tic-Tac-Toe)

<div style="text-align: center;">
  <img src="{{ site.baseurl }}/assets/images/tic-tac-toe-02.jpeg" width="60%" height="auto">
</div> <br>

**틱택토(tic-tac-toe)**는 두 사람이 번갈아가며 표시를 놓아 **3×3 격자판에서 한 줄을 먼저 완성하는 사람이 이기는 매우 간단한 전략 게임**입니다. 영어권에서는 **Noughts and Crosses**라고도 부릅니다.

---

# 1. 기본 규칙

1. **게임판**

   * 3×3 격자(총 9칸)로 이루어진 판을 사용합니다.

2. **플레이어 표시**

   * 한 플레이어는 **X**
   * 다른 플레이어는 **O**

3. **차례**

   * 보통 **X가 먼저 시작**합니다.
   * 두 사람이 번갈아 빈 칸에 자신의 표시를 합니다.

4. **승리 조건**
   다음 중 하나를 먼저 만들면 승리합니다.

   * 가로 3칸
   * 세로 3칸
   * 대각선 3칸

5. **무승부**

   * 9칸이 모두 채워졌지만 어느 쪽도 3칸을 만들지 못하면 **무승부(draw)**입니다.

---

# 2. 간단한 예

예를 들어 다음과 같이 X가 대각선을 완성하면 승리합니다.

```
X | O | O
---------
O | X |  
---------
  |   | X
```

---

# 3. 전략적 특징

틱택토는 단순하지만 **게임이론적으로 매우 유명한 게임**입니다.

핵심 특징:

* **완전 정보 게임 (perfect information game)**
* **유한 게임 (finite game)**
* 두 플레이어가 모두 **최적 전략(optimal strategy)**을 사용하면 **항상 무승부**가 됩니다.

그래서 인공지능, 알고리즘, 논리학 수업에서 다음을 설명할 때 자주 사용됩니다.

* **minimax 알고리즘**
* **게임 트리(game tree)**
* **완전 탐색 (brute-force search)**

---

# 4. 역사

* 고대 **로마 시대 게임 "Terni Lapilli"**와 유사한 것으로 알려져 있습니다.
* 19세기 영국에서 **noughts and crosses**라는 이름으로 대중화되었습니다.
* 지금은 **논리적 전략 게임의 가장 기본적인 예**로 사용됩니다.

---

✔️ 요약
**틱택토는 3×3 격자에서 X와 O를 번갈아 놓아 3개를 먼저 연결하는 사람이 이기는 간단한 전략 게임이며, 최적 전략에서는 항상 무승부가 되는 완전 정보 게임이다.**
