# Claude Project（Cosmosebike-OS Agent）— 一段话 + 传哪些文件

## 一、粘贴到「Set project instructions」里的一段话

复制下面整段，贴进 Claude 的 **Set project instructions** 输入框，然后点 **Save instructions**。

---

**Cosmosebike 海外商业化 OS。每次会话先读本项目的 CLAUDE.md（或已挂载的 .claude/CLAUDE.md）。执行任何对外文案、BD 邮件、逼单话术前，按顺序读：core.md（精准数据）→ ethos.md（企业组织核心价值观）→ memory.md（近期偏好）。任务类型：Coach(C)/Hunter(A)/Buzz(B)/Street(S)/Dealer(D)/Daily；具体谁做什么见 CLAUDE.md 任务表。品牌与数字以 core 为准，不编造；详细 Agent 规格与提示词见 agents.md。今日事与 Mia、Coach 讨论后由 daily-todo 排优先级，见 daily-todo.md。**

---

## 二、传哪些文件（挂到本项目里）

在 **Cosmosebike-OS Agent** 这个 Project 里，把下面这些文件**挂上去**（Add file / 添加文件），这样 Claude 才能按「先读 CLAUDE.md，再按需读 core / ethos / memory」执行。

| 优先级 | 文件 | 说明 |
|--------|------|------|
| 必传 | **core.md** | 产品、定价、库存、试驾、品牌底线；所有数字与口径的唯一来源 |
| 必传 | **memory.md** | 对话沉淀、风险红线、近期偏好 |
| 必传 | **.cursor/ethos.md** 或 项目内命名为 **ethos.md** | 企业组织核心价值观（宗旨）；协作与商业落地原则 |
| 必传 | **.claude/CLAUDE.md** 或 项目内命名为 **CLAUDE.md** | 项目说明、必读顺序、任务类型与路由、品牌底线摘要 |
| 必传 | **daily-todo.md** | 今日事；与 Mia、Coach 讨论后由 Daily 排优先级 |
| 建议传 | **.cursor/skills/cosmosebike-os/agents.md** 或 **agents.md** | 各 Agent 详细规格与可复制提示词（执行具体子任务时用） |
| 可选 | **ads-performance.md** | 投放周数据；Hunter 出文案时有数据时用 |

**若 Project 只能传「单层文件」、不能保留文件夹**：把上述文件都传到同一层，在「一段话」里把 `ethos.md`、`CLAUDE.md`、`agents.md`、`daily-todo.md` 当成「本项目中同名文件」即可，不必写路径。

---

## 三、操作顺序建议

1. 在 Project 里 **Add file(s)**，把上面「必传」的 5 个文件都挂上（core、memory、ethos、CLAUDE、daily-todo），建议再挂 agents.md。
2. 打开 **Set project instructions**，把「一、一段话」整段粘贴进去，点 **Save instructions**。
3. 之后每次改过 core / memory / ethos / daily-todo / agents 后，在 Project 里**更新对应文件**（替换为最新版），Instructions 一般不用改。
