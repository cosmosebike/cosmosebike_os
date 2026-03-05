# 把本文件夹和 Claude / Gemini 连起来

本文件夹已经可以和 **Claude Code**、**Claude.ai Project**、**Gemini Gems** 一起用：同一套 core、memory、Agent 分工，在两边都能用。

---

## 一、Claude Code（桌面/IDE）

**是什么**：用 Claude 写代码、改文件的客户端，和 Cursor 类似，用「项目文件夹 + 记忆」驱动。

**怎么连**：已经连好了。

1. 用 **Claude Code** 打开本文件夹：`文件 → Open Folder` 选 `海外商业化项目`。
2. 项目根目录下的 **`.claude/CLAUDE.md`** 会在每次新会话时自动加载，里面已经：
   - 用 `@core.md`（精准数据）、`@memory.md`（对话/产出/想法核心）拉进上下文；
   - 写明 Coach / Hunter / Buzz / Street / Dealer 的分工和路由；
   - 指向详细规格：`.cursor/skills/cosmosebike-os/agents.md`。

**之后怎么做**：和 Cursor 一样「点名」即可。写文案/话术前：先读 core（精准数据），再结合 memory（我们要什么、怎么讲）；需要时用 ads-performance.md 本周数据。

**可选**：在 Claude Code 里若提示是否允许加载 `@core.md`、`@memory.md`，选允许，这样会话里会自带这些内容。

---

## 二、Claude.ai Project（网页版项目）

**是什么**：在 claude.ai 里建的「项目」：固定 200K 上下文、自定义说明、上传的文档当知识库，所有在该项目里的对话都会带上这些设定。

**怎么连**：在网页上建一个项目，把本文件夹的「同一套知识」搬进去。

### 1. 新建项目

1. 打开 [claude.ai](https://claude.ai)，侧边栏点 **Projects**。
2. 点 **Create Project**（或「新增项目」）。
3. 项目名可填：`Cosmosebike 海外商业化` 或 `VAPOR SL 出海`。

### 2. 上传知识库（和本文件夹对齐）

把本地的这些文件**上传到该项目的知识库**（用项目里的「+」或「Upload」）：

| 本文件夹里的文件 | 用途 |
|------------------|------|
| **core.md** | 精准数据唯一来源，全员必参考 |
| **memory.md** | 对话/产出/想法核心，我们真的想要什么、怎么讲 |
| **ads-performance.md** | 有投放数据时给 Hunter/Buzz 用（可每周更新后重新上传） |

可选：把 **README.md** 或 **.cursor/skills/cosmosebike-os/agents.md** 也上传，方便在网页里查完整 Agent 规格和提示词（agents.md 较长，可按需只上传需要的段落）。

### 3. 设定项目指示（系统提示词）

在项目的 **「设定项目指示」/「Project instructions」** 里粘贴下面这段，和 Cursor / Claude Code 里的规则保持一致：

```
本项目是 Cosmosebike 海外商业化 Agent 系统。Mia；Coach[C]、Hunter[A]、Buzz[B]、Street[S]、Dealer[D]。core = 精准数据唯一来源（必参考），memory = 对话/产出/想法核心（我们真的想要什么、怎么讲）。

规则：
- 执行任何对外文案、BD 邮件、逼单话术前，先读 core（精准数据），再结合 memory（方向与声音）；有数据时用 ads-performance 本周数据。
- 先判定任务类型：Coach / Hunter-付费投放(A) / Buzz-媒体PR(B) / Street-线下(S) / Dealer-转化逼单(D)。
- Hunter 文案：有数据时用 ads-performance 本周数据；无数据时用 core + memory。
- Street/Buzz 邮件：定制化、「让他觉得你研究过他」；人工发送，不群发。
- Dealer 逼单：客户问「为什么这么贵」等时，竞品对比话术 + 试驾链接（从 core 取）。

点名示例：Hunter 出 Meta 文案、Street 写 BD 邮件、Dealer 出逼单话术+试驾链接、Forge 做视觉物料、Coach 同步核心数据。
```

保存后，在该项目里的所有新对话都会自动带上这些规则和上传的 core / memory。

### 4. 日常同步

- **core.md / memory.md 在本地改过**：把更新后的文件重新上传到 Claude.ai 项目（覆盖或替换原文件），或把改动的段落粘贴进对话。
- **ads-performance.md**：每周 Hunter A3 更新后，重新上传一份到项目，方便在网页里要文案时用「本周数据」。

---

## 三、Gemini Gems（网页）

**是什么**：在 [gemini.google.com](https://gemini.google.com) 里建的**自定义助手（Gem）**：固定说明 + 最多约 10 个知识文件，对话里自动带这些设定。免费账号即可创建。

**怎么连**：建一个 Gem，把本文件夹的 core / memory 当「知识」上传，说明里写同一套规则。

### 1. 新建 Gem

1. 打开 [gemini.google.com](https://gemini.google.com)（或 Gemini App），进入 **Gems** / **Gem 管理器**。
2. 点 **New Gem**（新建 Gem）。
3. 名称可填：`Cosmosebike 海外商业化` 或 `VAPOR SL 出海助手`。

### 2. 填写说明（Instructions）

在 **Instructions** / **说明** 里粘贴下面这段（与 Cursor / Claude 规则一致）：

```
你是 Cosmosebike 海外商业化 Agent 系统的助手。Mia；Coach[C]、Hunter[A]、Buzz[B]、Street[S]、Dealer[D]。core = 精准数据唯一来源（必参考），memory = 对话/产出/想法核心（我们真的想要什么、怎么讲）。

规则：
- 执行任何对外文案、BD 邮件、逼单话术前，先根据已上传的 core（精准数据）回答，再结合 memory（方向与声音）；必要时引用 ads-performance 本周数据。
- 先判定任务类型：Coach / Hunter-付费投放(A) / Buzz-媒体PR(B) / Street-线下(S) / Dealer-转化逼单(D)。
- Hunter 文案：有数据时用 ads-performance 本周数据；无数据时用 core + memory。
- Street/Buzz 邮件：定制化、「让他觉得你研究过他」；人工发送，不群发。
- Dealer 逼单：客户问「为什么这么贵」等时，竞品对比话术 + 试驾链接（从 core 取）。

点名示例：Hunter 出 Meta 文案、Street 写 BD 邮件、Dealer 出逼单话术+试驾链接、Forge 做视觉物料、Coach 同步核心数据。
```

### 3. 上传知识（Knowledge）

在 **Knowledge** / **知识** 里上传本文件夹的这几个文件（Gem 一般支持约 10 个文件，优先传核心）：

| 本文件夹里的文件 | 用途 |
|------------------|------|
| **core.md** | 精准数据唯一来源，全员必参考 |
| **memory.md** | 对话/产出/想法核心，我们真的想要什么、怎么讲 |
| **ads-performance.md** | 有投放数据时给 Hunter/Buzz 用（可定期更新后重新上传） |

可选：**README.md** 或 **agents.md** 的摘要/关键段落（agents 全文较长，可按需截取）。

### 4. 日常同步

- **core.md / memory.md 在本地改过**：在 Gem 里更新知识文件（替换或重新上传），或把改动贴进当次对话。
- **ads-performance.md**：每周 A3 更新后，在 Gem 里替换该文件，方便要文案时用「本周数据」。

---

## 四、怎么选

| 场景 | 更适合 |
|------|--------|
| 改本仓库里的文件、跟 Cursor 一起用、要引用 agents.md 里完整提示词 | **Claude Code**（打开本文件夹） |
| 在网页/手机聊、用 Claude、快速要文案/话术/邮件 | **Claude.ai Project**（上传 core + memory + 项目指示） |
| 在网页/手机聊、用 Gemini、快速要文案/话术/邮件 | **Gemini Gems**（建 Gem，上传 core + memory + 说明） |

**core**（精准数据、最新版本）和 **memory**（对话/产出/想法核心）都维护在本文件夹。Claude Code 用 `.claude/CLAUDE.md` 直接读；Claude.ai Project 和 Gemini Gems 用你上传的 core + memory 副本 + 说明/指示对齐同一套规则和知识。
