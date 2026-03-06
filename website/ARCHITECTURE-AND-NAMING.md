# 网站架构 · 十台车项目命名 · 基础文档

**说明**：**B4（Forge）才是 UI/视觉**；本文给 Mia（欧洲市场负责人、日常派活）和 D4 对照用；D4 按此做站，内容与策略以 core、Buzz、Dealer 为准，视觉由 B4 出。

---

## 一、网站架构建议（每个站点/语言怎么设）

### 1. 主站 cosmosebike.com（英文 / 多语言）

| 层级 | 路径 / 区块 | 作用 |
|------|-------------|------|
| 首页 | / | Hero、卖点、信任、CTA（Watch / Waitlist / Pre-order） |
| 产品 | /pages/vapor-sl 或 /products/vapor-sl | 规格、From 9.9kg、85Nm、250W rated、105 Di2、碳轮（不出现 600W） |
| 预订 / Waitlist | /pages/waitlist 或 /pages/pre-order | 候补、预计交付、颜色 |
| 试驾 | /pages/test-ride | Mönchengladbach、Deruiz、预约入口 |
| 集合 / 商品 | /collections/all | 仅以 core 为准：VAPOR SL €5,199、十台、颜色尺码；不下架占位 €1 等测试品 |
| 页脚 | 全站 | Impressum、Datenschutz、Privacy、Contact（德国/欧盟必备） |

### 2. 德语区（/de/ 或语言 De）

| 路径 | 内容 |
|------|------|
| /de/ 或 /de/soft | 德语 soft 站落地：十台可订、四月提货、定金 €800→€1000→€4999、德国现货、Deruiz、Mönchengladbach；**真实十台以 core 为准**，叙事台数仅 Buzz 话术 |
| /de/pages/test-ride | 德文试驾预约 |
| /de/pages/impressum、/de/pages/datenschutz | 德国合规 |

### 3. 架构原则

- **一页两用**：同一德语预订页既给 KOL/媒体看（敢回 yes），也给终端用户看（敢留资/付定金）；见 `docs/soft-page-kol-street-dealer-coach.md`。
- **真实与宣传分离**：价格、库存、可卖数量**只以 core 为准**；Buzz 叙事台数（如首批 20、已订数）**不写进 core、不写进站内在售数字**。
- **合规**：全站不出现 600W 对外表述，用 85Nm / 250W rated。

---

## 二、十台车 / 德语网页项目如何命名

便于内部和 D4 沟通，建议统一用一个**项目名**（不对外当品牌名）：

| 建议命名 | 含义 |
|----------|------|
| **VAPOR SL First Batch** | 首批、十台、四月提货 |
| **April Reservierung** | 四月预订、德语区 |
| **Soft Launch DE** | 德语 soft 首发 |
| **Ten Units / 十台项目** | 直白，内部用 |

**对外**：页面上可写「首批现货 · 四月提货」「Jetzt reservieren」等，不必强绑项目名；**对内/文档/仓库**：用 **「十台车项目」** 或 **「德语 soft 站 / First Batch」** 即可。

---

## 三、基础文档（一页总览）

| 文档 | 内容 |
|------|------|
| **core.md** | 产品、定价 €5,199、十台、颜色尺码、四月活动 €800→€1000→€4999、禁用 600W、Buzz 叙事不进 core |
| **website/README.md** | D4 写代码、Mia 部署、Buzz/Dealer 内容与策略 |
| **docs/dealer-street-german-site-design.md** | 德语页与 Shopify 交互、路径、表单 |
| **docs/soft-page-kol-street-dealer-coach.md** | KOL/用户两阶段、一页两用 |
| **docs/daily-website-project-summary.md** | Daily 总结：背景、目的、转化路径 |
| **docs/competitors-reference.md** | 竞品页结构参考 |

---

## 四、给 Mia / B4 / D4 的协作建议

- **B4（UI）**：视觉与信息区块节奏（Hero → Trust → Specs → CTA）可先出稿或参考 competitors-reference，D4 落站；合规与真实数字以 core 为准。
- **D4**：按 B4/Dealer 需求做 Liquid/主题；全站不出现 600W；台数/价格以 core 为准。
- **德语页**：重点不是堆参数，是**德国地址 + 有人已买 + 低门槛动作**（€800 定金），KOL 30 秒内敢回 yes。

---

*D4 专属区；与 core、agents.md 一致。*
