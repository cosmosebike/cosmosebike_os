# Cosmosebike 独立站架构 v1 — 完整站设计与 Agent 分工

**版本**：v1（当前四页为第一版基线）  
**参考**：[Deruiz E-bike Store](https://deruizebike.com/en/)（产品结构、Showroom、信任模块）  
**对齐**：Coach / Trust / Buzz / Dealer / Street；core.md 为数据唯一来源；D4 负责站点实现。**Trust** 负责以「陌生人敢不敢付定金」为出发点的页面结构与信任/转化设计。

---

## 0. 优先考虑的是用户——第一步是什么

**整站优先考虑的是「用户」**：一个陌生人打开网站，要在几分钟内做到四件事——**知道你是做什么的、品牌是谁、怎么在你这儿买、可以直接下单**。这是**第一步**，其他（call the email、发经销商、带 KOL 粉丝）都建立在这步之上。

### 0.1 用户第一步（站上必须一次说清）

| 用户要得到的 | 站上怎么满足 |
|--------------|--------------|
| **你是做什么的** | 首页第一屏：一句话产品（如「超轻电助力公路/全地形车」）+ 核心卖点（重量 From 9.9kg、续航 150km；电机按 core：扭矩不主推，重量成就替代）；不藏不绕。 |
| **品牌是谁** | 品牌名 Cosmosebike 贯穿 Header/Footer；可选一句 Slogan（如 All in from the first ride）；About/故事可简短或后补。 |
| **怎么在你这儿买** | 导航与首屏 CTA 明确指向「预购/购买」；产品页：选颜色/尺码 → 定金/全款说明 → 支付方式（PayPal 等）；流程一目了然。 |
| **可以直接下单** | 产品页有真实「立即预购/支付定金」按钮，链接到有效支付（如 PayPal €800）；不出现「即将上线」「敬请期待」而无下单入口。 |

**第一步没做好，后面再发邮件、再带 KOL 粉丝，用户点进来也会懵。** 所以 Phase 0 的验收标准是：**任意用户打开首页 → 能立刻懂「做什么、谁、怎么买」→ 点进产品页能直接下单（真实支付链接）**。

### 0.2 完整独立站要花多长时间

**第一步（用户能看懂、能下单）** 之后，才是「能对外 call the email、发经销商、带 KOL 粉丝」的完整站。时间线按「用户第一步 → 再收线索、再对外发」来排。

| 阶段 | 内容 | 周期（约） | 结束时「能做什么」 |
|------|------|------------|--------------------|
| **Phase 0（第一步）** | 四页已上线；**确保用户动线清晰**：首页一句话说清做什么+品牌，产品页流程清晰且**替换为真实 PayPal/支付链接**，用户可直接下单 | 0–1 周 | **用户**：看到站知道做什么、谁、怎么买，能直接下单；站能当主站用 |
| **Phase 1** | 试驾页（EN+DE）+ 表单进 CRM；首页/产品页 CTA 指向试驾页 | 2–3 周 | 用户可选「先试驾再买」；Street 能发试驾链接；Buzz 能给 KOL 试驾链接 |
| **Phase 2** | KOL 福利页 + utm_source；Waitlist 页（EN+DE）+ CRM + 5 封序列 | 2–3 周 | Buzz 能 call the email 给 KOL，粉丝有福利/试驾/Waitlist 落地；Dealer 收 Waitlist 线索 |
| **Phase 3** | Locations/Showroom 独立页；可选 About；Testimonials 预留 | 1–2 周 | Street 能发经销商链接；用户与合作伙伴都能看清「在哪试驾、怎么合作」 |
| **Phase 4** | 迁移 Shopify（若做）：主题、多语言、结账、Pixel、Klaviyo | 4–8 周 | 整站统一后台、库存/订单/邮件打通 |

**粗算**：  
- **第一步（用户能看懂、能下单）**：Phase 0，约 **0–1 周**。  
- **能 call the email + 发经销商 + 带 KOL 粉丝**（Phase 0–3）：约 **6–9 周**。  
- **含 Shopify 迁移**（Phase 4）：再加 **4–8 周**，合计约 **10–17 周**。

### 0.3 为什么「用户第一步」优先

- 用户看不懂、不能下单，**发再多链接也没用**——KOL 粉丝、广告流量、经销商点进来都一样，先要「看得懂、买得到」。
- Buzz 发 KOL、Street 发经销商，都是**把流量引到站上**；站上的第一体验必须是「做什么、谁、怎么买、能下单」，否则转化会断在第一屏。
- 所以：**先验收「用户第一步」，再排试驾页、福利页、Locations**；时间线按这个顺序，整站架构也以用户动线为基底。

---

## 1. 定位与目标

| 维度 | 说明 |
|------|------|
| **优先** | **用户优先**：陌生人打开网站，要能立刻知道「做什么、品牌是谁、怎么买、能直接下单」——这是第一步；试驾、KOL、经销商等都在此基础上展开。 |
| **站点角色** | 品牌展示 + **清晰购买路径** + 线索收集 + 预购/试驾转化；非多 SKU 电商，聚焦 VAPOR SL 与 Deruiz 试驾。 |
| **v1 范围** | 四页已上线：双语言首页 + 双语言产品购买页；作为第一版基线，**Phase 0 要确保用户动线清晰且能真实下单**。 |
| **后续演进** | 迁移 Shopify 后由 D4 实现多语言、表单、Pixel、CRM；Dealer 定路径与验收。 |

**与 Deruiz 的差异（做减法）**：Deruiz 为多品类 e-bike 店（Urban/City/Trekking/SUV/MTB/Gravel/配件）；Cosmosebike 当前**单产品 + 试驾 + Waitlist**，不复制全品类，只借鉴**信息架构与信任模块**（Showroom、Locations、社会证明预留位）。

### 1.2 「Call the email」与「发经销商」——谁发、站要提供什么

整站架构必须支持两件关键动作：**Buzz 对 KOL/媒体 call the email**，**Street 对经销商发邮件/发信息**。站上没链接，就没法发。

| 谁 | 动作 | 站上必须有的东西 |
|----|------|------------------|
| **Buzz** | **Call the email**：给 KOL、给媒体发合作邮件/消息，附上「粉丝可点的链接」 | 首页（品牌认知）、**产品页**（看车/预购）、**试驾页**（预约）、**KOL 福利页**（带 utm_source，方便按博主归因）；链接可带 `?utm_source=felix` 等 |
| **Street** | **发经销商/车店**：发邮件、发信息给潜在合作伙伴，让对方点进站能看到试驾点、合作价值 | **试驾页**（流程+地址）、**Locations/Showroom 页**（Deruiz 等，谁、在哪、怎么约）；首页可强化「德国试驾」「Deruiz 合作」 |

因此：  
- **KOL 粉丝**：Buzz 发邮件给博主 → 博主发帖/发故事 → 粉丝点链接 → 必须落到**福利页 / 试驾页 / 产品页**，不能 404 或外链到别家。  
- **经销商/车店**：Street 发邮件/消息 → 对方点链接 → 必须落到**试驾页或 Locations 页**，一眼能看懂「Cosmosebike 在哪儿试驾、怎么合作」。

### 1.3 KOL 粉丝优先

当前战略重点：**带 KOL 的粉丝**。整站架构和上线顺序都要优先保证：

1. **KOL 粉丝从博主处点进来** → 有专属福利说明（福利页）、能预约试驾（试驾页）、能下单/留资（产品页/Waitlist）。  
2. **每条 KOL 流量可归因**（utm_source）→ CRM 分段、Buzz 结案、Dealer 跟进都有数可依。  
3. **首页**也要考虑「从 KOL 来的粉丝」：第一屏或首屏 CTA 是否要强推「试驾」「福利」「预购」，由 D2 定文案，但架构上首页必须能承载这类流量并引向上述页面。

### 1.4 首页在整站里的角色

- **给谁看**：冷流量（广告/搜索）、KOL 粉丝（从博主链接点进首页）、经销商（从 Street 邮件点进）。  
- **要干什么**：建立品牌 + 一句话产品认知，然后**把流量引到**：产品页（预购）、试驾页（预约）、或福利页（KOL 粉丝）。  
- **第一屏**：当前是 Hero + 主标题 + CTA（Watch Film / View Specs）；若 KOL 粉丝优先，可考虑增加或轮播「预约试驾」「KOL 专属福利」等 CTA，具体由 D2 与 Dealer 定，D4 实现。  

架构上：首页 = **枢纽**，不承担复杂表单；复杂动作（试驾、Waitlist、福利）都在独立页完成，首页只负责跳转。

---

## 2. 全站信息架构（IA）

### 2.1 站点地图（目标态，含 v1 已有 + 待增）

```
cosmosebike.com
├── / (或 /en/)                    ← 英语首页          [v1 有：landing_page.html]
├── /de/ 或 ?locale=de             ← 德语首页          [v1 有：landing_page-de.html]
│
├── 产品 / 预购
│   ├── /pages/vapor-sl 或 /vapor-sl   ← 英语产品购买页  [v1 有：vapor-sl-en.html]
│   └── /de/pages/vapor-sl 或 /de/...  ← 德语产品购买页  [v1 有：vapor-sl-de.html]
│
├── 试驾（Street 定流程，D4 实现）
│   ├── /pages/test-ride 或 /test-ride     ← 英语试驾预约  [待增]
│   └── /de/pages/test-ride 或 /de/...    ← 德语试驾预约  [待增]
│
├── Waitlist / 预订（Dealer D2 出文案，D4 实现）
│   ├── /pages/waitlist 或 /pilot-program  ← 英语 Waitlist [待增 / 或沿用现有 Shopify 页]
│   └── /de/pages/waitlist 或 /de/...      ← 德语 Waitlist [待增]
│
├── KOL 粉丝福利（Buzz 提规则，Dealer 定，D4 实现）
│   ├── /pages/offer 或 /angebot           ← 福利页 EN     [待增]
│   └── /de/pages/angebot 或 /de/...       ← 福利页 DE     [待增]
│       └── ?utm_source=felix 等           ← 归因与 CRM 分段
│
├── 信任 / 关于（可选 v1.1，参考 Deruiz）
│   ├── /pages/about 或 /our-story        ← 品牌故事（B3 内容）[可选]
│   ├── /pages/locations 或 /showroom     ← 试驾与取车地点（Street 信息）[可选]
│   └── /de/pages/...                     ← 德语等价页
│
└── 法务（德站必备）
    ├── /pages/impressum    ← 德语法务 [DE 站 footer 已链]
    ├── /pages/datenschutz
    └── /pages/widerruf
```

**v1 当前实现（website/ 静态 HTML）**：  
- 英语：`landing_page.html`（首页）、`vapor-sl-en.html`（产品/预购）  
- 德语：`landing_page-de.html`（首页）、`vapor-sl-de.html`（产品/预购）  
- 试驾 / Waitlist / 福利 目前靠外链（cosmosebike.com/test-ride、/pages/pilot-program 等），后续在 Shopify 内建页或主题 Section 实现。

### 2.2 导航结构（与 Deruiz 对齐思路，做精简）

| 导航项 | EN | DE | 说明 |
|--------|----|----|------|
| **Home** | / | /de/ | 品牌 + 车型概览 + CTA |
| **Product / VAPOR SL** | /vapor-sl-en.html → 未来 /pages/vapor-sl | /de/... 产品页 | 预购、规格、试驾 CTA |
| **Test Ride** | /test-ride | /de/test-ride | 试驾预约（Street 信息，D4 表单） |
| **Waitlist** | /pages/pilot-program 或 /waitlist | /de/waitlist | 预订/Waitlist（D2 文案，D4 表单） |
| **Offer / Angebot** | 可选 | 可选 | KOL 福利页，带 utm_source |
| **Locations / Showroom** | 可选 | 可选 | Deruiz Mönchengladbach（+ 未来 Heidelberg 等），Street 提供文案 |
| **EN | DE** | 切换至 /de/ | 切换至 / | 全站统一 header |

**Footer**：Logo、Slogan、社媒（FB/IG/YT）、© Cosmosebike；**德语站**额外：Impressum、Datenschutz、Widerruf（已做）。

---

## 3. 用户路径与 Agent 责任（Dealer 定路径，D4 实现）

### 3.1 冷启动顺序（与 OS 一致）

1. **线下先行** — Deruiz 摆车 → 试驾 → 口碑  
2. **内容证明** — 骑行视频 → Hunter/Buzz 素材  
3. **媒体背书** — KOL/测评 → Buzz 链接进站  
4. **付费放大** — Hunter 投放 → 落地页/产品页

### 3.2 关键路径（谁发、谁收、站要准备好什么）

| 路径 | 谁发 / 谁触达 | 站内步骤 | 站上必须准备好 |
|------|----------------|----------|----------------|
| **KOL 粉丝 → 福利/试驾/Waitlist** | **Buzz call the email**：Buzz 发邮件/消息给 KOL → KOL 发链接给粉丝 | 粉丝点链接 → 福利页/试驾页/Waitlist → 提交 | 福利页（DE）+ 试驾页（EN+DE）+ Waitlist 页（EN+DE）；链接带 utm_source；CRM 分段 |
| **经销商/车店 → 了解试驾与合作** | **Street 发邮件/发信息**：Street 给经销商发 BD 邮件/消息 | 对方点链接 → 试驾页或 Locations 页 → 看到地址、流程、合作点 | 试驾页（含 Deruiz 地址与流程）；可选 Locations/Showroom 独立页 |
| **付费流量 → 预购** | Hunter 广告 → 落地页/产品页 | 首页或直链产品页 → 选配 → PayPal €800 定金 | 产品页可下单/定金；定价与 core 一致 |
| **付费流量 → 试驾** | 落地页/产品页 CTA | 「Book test ride」→ 试驾页 → 表单 | 试驾页存在且表单进 CRM；试驾 3 封邮件流（D2 文案） |
| **高意向逼单** | Dealer D1 私信 | 产品页 + 试驾链接（core 取） | 产品页与试驾链接有效；D1 话术一击必杀 |

**总结**：**Buzz 发 KOL、Street 发经销商**——站上先有可发的链接（试驾、福利、Locations），他们才能真的「call the email」和「发信息」；时间线（§0）就是按「什么时候这些页能上线」来排的。

实现上：KOL 路径 = Buzz 发链接 + D2 文案 + D4 福利页/试驾/Waitlist 与 CRM；经销商路径 = Street 发邮件/消息 + D4 试驾页与 Locations 页；付费与逼单 = D2/D1 + D4 产品页与试驾链接。

### 3.3 内容与策略归属

| 内容类型 | 谁出 | 谁验收 | 谁落站 |
|----------|------|--------|--------|
| 首屏/产品页/试驾 CTA 文案 | D2 | Dealer | D4 |
| 试驾流程、地址、开放时间 | Street | Dealer/Mia | D4 展示 + 表单 |
| KOL 福利规则与链接 | Buzz + Dealer | Mia | D4 福利页 + UTM |
| 品牌故事 / About | B3 | Buzz/Dealer | D4（可选） |
| 信任模块（保障政策、价值证明顺序、四问覆盖）| Trust 出稿/审 | Coach 核查数字与政策 | D2 融入、D4 落站 |
| 商品价格、库存、规格 | core.md | Coach/Mia | D4（Shopify 与 core 一致） |

---

## 4. 页面模块与 Deruiz 参考

参考 [Deruiz](https://deruizebike.com/en/) 的模块，只取与 Cosmosebike 阶段匹配的部分：

| Deruiz 模块 | Cosmosebike 对应 | v1 状态 | 备注 |
|-------------|------------------|---------|------|
| 主 Nav + 品类 | Nav：Home / VAPOR SL / Test Ride / Waitlist / EN\|DE | ✅ 已有 | 单产品，无多品类 |
| Hero + 促销条 | Hero 视频/标题 + 可选「Launch April 2026」 | ✅ 已有 | 可加限时文案（D2） |
| 产品卡 / 车型选择 | 首页 Gallery 三色 + 产品页颜色/尺码 | ✅ 已有 | 与 core 库存一致 |
| 规格/技术数据 | 产品页 Specs + 几何表 | ✅ 已有 | 口径按 core 宣发 |
| Showroom / Locations | 产品页内「试驾与取车」+ 地图 | ✅ 已有 | Deruiz 地址；可抽成独立 Locations 页 |
| Testimonials / 评价 | 未做 | 待增 | 有真实用户后 B3/D2 出稿，D4 加 Section |
| Why Choose Us / 信任 | 首页 Features + 品牌块 | ✅ 已有 | 可再强化「Deruiz 合作」「工厂直营」 |
| Footer 联系与法务 | Footer Logo/社媒/版权；DE 加 Impressum 等 | ✅ 已有 | 合规 |
| Leasing / JobRad | 不做 v1 | - | 若后续有合作再加 |

---

## 5. 技术实现与 D4 职责

### 5.1 v1 现状（website/ 静态 HTML）

- **四页**：`landing_page.html`、`landing_page-de.html`、`vapor-sl-en.html`、`vapor-sl-de.html`
- **统一**：Header（渐变透明）、Footer、字体（Geologica + Sofia Sans Condensed）、品牌 Cosmosebike、EN|DE 切换
- **链接**：首页 Pre-order/Waitlist → 产品页；产品页试驾 → cosmosebike.com/test-ride；PayPal/WhatsApp 为占位，需替换为真实链接（core 或 Mia 提供）

### 5.2 迁移 Shopify 后（D4 执行）

| 项 | 说明 |
|----|------|
| **主题** | 当前四页可作「落地页主题」参考；迁移后用 Shopify 主题 + Liquid Section 复刻版式，或 App 嵌入 HTML。 |
| **多语言** | Markets 或 Translate & Adapt / Langify；路径 /de/ 或 ?locale=de 与文档一致。 |
| **表单** | 试驾 / Waitlist：Shopify Form、App 或 Calendly 嵌入；提交 → CRM（Klaviyo）打 tag、触发邮件（D2 文案）。 |
| **福利页** | 独立 Page + UTM；CRM 按 utm_source 分段。 |
| **Pixel / UTM** | Meta Pixel 与广告 UTM 规则由 Hunter 定，D4 在主题/结账中实现。 |
| **价格与库存** | 以 core 为准，D4 协助 Mia 在后台改价、上架/下架、PayPal €800 定金流程。 |

### 5.3 文件与代码归属

- **website/**：D4 专属代码区；Mia 部署；Buzz/Dealer 只提供内容与策略，不直接改代码。
- **docs/**：本架构及 dealer-street-german-site-design、coach-test-ride-and-fan-benefits 等由 Coach/Dealer 维护，D4 按文档实现。

---

## 6. 待办优先级（建议）

| 优先级 | 事项 | 负责 | 产出 |
|--------|------|------|------|
| P0 | 替换产品页 PayPal / WhatsApp 占位链接 | Mia + D4 | 真实支付与联系链接（core 或 Mia 提供） |
| P0 | 试驾页（EN/DE）存在且可提交 → CRM | Street + D2 + D4 | 试驾表单 + 确认/提醒邮件流（德语） |
| P1 | Waitlist 页（EN/DE）与 5 封序列 | D2 + D4 | Waitlist 表单 + Klaviyo 德语流 |
| P1 | KOL 福利页 + utm_source 分段 | Buzz + Dealer + D4 | 福利页 DE（+EN 可选）+ CRM 分段 |
| P2 | Locations / Showroom 独立页（可选） | Street + D4 | 单页展示 Deruiz 等，与产品页信息一致 |
| P2 | Testimonials / 社会证明 Section（有素材后） | B3/D2 + D4 | 首页或产品页加评价块 |
| P3 | 迁移至 Shopify 并统一多语言与结账 | D4 + Mia | 主题、多语言、表单、Pixel、CRM 对接 |

---

## 7. 小结

- **优先考虑的是用户，第一步是用户能看懂、能下单**：打开网站要立刻知道「做什么、品牌是谁、怎么买、能直接下单」；Phase 0 验收标准就是这条用户动线 + 真实支付链接。第一步没做好，再发邮件、再带 KOL 粉丝，用户点进来也会懵。
- **时间线（§0.2）**：第一步（Phase 0）约 0–1 周；能 call the email + 发经销商 + 带 KOL 粉丝（Phase 0–3）约 6–9 周；含 Shopify 迁移约 10–17 周。
- **Buzz = call the email**、**Street = 发经销商**：都建立在「用户第一步」之上；站上要有试驾页、福利页、Locations 等链接，他们才能发。
- **v1 四页** = 第一版基线；在 v1 上先确保用户动线清晰且能下单，再补试驾、Waitlist、KOL 福利、Locations。
- **下一步**：先完成 Phase 0（用户看懂 + 真实下单链接），再按 Phase 1→2→3 上试驾页、福利页与 Waitlist、Locations。

---

## 8. 页面结构与转化设计（Trust 深度设计）

**设计出发点**：让一个从未听说过 Cosmosebike 的人，愿意在站上完成「看懂 → 信任 → 行动」（预约试驾 / 留资 / 支付定金）。每页必须回答**信任四问**中的相应部分，并承担明确的**转化目标**；不堆信息，不企业腔。

**信任四问在站上的分工**：

| 问题 | 站上谁负责回答 | 最少要有什么 |
|------|----------------|--------------|
| 这家公司 3 个月后还在吗？ | 首页 / About（可选） | 品牌名 + 一句话「我们是谁」（可来自品牌起点，2–3 句） |
| 我的钱安全吗？ | 产品页、Waitlist 页 | 定金政策一句（含「无法交付则退款」或当前已定表述）；未定政策不写死 |
| 为什么不买 Specialized？ | 首页 + 产品页（价值证明顺序） | 按 core 顺序：① 直销定价 ② 重量成就 ③ 定制深度 ④ 骑行社区（待 Buzz）⑤ 工厂透明；欧洲实体归信任层不混入 |
| 有没有真人已经买了？ | 社会证明 Section（预留） | 有真实数据再上；可模糊「越来越多骑手预约试驾」或留空 |
| 能摸到车吗？ | 全站 Trust 层（信任前提） | Deruiz 试驾 + 地址（core）；首屏或产品页必有试驾入口 |

**价值证明顺序（core 已定稿）**：站上表达顺序必须为 ① 直销定价模式 ② 重量成就（Canyon CF8 最强对比）③ 定制深度（V5 Project Color）④ 骑行社区（待 Buzz 提案后补充）⑤ 工厂透明度。**欧洲实体落地**只作信任前提（能摸到车），不列入价值证明条。**红线**：不主推扭矩数字、不用 €2,700 散买锚点、对比 Orbea 须说明轮毂≠中置。

**全站转化分工**：

| 页面 | 主转化目标 | 次转化 / 信任目标 |
|------|------------|-------------------|
| **首页** | 跳转产品页 / 试驾页 | 建立「做什么、谁、为什么是你、能摸到车」 |
| **产品页** | 选配 + 支付定金 | 钱安全、价值证明顺序、能摸到车、可直接下单 |
| **试驾页** | 提交试驾表单 → CRM | 能摸到车（地址/流程）、你是谁（简短） |
| **Waitlist 页** | 提交留资 → 序列 | 钱安全（可选一句）、留资即承诺感 |
| **福利页** | 带 utm 的试驾/预购跳转或留资 | KOL 粉丝归属感、Buzz 可 call the email |
| **Locations** | 信任增强 + 试驾预约 | 能摸到车（Trust 层）、Street 可发经销商 |
| **About（可选）** | 信任增强 | 你是谁、为什么做这辆车（品牌真实性） |

**Oi! / Bikes▾**：导航占位，V3 后才做产品页；现阶段不做任何内容（core 已定）。书写规范：Oi! 第二个字母为小写 i（即 Oi!，非 OI!）。

---

## 9. 页面规格（逐页设计）

以下为 D4 实现与 D2/Trust 出文案时的**逐页规格**；内容归属见 §3.3，数据与口径一律以 **core** 为准。

### 9.1 首页（Home）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **Hero** | 一句话产品 + 主 CTA | 超轻电助力公路/全地形；重量 From 9.9kg、续航 150km（按 core，扭矩不主推）；CTA：View VAPOR SL / Book test ride | D2 文案；Trust 审信任与价值顺序 |
| **品牌一句** | 你是谁 | Cosmosebike + 可选 Slogan（如 All in from the first ride）；2–3 句「我们是谁」可来自品牌起点，不企业腔 | B3/Trust |
| **价值证明（短版）** | 为什么是你 | 按 core 顺序：直销定价 → 重量成就（同动力级别轻 4–5kg）→ 定制深度；不写 €2,700，不主推扭矩 | D2 + Trust 审 |
| **能摸到车** | Trust 层 | 试驾 Mönchengladbach · Deruiz；按钮「Book test ride」→ 试驾页 | Street 信息；core 地址 |
| **产品入口** | 转化 | 三色 Gallery（与 core 库存一致）+ 按钮 Pre-order / View Specs → 产品页 | D4 |
| **Footer** | 合规与跳转 | Logo、社媒、EN|DE；德语站 Impressum / Datenschutz / Widerruf | D4 |

**首屏禁止**：85Nm 主推、€2,700、Orbea 未区分轮毂/中置、企业腔/夸大。

### 9.2 产品页（VAPOR SL）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **产品主视觉 + 选配** | 选车与锁单 | 颜色/尺码（与 core 库存一致）；价格 €5,199；定金/全款说明（与 Coach 表述一致，未定政策不写死） | core + D2；Trust 出保障政策一句 |
| **购买保障** | 钱安全吗 | 一句定金政策（含「无法交付则退款」或原则稿+「待确认」）；余款发货前付；不擅自发明比例 | Trust 出稿；Coach/core 核查 |
| **价值证明（完整顺序）** | 为什么不买竞品 | ① 直销定价 ② 重量成就（Canyon CF8 最强对比）③ 定制深度（V5 Project Color）④ 骑行社区（待 Buzz 后补）⑤ 工厂透明；欧洲实体单独作「试驾与取车」块 | D2 + Trust 审 |
| **Specs** | 产品可信 | 按 core 宣发口径：重量、续航、电机（precision mid-drive, 250W rated；扭矩不主推）、变速、轮组 | core |
| **试驾与取车** | 能摸到车 | Deruiz 地址（core）；CTA Book test ride → 试驾页 | Street + core |
| **CTA 主按钮** | 直接下单 | 「Reserve / Pay deposit」→ 真实支付链接（PayPal 等）；不出现「即将上线」无入口 | Mia + D4 |

**产品页禁止**：€2,700、85Nm 主推、Orbea 未区分轮毂、写死未定定金比例或退款条款。

### 9.3 试驾页（Test Ride）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **标题 + 一句** | 行动意图 | 预约 Mönchengladbach 试驾；可选一句「真实骑过再决定」 | D2 |
| **地址与流程** | 能摸到车 | Deruiz：Künkelstraße 43/Hall B5, 41063 Mönchengladbach；开放时间/流程（Street 提供） | Street + core |
| **表单** | 转化 | 姓名、邮箱、偏好时间（或 Calendly 嵌入）；提交 → CRM，触发试驾确认/提醒邮件（EN+DE） | D4；D2 邮件文案 |
| **试驾后 CTA** | 二次转化 | 试驾后若满意可 Pre-order → 产品页 | D2 |

### 9.4 Waitlist 页

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **标题 + 价值一句** | 留资动机 | 预订 VAPOR SL、锁码/排期；可选「钱安全」一句（与产品页一致） | D2 + Trust |
| **表单** | 转化 | 邮箱、可选颜色/尺码偏好；提交 → Waitlist 序列（5 封邮件流 EN+DE） | D4；D2 序列文案 |
| **UTM** | 归因 | 支持 ?utm_source= 与 CRM 分段 | D4 |

### 9.5 福利页（Offer / Angebot）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **福利说明** | KOL 粉丝归属 | 通过 [博主] 预约试驾/留资可获 XX（规则由 Coach/Mia 定，见 coach-test-ride-and-fan-benefits）；一句话写清 | Buzz + Dealer；D4 落页 |
| **CTA** | 转化 | 预约试驾 / 进入 Waitlist / 预购 → 试驾页或产品页；链接带 utm_source= 博主名 | D4 |
| **归因** | Buzz 结案 | 所有链接 utm_source；CRM 打 tag | D4 |

### 9.6 Locations / Showroom（可选）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **地点列表** | 能摸到车（Trust 层） | Deruiz Mönchengladbach：地址、开放时间、一句话（Test ride & pickup）；可扩展 Heidelberg 等 | Street + core |
| **地图** | 可发现性 | 静态图或嵌入式地图 | D4 |
| **CTA** | 转化 | Book test ride → 试驾页 | D2 |

### 9.7 About / Our Story（可选，v1.1）

| 区块 | 目的 | 内容要点 | 归属 |
|------|------|----------|------|
| **品牌起点** | 你是谁、3 个月后还在吗 | 时间/地点/动机具体；「为什么做这辆车」一句话内核；不企业腔、不模糊 | B3 + Trust |
| **不承诺无法兑现的** | 信任 | 无真人署名/照片时可只做「品牌起点」叙事；车主故事有真实交付后再开 Section | Trust 审 |

---

## 10. Trust 关键页抽检清单（上线前必对）

- **首页**：首屏是否一句话产品 + 重量/续航（无 85Nm 主推）？是否有「我们是谁」与试驾入口？价值证明是否按 core 顺序、无 €2,700？
- **产品页**：是否有「钱安全」一句（保障政策）？价值证明顺序是否 ① 直销 ② 重量 ③ 定制 ④ 社区（待补）⑤ 工厂？是否有试驾与取车块？主 CTA 是否真实支付链接？
- **全站**：是否出现 85Nm 主推、€2,700、Orbea 未区分轮毂、写死未定政策？语气是否「骑手对骑手」、无企业腔/夸大？

---

*文档维护：Coach + Trust + Dealer；实现：D4。参考 Deruiz：https://deruizebike.com/en/*
