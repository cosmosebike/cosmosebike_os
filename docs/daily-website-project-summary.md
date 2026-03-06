# Daily · 网站项目总结（德语 soft 站 / cosmosebike.com）

**用途**：项目背景、目的、思考、内容、用户感受与转化路径一页纸；与 `docs/dealer-street-german-site-design.md`、`docs/soft-page-kol-street-dealer-coach.md`、core 一致。

---

## 一、项目背景

- **cosmosebike.com** 目前为自建代码，将迁移至 **Shopify**；需在**同一后台**下做德语可预订页，十台现车、颜色尺码与 **core** 一致。
- **真实库存与可卖数量以 core 为准（仅十台）**；KOL/宣传用的「首批 20 台、已订数」等为 **Buzz 叙事口径**，**不得写入 core**，也不说「只有十台只卖六台」等错误表述。
- **四月活动**：定金 €800（PayPal）、四月提货；付尾款时定金当 €1000 抵扣 → 实付 €4,999；**首批用户预定方法**，现在接受预定。

---

## 二、目的

| 对谁 | 目的 |
|------|------|
| **KOL / 媒体**（发邮件前） | 点进链接 30 秒内看到：品牌真实存在、有人在买、德国落地 → **敢回 yes**，不是先买车。 |
| **终端用户**（KOL 内容发布后） | 判断不会跑路 → 看到德国地址、有人已在买、低门槛动作（留邮箱或付定金）→ 预订。 |
| **BD / Street** | 邮件有后盾：「你可以先看看我们的预订页面」有分量；空站或纯参数页会关掉不回复。 |

→ **一个页面，服务两个时间段的两类人**；架构现在就要为两阶段预留。

---

## 三、思考（Buzz / Street / Dealer / Coach 共识）

- **Buzz**：页面对 KOL 的价值不是卖货，是**押上信誉的理由**——真实、有人在买、德国地址；叙事可用「首批 20 台、已订数」，真实以 core 十台为准。
- **Street**：页面是 BD 邮件的后盾；没有它邮件成功率减半；有它「先看预订页」有分量。
- **Dealer**：从 KOL 视频点进来的用户要看到德国实体、有人已在买、低门槛动作（€800 抵扣 €1000、现在接受预定）。
- **Coach**：同一页面满足「现在 KOL 敢回复」+「之后用户敢留资/付定金」。

---

## 四、内容与结构（参考 competitors-reference）

- **结构**：Hero（大图+一句卖点+主 CTA）→ Trust（德国现货、Deruiz、Mönchengladbach、已有人预订）→ Specs（与 core 一致：From 9.9kg、85Nm、250W、105 Di2、碳轮）→ CTA（预订、PayPal €800）→ Footer（Impressum、Datenschutz）。
- **文案**：德语；真实台数/颜色/尺码只出 core；Buzz 叙事台数仅用于对外话术，不进 core。
- **参考**：`docs/competitors-reference.md` 里各竞品页的 Hero → Trust → Specs → CTA 顺序。

---

## 五、用户感受与转化路径

### 路径 A：KOL / 媒体（发邮件前）

1. 收到邮件 → 点链接或 Google。
2. **感受**：品牌真实、有人在买、德国有落地 → 不丢脸、不是第一个冒险的人。
3. **动作**：回复邮件 say yes。

### 路径 B：终端用户（KOL 内容发布后）

1. 从 KOL 视频/贴文点进。
2. **感受**：不会跑路 → 有德国地址、有人已在买、低门槛（留邮箱或付 €800 定金）。
3. **动作**：留邮箱 **或** PayPal €800 定金 → 四月提货、尾款定金当 €1000 → 实付 €4,999。

### 路径 C：C 端直接进

1. 进德语页（/de/ 或 /de/soft）。
2. 同上：信任 → 预订 → PayPal €800 → 四月提货、€4,999。

---

## 六、分工与文档

| 谁 | 做什么 |
|----|--------|
| **Dealer** | 定转化路径与文案需求、验收 D4 落站。 |
| **D2** | 出德语首屏/卖点/预订 CTA 文案。 |
| **D4** | Shopify 德语页、十台与结账、PayPal €800、utm 归因。 |
| **Buzz** | KOL 链接（德语页 + utm_source）、叙事台数仅对外话术。 |
| **Street** | 与 Deruiz 对四月提货、谁接待。 |

**相关文档**：`docs/dealer-street-german-site-design.md`、`docs/soft-page-kol-street-dealer-coach.md`、`docs/competitors-reference.md`、`docs/dealer-german-soft-site-pages.md`、**core.md**。

---

*Daily 总结；与 Mia 与 core 拍板一致。*
