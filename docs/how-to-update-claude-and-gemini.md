# 如何给 Claude 和 Gemini 的 Agent 做更新

Claude 和 Gemini 的用法不一样：**Claude 在 Projects 里**，**Gemini 在 GEM 里**。本页说明两边各自怎么更新，才能用到最新的 core、ethos、memory、Agent 规格和 Daily。

---

## 一、今天（0305）改动了什么（检查清单）

| 类别 | 改动 |
|------|------|
| **文件与命名** | 宗旨改名为 **ethos**：`.cursor/cosmosebike-ethos.md` → `.cursor/ethos.md`（企业组织核心价值观）；所有引用已统一 |
| **必读顺序** | 全员：**core → ethos → memory**；Claude / Cursor / Gemini 文档已统一 |
| **Daily** | 新增 `daily-todo.md` + Daily 角色：常读 core/memory/ethos，与 Mia、Coach 讨论排优先级；不指挥 Agent；管理型、批判性、对齐核心价值 |
| **Coach** | 明确 Mia 与 Coach 角色差距；Coach 必备：成熟商业操盘、极懂 AI 设计、批判性深刻、语言精炼无比喻 |
| **文档** | `.claude/CLAUDE.md`、`.cursor/rules/workflow.mdc`、`.cursor/skills/.../agents.md`、`.gemini/GEMINI.md`、`.gemini/FILE-MAP.md`、`memory.md` 均已更新到上述约定 |

**关键文件（改完要同步给两边）**：`core.md`、`memory.md`、`.cursor/ethos.md`、`daily-todo.md`、`.cursor/skills/cosmosebike-os/agents.md`、`.claude/CLAUDE.md`、`.gemini/GEMINI.md`、`.gemini/FILE-MAP.md`。

---

## 二、Claude（Projects）怎么更新

Claude 这边通常是「**挂一个项目/文件夹**」，从项目里读文件当上下文。

1. **保存并同步本仓库**  
   确保今天改过的文件都已保存；若用 Git，可 commit + push，方便在其他地方拉取。

2. **在 Claude 的 Projects 里刷新/重新挂载**  
   - 若 Claude 是**按「项目目录」打开**的（例如 Cursor 里用 Claude、或 Claude Code 打开本文件夹）：  
     直接在该目录下继续用即可，改过的文件会自动被读到；**无需额外步骤**，下次对话就是新内容。  
   - 若 Claude 是**在网页版或别处「Projects」里创建的项目**：  
     在对应 Project 设置里，**重新选择或刷新「附加的文件/文件夹」**，把本仓库（或至少包含 `.claude/`、`core.md`、`memory.md`、`.cursor/ethos.md`、`daily-todo.md` 的目录）再次挂上去，这样 Claude 会用到最新版。

3. **确认 Claude 先读的入口**  
   Claude 的 Project 说明/系统提示里，最好有一句「**先读本项目下的 `.claude/CLAUDE.md`**」，这样每次会话都会按 core → ethos → memory 和任务类型来用。若没有，可在 Project 的 Custom Instructions 或 System Prompt 里加上：  
   「本项目为 Cosmosebike 海外商业化；每次会话先读 `.claude/CLAUDE.md`，再按其中说明读 core、ethos、memory。」

**小结（Claude）**：改完本仓库 → 在 Projects 里用「当前文件夹」则自动最新；若是「上传/挂载的项目」，需重新挂载或刷新一次，并保证入口指向 `.claude/CLAUDE.md`。

---

## 三、Gemini（GEM）怎么更新

GEM 这边通常是「**在 GEM 里配置 Agent**」，可能用「上传文件」或「连到某个知识库/驱动器」的方式喂上下文。

1. **确认 GEM 能拿到最新文件**  
   - 若 GEM 是**绑定本机/云盘里这个项目文件夹**：  
     改完保存后，在 GEM 里若有「重新扫描/同步」或「刷新知识库」，点一次即可。  
   - 若 GEM 是**每次手动上传文件**：  
     每次你改过 core、ethos、memory、agents、daily-todo 或 .gemini 下的说明后，到 GEM 里**重新上传**这些文件，或上传整个 `.gemini/` + 项目根下 `core.md`、`memory.md`、`.cursor/ethos.md`、`daily-todo.md`，并**替换**旧版，避免 Agent 还在用旧说明。

2. **把「入口」指给 Gemini**  
   在 GEM 的 Agent 设置里（System instruction / 知识 / 指令）：  
   - 写一句：**先读本项目中的 `.gemini/GEMINI.md`**（若你上传的是整个仓库，路径就是项目根下的 `.gemini/GEMINI.md`）；  
   - 或把 `GEMINI.md` 的**全文**贴进 GEM 的 System Instruction，让 Agent 每次都以这份为入口。  
   这样 Gemini 会按 GEMINI.md 里的「必读 core → ethos → memory」「任务类型与路由」「Daily/Coach 角色」来工作。

3. **路径要一致**  
   若 GEM 里文件结构是「扁平上传」的（没有文件夹），在 GEMINI.md/FILE-MAP 里写的路径（如 `../core.md`）可能对不上。两种做法：  
   - **要么**在 GEM 里保持「和本仓库一样的文件夹结构」再上传；  
   - **要么**在 GEM 的说明里写清楚「core = 你上传的 core.md」「ethos = 你上传的 ethos.md」等，用「文件名」而不是路径。

**小结（Gemini）**：改完本仓库 → 在 GEM 里刷新知识库或重新上传关键文件；Agent 的入口设为 `.gemini/GEMINI.md` 或其内容；路径与 GEM 实际文件结构一致。

---

## 四、以后每次改完 core / ethos / memory / agents 后

| 平台 | 你要做的 |
|------|----------|
| **Claude（Projects）** | 若对话已绑定本文件夹：无需操作。若 Project 是单独挂载的：改完保存后，在 Project 设置里刷新/重新挂载该文件夹一次。 |
| **Gemini（GEM）** | 若 GEM 连的是同一仓库/文件夹：在 GEM 里点「同步/刷新」。若是上传文件：重新上传改过的文件并替换旧版，保证入口仍是 GEMINI.md（或其最新内容）。 |

---

*有新的更新方式（例如 Claude/GEM 改版）时，可把本页补充一版「更新步骤」贴回这里。*
