# Trust 审阅：test-homepage.html（首页）

**审阅对象**：`website/test-homepage.html` 首页（Hero、Trust strip、Why、Founder、Test Ride、Footer）。  
**标准**：core 价值证明与竞品规则、trust-agent-spec 最小可行信任集、website-architecture-v1 §8–§10。  
**结论**：结构清晰、信任与转化意图对，但有几处与 core 冲突必须改；若干处调顺序/补一句即可明显提升「敢不敢付定金」的站上说服力。

---

## 一、做得好的地方（保留）

- **保障政策**：「Deposit fully refundable if we can't deliver」人话、可执行，与 Trust 原则一致；放在购买卡下方合适。
- **能摸到车**：Trust strip「German Showroom · Mönchengladbach」、Founder 下方地址、Test Ride 区块三步+地址，都明确回答「能摸到车」；Deruiz 地址与 core 一致。
- **创始人/品牌真实性**：Mia 署名、「为什么做这辆车」故事（从个人需求→找工程师→砍中间环节）、「It's here, in Germany, available to ride today」具体，不企业腔。
- **直销定价**：Why 区「The same hardware exists at €8,499」「We removed the middlemen」、对比表价格 €6,199–8,499 vs €5,199，无 €2,700 散买锚点，符合 core。
- **重量成就**：对比表 11–12 kg vs 15–16 kg 一行突出，符合「重量成就替代扭矩」。
- **Oi!**：导航与 Footer 均为 **Oi!**（第二个字母小写 i），符合规范。
- **视觉与语气**：整体像骑手对骑手，无夸张营销腔；Trust strip 图标+短句易扫读。

---

## 二、必须改（与 core 冲突）

### 1. 扭矩主推 — 违反「扭矩不主推」

- **现状**：Hero 正文写「80Nm mid-drive」；右侧 spec strip 第三项为「80 Nm · Mid-drive torque」。
- **core**：电机扭矩不主推（供应商参数）；重量成就替代扭矩作为性能表达。
- **改法**：  
  - Hero 一句里**去掉 80Nm**，或改为「precision mid-drive」不写数字。  
  - Spec strip 第三项**不要用扭矩**，改为「105 Di2」或「Carbon C50」等配置点，或只保留两项（9.9kg+ / 150km）。

### 2. 竞品对比 — Orbea 未区分轮毂/中置

- **现状**：Why 区对比表「Canyon / Orbea」一列，Motor type 行为「Mid-drive」vs「Mid-drive」。
- **core**：Orbea Gain M30i 为轮毂电机，对比时必须说明轮毂≠中置，不是同类产品。
- **改法**：二选一——  
  - **A**：表头改为「Canyon (e.g. Grail:ON CF 8)」，去掉 Orbea；或  
  - **B**：保留 Orbea 但 Motor type 行写「Mid-drive」vs「Hub (M30i)」，并在表下加一句：「Orbea Gain M30i uses a hub motor; ride feel and weight distribution differ from mid-drive.」

### 3. 联系邮箱 — 与 core 不一致

- **现状**：Footer 写 `hello@cosmosebike.com`。  
- **core**：对外联系邮箱为 `info@cosmosebike.com`。  
- **改法**：全站统一为 **info@cosmosebike.com**。

---

## 三、建议改（信任与价值证明更清晰）

### 4. 价值证明顺序

- **core 顺序**：① 直销定价 ② 重量成就 ③ 定制深度 ④ 骑行社区（待 Buzz）⑤ 工厂透明；欧洲实体只作信任前提。
- **现状**：Trust strip 顺序为 Showroom → Refund → Direct → Human；Why 区先讲直销再表格（含重量）。
- **建议**：Trust strip 可改为——**Direct from Factory**（直销）→ **Refundable deposit**（钱安全）→ **German Showroom**（能摸到车）→ 第四条若保留可写「Custom colours & spec」或留 Human。这样首屏扫过去先「为什么便宜」再「钱安全」再「能试驾」，与架构一致。

### 5. 「我们是谁」一句话

- **架构**：首页最少要有品牌名 + 一句「我们是谁」（2–3 句即可）。
- **现状**：Footer 有「Factory-direct e-Gravel bikes. Built for riders who know what they're buying.」；Hero 没有明确「Cosmosebike 是谁」。
- **建议**：在 Hero eyebrow 或 subtitle 下加一句，例如：「Cosmosebike — we build one bike, sell it direct, and put it in Germany so you can ride before you buy.」或由 B3/Trust 出 2–3 句品牌起点，不企业腔。

### 6. 续航 150km 免责

- **core**：续航「最高可达 150km」须加条件：测试基于 S 码/约 60kg 骑手，实际受地形/体重/踩踏影响。
- **现状**：Hero spec strip 有「150km · Max range*」，* 在首屏无对应说明；产品页有免责。
- **建议**：在 Hero 的 150km 旁或 spec strip 下方加一行小字：*S frame, ~60 kg rider. Range varies with terrain, weight and pedalling.

### 7. 对比表「Physical showroom」行

- **现状**：「Canyon / Orbea」列写「Online only」。
- **事实**：Canyon 为 DTC 无实体店；Orbea 有经销商可到店。若只对比 Canyon 更准确；若保留 Orbea 建议改为「Varies / Online (Canyon)」或删掉该行避免不准确。

---

## 四、Trust 心中「好的首页」长什么样（可作改版目标）

- **Hero**  
  - 一句话产品：超轻电助力公路/全地形（或现有「Still a bike. Just faster.» 保留）。  
  - 正文：**不出现 80Nm**；用「Shimano 105 Di2. Carbon wheels. Ultra-lightweight e-Gravel — we put the spec you’d expect on an €8k bike into one, and sell it without the middleman.」或等价句。  
  - Spec strip：**9.9kg+** | **150km***（旁或下有小字免责）| **105 Di2** 或 **Carbon C50**（第三项不用扭矩）。  
  - CTA：Reserve Now + Book Test Ride 保留。

- **Trust strip（建议顺序）**  
  1. **Direct from Factory** — No dealer markup · Transparent pricing  
  2. **Refundable Deposit** — Full refund if we can't deliver  
  3. **German Showroom** — Mönchengladbach · Try before you buy  
  4. （可选）**Your spec** — Colours & config, not a random stock bike  

  或保留 Human Support，但保证「直销」和「钱安全」在前两条。

- **Why 区**  
  - 保留「Why €5,199 makes sense」和「The same hardware exists at €8,499」。  
  - 对比表：Motor type 行要么只标 Canyon（Mid-drive），要么 Orbea 写 Hub (M30i) + 表下说明轮毂≠中置。  
  - 重量行 11–12 kg vs 15–16 kg 保留，作为「重量成就」主战场。

- **Founder**  
  - 保持现有 Mia 署名与故事；可选在段落前加一句「We’re Cosmosebike」式开场，不强求。

- **Test Ride**  
  - 保持三步 + 地址 + CTA；无需大改。

- **Footer**  
  - 邮箱改为 **info@cosmosebike.com**；Oi! 保持 **Oi!**（小写 i）；链接与合规按现有即可。

---

## 五、清单小结（给 D2/D4 执行）

| 项 | 类型 | 动作 |
|----|------|------|
| Hero 正文 80Nm | 必改 | 删除或改为「precision mid-drive」不写数字 |
| Spec strip 第三项 80 Nm | 必改 | 改为 105 Di2 / Carbon C50 或移除 |
| 对比表 Orbea Motor type | 必改 | 仅 Canyon 或 Orbea 标 Hub (M30i) + 表下说明 |
| hello@ → info@ | 必改 | 全站 info@cosmosebike.com |
| Trust strip 顺序 | 建议 | Direct → Refund → Showroom → 其他 |
| 「我们是谁」一句 | 建议 | Hero 或 eyebrow 下加 2–3 句品牌起点 |
| 150km 免责 | 建议 | Spec strip 旁或下加 *S frame, ~60kg… |
| 对比表 Showroom 行 | 建议 | 标为 Canyon 或「Varies」避免误伤 Orbea |

---

## 六、用户路径视角下的版式方案（完整路径 → 版式调整）

**前提**：首页要服务多条用户路径——冷流量（看懂→信任→行动）、KOL 粉丝（试驾/预购）、「先试驾再买」、「直接买」、「比价中」。版式（区块顺序、首屏权重、滚动长度）影响「谁先看到什么、何时做决策」。

**当前 V2 顺序**：Hero → Trust strip → Why → Founder → Test Ride → Footer。

### 用户路径与当前版式的问题

| 路径 | 需求 | 当前版式下的体验 |
|------|------|------------------|
| 冷流量·首屏即走 | 一句话产品 + 双 CTA + 能摸到车 | ✅ Hero 已有；Trust strip 第一滚可见 |
| 冷流量·比价型 | 为什么是你、对比表 | 需滚到 Why；若先看到 Founder 会以为「故事为主」，Why 稍晚出现 |
| 先试驾再买 | 试驾流程、地址、Book 按钮 | Hero 有按钮；**完整试驾区块**在 Founder **之后**，要滚过 Why + Founder 才看到三步与地图 |
| 直接买 | 价格、保障、Reserve | ✅ 首屏右侧购买卡 + 保障句 |
| 这家公司靠谱吗 | 真人、地址、退款 | Founder 在 Why 后；Trust strip 已有 Refund + Showroom，Founder 偏后可能被「不滚到底」的人错过 |

**核心张力**：试驾型用户希望**尽早看到「怎么试驾」**（三步+地址）；比价型用户希望**尽早看到「为什么买你」**（Why + 表）。Founder 若太长或太靠后，既拖慢「为什么买你」的扫读，也拖慢「试驾流程」的出现。

---

### 方案 A — 转化优先（Why 保持前，Test Ride 提前）

**顺序**：Hero → Trust strip → Why → **Test Ride（完整块）** → Founder → Footer  

**逻辑**：先建立「为什么买你」（Why + 对比表），再给试驾完整流程与地图，最后用 Founder 收尾（真人背书）。比价型第一滚见 Why；试驾型见 Why 后立刻见试驾流程，不必滚过 Founder。

**优点**：试驾区块提前，减少「想试驾却还没看到流程就离开」；Why 仍在 Trust 后，转化逻辑顺。  
**缺点**：Founder 移到最后，极少数「只信人」的用户要滚到底才看到。

---

### 方案 B — 信任优先（Founder 提前）

**顺序**：Hero → Trust strip → **Founder（缩短版）** → Why → Test Ride → Footer  

**逻辑**：先回答「谁在做这件事」（Founder），再「为什么买你」（Why），再试驾。适合「公司靠不靠谱」敏感型。

**优点**：真人、动机、地址尽早出现，信任前置。  
**缺点**：比价型要滚过 Founder 才看到对比表；Founder 若不够短，首屏后第一块过长，会拖慢「为什么买你」的到达；且冷启动战略是试驾+产品，不是「先信人再信车」。

---

### 方案 C — 试驾优先（Test Ride 最前）

**顺序**：Hero → Trust strip → **Test Ride（完整块）** → Why → Founder → Footer  

**逻辑**：冷启动主推试驾，让「先试再买」的人第一滚就看到试驾流程与地图，再给 Why 和 Founder。

**优点**：试驾转化路径最短。  
**缺点**：「直接买」和「比价型」要滚过整块 Test Ride 才到 Why，可能觉得首页「偏试驾」；且 Trust strip 后立刻接大块试驾，节奏略单一（两屏都是「行动」）。

---

### 批判性对比与结论

| 维度 | A（Why 前，Test Ride 提前到 Founder 前） | B（Founder 前） | C（Test Ride 最前） |
|------|------------------------------------------|----------------|---------------------|
| 比价型 | ✅ Why 第一滚，对比表早到 | ❌ 要滚过 Founder | ❌ 要滚过 Test Ride |
| 试驾型 | ✅ Why 后即试驾流程 | ❌ 要滚过 Founder | ✅ 第一滚即试驾 |
| 直接买 | ✅ 首屏不变 | ✅ 首屏不变 | ✅ 首屏不变 |
| 信任（真人） | Founder 收尾，仍可见 | ✅ 真人最早 | Founder 仍靠后 |
| 滚动负担 | 中；Founder 可略缩短 | 高（Founder 块易长） | 中 |

**结论（Trust）**：  
- **采用方案 A**：顺序定为 Hero → Trust strip → Why → **Test Ride** → Founder → Footer。  
- 理由：兼顾比价型（Why 紧跟 Trust）与试驾型（试驾完整块在 Founder 前，不必滚到底）；Founder 作为「真人背书」收尾，不抢 Why 的节奏；与架构「首页 = 枢纽，把流量引到产品页/试驾页」一致。  
- **附加**：Founder 块可做**视觉/篇幅收缩**（如保留金句+署名+地址 badge，正文压成 1–2 句），减轻滚动、避免中间段过长。

---

### V2 版式优化（已落地）

- **区块顺序**：Why 之后、Founder 之前插入 **Test Ride 完整块**，即顺序为  
  **Hero → Trust strip → Why → Test Ride → Founder → Footer**。  
- **Founder**：保留金句与署名；正文合并为更短一段（不删信息点，仅减冗余），地址 badge 保留，便于「真人+能摸到车」一次扫到。  
- 未改：Hero 左右结构、Trust strip 四格、Why 左右分栏、Footer 结构；仅调整**首屏以下**的区块顺序与 Founder 篇幅。

---

## 七、图片、视频、真实性与版式

**原则**：素材（图/视频）必须为**真实可验证**内容；宁可留占位或留白，不用假图、库存人脸、非本车图。版式须在「首屏看懂、信任、行动」前提下为图/视频留位，且不压过 CTA 与购买卡。

### 7.1 当前 V2 状态（占位与缺口）

| 位置 | 现状 | 真实性风险 |
|------|------|------------|
| **Hero** | 无主图/主视频；左文右卡，背景为渐变+噪点 | 无图则无「假车」风险；若后续加图须为本车/本场景 |
| **产品页 Gallery** | 🚴 emoji 占位，无真实车图 | 上线前必须替换为 VAPOR SL 实拍（三色与 core 一致） |
| **Founder 区块** | 📷「Founder photo here」占位 | trust-agent-spec：无真人照片时可只做品牌起点叙事，**禁止用库存人脸**；有真实 Mia 照再上 |
| **Test Ride 地图** | 抽象 map-bg + 图钉，无真实外景 | 可选：Deruiz 外景/门头实拍或 Google 静态图，增强「能摸到车」 |
| **Why 区** | 纯文字+表格，无图/视频 | 若加视频须为实拍（车/路/试驾），不用 generic stock |

### 7.2 图片规范（Trust + B4 视觉语言）

- **产品图**：仅使用 **VAPOR SL 实拍**（Moonlight / Eclipse / Glacier 与 core 一致）；多角度、可含骑行场景；禁止其他品牌车、渲染假图冒充实拍。
- **创始人**：**有真实 Mia 授权照则用**；无则保留占位或去掉图区，仅保留金句+署名+地址；**禁止库存/模特人脸**。
- **场景图**：真实骑行、自然光、欧洲场景；agents.md B4：禁止棚拍白底（技术文档除外）、摆拍笑脸、过度 HDR。
- **试驾/地点**：Deruiz 门头或展厅实拍 > 静态地图 > 抽象图；若有真人试驾照须获授权。
- **尺寸与性能**：Hero 主图若加，参考 B4 网站首屏 Banner 最小 1440×800；移动端考虑 390×600；懒加载、避免 LCP 恶化。

### 7.3 视频规范

- **可放位置**：Hero 背景/主视觉、Why 区「为什么买你」、Test Ride 区「真实骑过再决定」。
- **真实性**：仅**实拍**——本车、真实路面、真实骑手或试驾场景；禁止 generic stock e-bike 视频冒充 VAPOR SL。
- **版式与体验**：自动播放须静音、可暂停；移动端慎用首屏全屏自动播（流量与 LCP）；若 Hero 用视频，须保证左侧 CTA 与右侧购买卡仍清晰可点，不被压过。
- **时长**：首屏若用视频，建议 15–30s 循环或短视频；长片放产品页或 Story 页。

### 7.4 真实性与占位策略

| 内容类型 | 有真实素材时 | 无真实素材时（占位策略） |
|----------|--------------|---------------------------|
| 产品主图 | 实拍 VAPOR SL，三色 | 保留占位+文案「实车图即将更新」或仅 spec/卡，不造假图 |
| 创始人照片 | Mia 授权照 | 无图区或「Founder photo here」占位；不换库存脸 |
| 试驾/地点 | Deruiz 外景或试驾实拍 | 保留地图+地址+步骤；不加假门店图 |
| 车主/测评 | 真实交付后收集 | 不设区块或预留「Coming soon」；不编造引用 |
| 视频 | 实拍车/路/试驾 | 不播 generic 视频；可无视频或后续补 |

### 7.5 版式与图/视频的配合

- **Hero**  
  - **无主图**（当前）：左文右卡，首屏即双 CTA + 购买卡；信息密度高，适合「看懂即行动」。  
  - **若加主图**：建议图在**右**（与现有右侧购买卡二选一或叠在卡后）、或全幅背景**不压住**左侧标题与 CTA；移动端图与卡上下堆叠时，**CTA 与 Reserve 按钮**保持首屏内可见。  
  - **若加 Hero 视频**：同图；静音、短循环；确保 CTA 与价格/保障句不被遮挡。

- **产品页**  
  - Gallery 为主图区；真实车图进入后，缩略图与主图切换逻辑保持，不因图多而压过选配与 Reserve 按钮。

- **Founder**  
  - 有照片时：左图右文或上文下图均可，署名与地址 badge 保持显眼。  
  - 无照片时：可收成单栏纯文+署名+地址，减少空白感（当前占位框可缩小或去掉）。

- **Test Ride**  
  - 地图/外景若为实拍，与三步流程同屏或左右分栏；不因大图拉长滚动导致 CTA 被推远。

### 7.6 V2 落地建议（给 D4 / B4）

1. **上线前必换**：产品页 Gallery 占位 → VAPOR SL 实拍（至少三色各一主图）。  
2. **Founder**：若暂无 Mia 授权照，保留占位或收成无图版；绝不使用库存人脸。  
3. **Hero**：若加主图/视频，交付时按 §7.5 检查 CTA/购买卡首屏可见性与移动端顺序。  
4. **所有图/视频**：在代码或 CMS 中标注来源（实拍/授权），便于日后审查与合规。

---

*Trust 审阅；与 core、website-architecture-v1 一致。V2 文案与版式已按本审阅更新；§7 供 D4/B4 落地图/视频与版式时执行。修改后建议再跑 §10 关键页抽检清单。*
