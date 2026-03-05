#!/usr/bin/env bash
# 将单页 HTML 转为单页 PDF（依赖系统已安装 Chrome）
# 用法: ./scripts/html-to-pdf.sh [输入的.html 路径] [输出的.pdf 路径]
# 例:   ./scripts/html-to-pdf.sh ~/Downloads/teaser.html ~/Downloads/Media-Teaser.pdf

set -e
HTML="${1:-}"
PDF="${2:-}"

if [[ -z "$HTML" ]]; then
  echo "用法: $0 <输入.html> [输出.pdf]"
  echo "例:   $0 ~/Downloads/teaser.html ~/Downloads/Media-Teaser.pdf"
  exit 1
fi

if [[ ! -f "$HTML" ]]; then
  echo "错误: 找不到文件: $HTML"
  exit 1
fi

if [[ -z "$PDF" ]]; then
  PDF="${HTML%.*}.pdf"
fi

# 转为绝对路径 + file://
HTML_ABS="$(cd "$(dirname "$HTML")" && pwd)/$(basename "$HTML")"
HTML_URI="file://${HTML_ABS// /%20}"

CHROME=""
for c in "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
         "/Applications/Chromium.app/Contents/MacOS/Chromium"; do
  if [[ -x "$c" ]]; then
    CHROME="$c"
    break
  fi
done

if [[ -z "$CHROME" ]]; then
  echo "错误: 未找到 Chrome/Chromium。请用浏览器打开 HTML → Cmd+P → 另存为 PDF。"
  exit 1
fi

echo "输入: $HTML"
echo "输出: $PDF"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer --print-to-pdf-no-header \
  --print-to-pdf="$PDF" "$HTML_URI"
echo "已生成: $PDF"
