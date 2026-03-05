# 海外商业化项目 — 文件地图（供 Gemini 定位）

与 Cursor / Claude 共用同一项目根；Gemini 通过本目录 `.gemini/` 接入时，按下列路径读取或引用。

## 必读（执行任务前）

| 文件 | 路径 | 说明 |
|------|------|------|
| core | `../core.md` | 产品、定价、库存、试驾、品牌底线、防拆版口径 |
| ethos（企业组织核心价值观） | `../.cursor/ethos.md` | 协作原则、商业落地（好产品≠好卖、先抓一个再扩张） |
| memory | `../memory.md` | 对话沉淀、风险红线、近期偏好 |

## 按任务类型引用

| 任务 | 主要引用 |
|------|----------|
| 任意对外输出 | core + ethos + memory |
| 今日事、排优先级 | `../daily-todo.md`（Mia + Coach + Daily 讨论） |
| Hunter 文案/投放 | core + memory + `../ads-performance.md`（有数据时） |
| Buzz / Street / Dealer 详细规格与提示词 | `../.cursor/skills/cosmosebike-os/agents.md` |
| 文档存哪里、怎么命名 | `../docs/00-doc-classification.md` |

## 入口文件

- **本目录**：`.gemini/GEMINI.md` — 项目说明、工作流、任务路由、Agent 速览、品牌底线。
- **完整 Agent 规格**：`.cursor/skills/cosmosebike-os/agents.md`（与 Cursor 一致）。
