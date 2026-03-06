# Dealer / Street：德语版本设计与 cosmosebike.com 交互

**负责人**：**Dealer**（客户/销售总监）定转化路径与内容需求；**站点与 CRM 实现**由懂 Shopify/代码的人执行（见 SKILL-dealer-d4.md）。Street 配合试驾流程与车店信息；Buzz 使用「德语落地页 + 赠品/福利」链接与博主沟通。

**站点背景**：cosmosebike.com 目前为**自建代码**，将**迁移至 Shopify**。Shopify 自由度少，执行者须**非常懂代码（Liquid、JS）与操作逻辑**，才能在主题/App 约束下实现德语页、表单、福利页与 CRM 对接。

**目标**：博主（如 Felix、Velomotion）的**德语区粉丝**能通过**德语页面**完成试驾预约、Waitlist/预订，并看到**赠品与福利**，提升转化与信任。**试驾是否主推、粉丝福利具体规则**见 Coach 协调文档 `docs/coach-test-ride-and-fan-benefits.md`。

---

## 1. 德语版本怎么设计

### 1.1 域名与路由（与 cosmosebike.com 交互）

| 方案 | 说明 | 推荐 |
|------|------|------|
| **同一域名 + 路径** | cosmosebike.com/de/、cosmosebike.com/de/test-ride、cosmosebike.com/de/waitlist | ✅ 推荐：一个站、一套 SEO、易维护 |
| **子域名** | de.cosmosebike.com | 可选：适合以后独立德国市场运营，当前可不必 |
| **语言切换** | 站内 EN/DE 切换，默认按浏览器或 IP 可跳 DE | 与路径一致：/de/ 下全德语 |

**与主站交互**：
- **同一 Shopify 后台**：一个 Store，用 **Shopify Markets** 或 **多语言 App（如 Translate & Adapt、Langify）** 做 DE；商品、库存、订单统一。
- **链接关系**：首页/导航提供「Deutsch」→ 进入 /de/ 或切换语言；KOL 邮件/贴文直接给 **cosmosebike.com/de/...**，粉丝不经过英文首页。

### 1.2 必须有的德语页面（最小可用）

| 页面 | 路径建议 | 内容要点 |
|------|----------|----------|
| **产品/主页** | /de/ 或 /de/pages/vapor-sl | 产品一句（core 宣发口径）、试驾 CTA、Trust 锚点（Deruiz、Mönchengladbach） |
| **试驾预约** | /de/pages/test-ride 或 /de/test-ride | 表单（姓名、邮箱、偏好时间）+ 跳转 Calendly 或站内表单；提交后进入 CRM 并触发试驾确认/提醒邮件（德语） |
| **Waitlist / 预订** | /de/pages/waitlist 或 /de/waitlist | 预计交付月份、颜色选择、微承诺；提交后进入 Waitlist 序列（D3 逻辑，德语版） |
| **KOL 粉丝福利** | /de/pages/kol-gutschein 或 /de/angebot | 赠品/福利说明（如「通过 [博主名] 预约试驾可获 XX」）；可带 UTM（utm_source=felix）便于 CRM 分段与归因 |

以上页面**文案需德语**，产品数据与定价与 core 一致（MSRP €5,199；不写 €4,000）。

### 1.3 赠品与福利（和博主聊时怎么说）

- **规则由 Mia/Coach 定**（例如：通过某博主链接预约试驾并到店 → 送小礼品/折扣码）；Dealer 定需求，执行层在站内做**福利页 + 可选折扣码或表单字段**。
- **CRM**：通过 **utm_source**（如 felix、velomotion）或表单「从哪得知我们」区分 KOL 粉丝，便于后续分段与博主结案。

---

## 2. 用户路径与转化（Dealer 定路径，执行层落地）

| 路径 | 实现要点 |
|------|----------|
| **KOL 粉丝 → 德语页 → 试驾** | Buzz 给博主链接：cosmosebike.com/de/pages/test-ride?utm_source=felix；执行层确保 DE 试驾页存在，表单提交后进 CRM 并打 tag/segment，触发试驾确认邮件（德语）。 |
| **KOL 粉丝 → 德语页 → Waitlist** | 链接：cosmosebike.com/de/waitlist?utm_source=felix；提交后进 Waitlist 序列（德语版），可选「来自 Felix」等 tag。 |
| **试驾 → 购买** | 试驾确认/提醒/跟进邮件（S2）由执行层在 Klaviyo/Shopify 配置，德语版与英语版分流（按语言或 landing 路径）。 |

---

## 3. 网页端与私域工具（执行层负责）

| 类型 | 工具/用途 |
|------|-----------|
| **站点** | Shopify 主题、多语言页面、表单（试驾、Waitlist、福利页） |
| **部署** | 主题/模版修改、App（多语言、表单、Pixel）安装与配置 |
| **私域** | Klaviyo 或 Shopify Email：DE/EN 分段、试驾 3 封（确认/24h 提醒/48h 跟进）、Waitlist 5 封德语版 |
| **归因** | UTM（utm_source, utm_medium, utm_campaign）在链接中；CRM 中按 source 分段，供 Buzz 与博主对账 |

---

## 4. Street 与 Dealer 分工

| 事项 | 谁做 |
|------|------|
| 试驾流程设计、车店信息、Deruiz 地址与开放时间 | **Street** |
| 站点上德语页面、表单、Calendly 对接、Meta Pixel、CRM 分段与邮件流 | **Dealer 定需求**，懂 Shopify/代码的人实现 |
| 给博主的链接、赠品/福利规则说明、博主粉丝 tag 命名 | **Buzz** 提需求，**Dealer** 定规则，执行层实现 |
| 德语文案（产品一句、按钮、邮件） | 可由 Buzz/Coach 出稿，Dealer 验收，执行层填入模版 |

---

## 5. 与 cosmosebike.com 的交互小结

- **一个后台**：cosmosebike.com 一个 Shopify，DE 用多语言/多市场承载。
- **同一库存与订单**：德国试驾、德国或欧盟订单都在同一 Store，便于库存与交付（core）一致。
- **链接与流量**：德语流量统一进 /de/ 或 ?lang=de；KOL 链接带 utm_source，方便执行层做分段与转化分析。
- **私域**：DE 联系人进同一 CRM，用「语言=DE」或「来源=KOL」等 segment 触发德语邮件流。

---

*Dealer 定策略与需求，站点/CRM 执行层 + Street 落地。产品与定价以 core.md 为准。*
