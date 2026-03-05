# Coach 审阅：B4 产出「Media Teaser」HTML

**审阅对象**：`<!DOCTYPE html>.html`（VAPOR SL - Media Teaser）  
**角色**：Coach [C] — 对照 core、memory、B4 视觉规范，判断是否清晰表达我们的意思。

---

## 结论：**整体合格，表达清晰，小处可微调**

---

## 一、与 core 的符合度

| 项目 | 要求（core） | 本页表现 | 判定 |
|------|--------------|----------|------|
| 产品 | VAPOR SL | 标题为 "VAPOR SL - Media Teaser"，正文未再大字写产品名 | ✓ 可接受（Teaser 偏品牌+卖点）；若给媒体可考虑在 hero 下加一行 "VAPOR SL" 小字 |
| 定价 | €4,799 | Footer 明确 €4,799 | ✓ |
| 重量 | from 9.9kg | 9.9KG + Toray T800 + 单手可举 | ✓ |
| 续航 | 诚实 120km | 120KM + "Honest Real-World Range" | ✓ |
| 试驾 | Deruiz · Mönchengladbach | "Available for test rides & pickup at Deruiz Showroom · Mönchengladbach, Germany" | ✓ |
| 禁用词 | 无 600W / certified / road legal / CE | 未出现 | ✓ |
| 合规表述 | 不出现 certified 等 | 用了 "EU compliant" | ⚠️ 灰色：core 写「规避法规敏感词」；"EU compliant" 比 "certified" 弱，媒体常用。若严格保守可删或改为不写；否则保留并注明对外追问时以 core 口径回应 |
| 竞品叙事 | €5,000 less、status quo | "Same Toray carbon. Same Shimano 105 Di2. €5,000 less than the €10,000+ status quo" | ✓ |
| 对外话术 | European-standard, factory-direct | "European-standard performance direct from the factory"、"kill the middleman tax" | ✓ |

---

## 二、与 memory（我们要什么、怎么讲）的符合度

- **Tagline**："Light enough to carry. Powerful enough to fly." → 主标题完整呈现 ✓  
- **Explorers First. Engineers Second.** → 作为 tagline 在 header ✓  
- **品牌故事感**：未用 memory 原句 "We built it for that moment you look at a map..."，但用了同向的 "We didn't build it for spec sheets. We built it to kill the middleman tax and give you European-standard performance direct from the factory." — 反品牌税、工程师直接、工厂直发，**意思一致** ✓  
- **3P**：P1 轻量(9.9kg)、P2 诚实续航(120km)、P3 无人区定价(€5,000 less) 均清晰 ✓  

---

## 三、与 B4 视觉规范（agents.md）的符合度

- **色彩**：主色 #0A0A0A、辅色 #F0EDE8、强调色砖红 #E84A2E；每物料只一强调色 ✓  
- **字体**：Bebas Neue（标题）+ DM Sans（正文）✓  
- **排版**：大标题全大写、数字超大(9.9/120/€4,799)、留白充足 ✓  
- **禁止项**：无科技蓝、无纯白背景、无圆体/手写体 ✓  

---

## 四、Coach 建议（已按建议修改）

1. **EU compliant**：已删除 "EU compliant"，仅保留 "Precision mid-drive system."（100% 保守）。  
2. **VAPOR SL 露出**：已在 hero 下方增加一行 "VAPOR SL" 产品名（Bebas Neue，28px，灰色），便于媒体一眼识别。  
3. **Deruiz 表述**：已改为与 core 一致："Available for test rides and pickup at our partner showroom · Deruiz, Mönchengladbach, Germany"。

---

## 五、单页 PDF 转化办法

该 HTML 已按 A4（210×297mm）单页排版，转 PDF 可采用：

### 方法 A：浏览器打印（零依赖）
1. 用 Chrome / Safari / Edge 打开该 HTML 文件。  
2. `Cmd + P`（Mac）或 `Ctrl + P`（Windows）→ 目标选「另存为 PDF」。  
3. 纸张选 A4，边距选「无」或「最小」，背景图形勾选。  
4. 保存即得单页 PDF。

### 方法 B：命令行（可重复、可自动化）
- **Chrome Headless**（需已安装 Chrome）：
  ```bash
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --print-to-pdf="/Users/miaworkbook/Downloads/Media-Teaser-VAPOR-SL.pdf" "file:///Users/miaworkbook/Downloads/<!DOCTYPE%20html>.html" --no-pdf-header-footer --print-to-pdf-no-header
  ```
  若路径或文件名含空格/特殊字符，可先把 HTML 复制到无空格路径再执行。

- **wkhtmltopdf**（若已安装）：
  ```bash
  wkhtmltopdf --page-size A4 --no-footer-line --no-header-line "file:///Users/miaworkbook/Downloads/<!DOCTYPE%20html>.html" /Users/miaworkbook/Downloads/Media-Teaser-VAPOR-SL.pdf
  ```

### 方法 C：项目内脚本（已提供）
在项目里已放 `scripts/html-to-pdf.sh`，用系统 Chrome 无头模式把 HTML 打成单页 PDF。

**用法**（建议先把 B4 的 HTML 在 Finder 里另存为 `Media-Teaser.html`，再执行）：
```bash
cd /Users/miaworkbook/Desktop/海外商业化项目
./scripts/html-to-pdf.sh ~/Downloads/Media-Teaser.html ~/Downloads/Media-Teaser-VAPOR-SL.pdf
```

若源文件是带尖括号的 `<!DOCTYPE html>.html`，在终端里要用**单引号**包住文件名（尖括号在 shell 里是特殊字符）：
```bash
cp ~/Downloads/'<!DOCTYPE html>.html' ~/Downloads/Media-Teaser.html
./scripts/html-to-pdf.sh ~/Downloads/Media-Teaser.html ~/Downloads/Media-Teaser-VAPOR-SL.pdf
```
或直接对原文件转 PDF（单引号不能少）：
```bash
./scripts/html-to-pdf.sh ~/Downloads/'<!DOCTYPE html>.html' ~/Downloads/Media-Teaser-VAPOR-SL.pdf
```

---

**总结**：B4 这份 Media Teaser 在 core、memory、B4 规范上**表达清晰、意思到位**；仅 "EU compliant" 与 VAPOR SL 露出两处属可选微调。单页 PDF 用浏览器打印即可，若要自动化可用命令行或项目内脚本。
