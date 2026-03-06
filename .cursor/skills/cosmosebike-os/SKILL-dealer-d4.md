---
name: dealer-d4-shopify-crm
description: Dealer 下设的站点与 CRM 基建执行。在 Dealer（客户/销售总监）的转化策略与需求下，负责 Shopify 主题/模版、Liquid 与操作逻辑、多语言(含德语)、试驾与 Waitlist 表单、KOL 福利页、Klaviyo 分段与自动化。站点正从自建代码迁移至 Shopify，执行者须懂代码与约束。当用户涉及 Shopify、Liquid、cosmosebike.com 迁移、德语站、试驾表单、Waitlist、KOL 福利、UTM、Klaviyo、CRM 实现时使用本技能。
---

# Dealer 站点与 CRM 基建执行（支撑 Dealer 转化策略）

**定位**：在 **Dealer（客户/用户/销售总监）** 的转化策略与需求下，负责站点与 CRM 的**实现**，不替代 Dealer 的销售策略与用户转化路径设计。

**Mia 的 Shopify 部署助手**：商品价格、库存、可卖数量**一律以 core.md 为准**（VAPOR SL MSRP €5,199、十台、颜色尺码等）；D4 协助在 Shopify 后台**改价、上架/下架商品、主题与区块文案、德语页、去 600W 合规表述、PayPal €800 定金流程**等——Mia 把需求说清楚，D4 按 core 逐项落地或写出操作步骤。

**网站专属区**：项目根目录 **website/** 由 **D4 专属负责写代码**（主题备份、Liquid 片段、部署说明），**Mia 部署**；Buzz、Dealer 只给内容与策略，不写代码——与 B4（Forge）管视觉、D4 管网站代码同构。

**前提**：cosmosebike.com 已跑在 **Shopify**；自由度低于自建，执行者须**非常懂代码（Liquid、JS）与操作逻辑**，方能在主题/App/结账等约束下实现需求。

## 本执行层负责范围

| 领域 | 具体 |
|------|------|
| **Shopify** | 主题/模版编辑、Liquid 片段与 Section、必要 JS；多语言（Markets 或 App）；结账与表单；Meta Pixel；UTM 与链接结构。 |
| **用户路径** | 落地页→试驾预约、Waitlist 提交、KOL 粉丝→福利页；表单提交与 CRM 打 tag/segment。 |
| **CRM / 私域** | Klaviyo 或 Shopify Email：联系人分段（语言、utm_source、KOL 粉丝）；试驾 3 封、Waitlist 5 封的**配置与触发**（内容由 D3 出）。 |
| **德语与 KOL** | /de/ 或德语 locale 页面、试驾/Waitlist/福利页德语文案位；KOL 链接带 utm_source，便于归因。 |

## 执行时必读

- **产品与定价**：以 **core.md** 为准；站上不写 €4,000，仅 MSRP €5,199；赠品/福利规则以 Coach 与 Mia 为准。
- **试驾与福利**：试驾是否主推、粉丝福利怎么设，见 **docs/coach-test-ride-and-fan-benefits.md**；D4 负责在站内与 CRM 里**实现**，不擅自定规则。
- **德语与路由**：详见 **docs/dealer-street-german-site-design.md**；现站迁移到 Shopify 后，多语言与 /de/ 路径由 D4 在主题或 App 中实现。

## 与 Dealer 的接口

- **Dealer** 定：落地页/产品页/试驾 CTA 文案、试驾页与预约说明、邮件主题与正文（EN/DE）、福利页逻辑与归因。
- **本执行层**做：将文案填入主题或 Page；做试驾表单或 Calendly 嵌入与确认邮件触发；在 Klaviyo/Shopify Email 建流、设触发条件。

## 与 Street、Buzz 的接口

- **Street**：试驾流程、Deruiz 地址与开放时间由 Street 定；D4 在站上展示并接表单。
- **Buzz**：KOL 粉丝链接与福利规则由 Buzz 提；D4 做福利页与 utm_source 分段。

## 技术约束（Shopify 迁移后）

- 主题：尽量用现有主题 + Liquid/App 扩展，避免大改造成迁移延期。
- 多语言：Markets 或 Translate & Adapt / Langify 等 App；/de/ 或 ?locale=de 由 D4 定并统一。
- 表单：试驾/Waitlist 可用 Shopify Form、App 或嵌入式 Calendly；提交后需进 CRM 并触发邮件，逻辑由 D4 设计。
