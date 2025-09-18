#!/bin/bash

# Script để tải về tất cả các external assets từ thiepcuoionline.net và các nguồn khác
# Chạy với: bash download_external_assets.sh

echo "Bắt đầu tải về external assets..."

# Tạo cấu trúc thư mục cần thiết
echo "Tạo cấu trúc thư mục..."
mkdir -p assets/css/themes/flatsome/assets/css
mkdir -p assets/css/themes/flatsome-child
mkdir -p assets/css/themes/flatsome/inc/shortcodes/ux_countdown
mkdir -p assets/js/plugins/ar-contactus/res/js
mkdir -p assets/js/plugins/contact-form-7/includes/swv/js
mkdir -p assets/js/plugins/contact-form-7/includes/js
mkdir -p assets/js/wp-includes/js/dist/vendor
mkdir -p assets/images/uploads/2024/06
mkdir -p assets/images/uploads/2023/03
mkdir -p assets/fonts/google-fonts
mkdir -p assets/css/plugins/contact-form-7/includes/css
mkdir -p assets/css/plugins/ar-contactus/res/css
mkdir -p assets/fonts/fontawesome/releases/v5.8.1/css

echo "Bắt đầu tải CSS files..."

# CSS từ thiepcuoionline.net
echo "Tải flatsome.css..."
curl -L "https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/flatsome.css?ver=3.15.7" \
  -o "assets/css/themes/flatsome/assets/css/flatsome.css" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải flatsome-child style.css..."
curl -L "https://thiepcuoionline.net/wp-content/themes/flatsome-child/style.css?ver=3.0" \
  -o "assets/css/themes/flatsome-child/style.css" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải effects.css..."
curl -L "https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/effects.css?ver=3.15.7" \
  -o "assets/css/themes/flatsome/assets/css/effects.css" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải ux-countdown.css..."
curl -L "https://thiepcuoionline.net/wp-content/themes/flatsome/inc/shortcodes/ux_countdown/ux-countdown.css?ver=6.4.1" \
  -o "assets/css/themes/flatsome/inc/shortcodes/ux_countdown/ux-countdown.css" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải ie-fallback.css..."
curl -L "https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/ie-fallback.css" \
  -o "assets/css/themes/flatsome/assets/css/ie-fallback.css" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Bắt đầu tải JavaScript files..."

# JavaScript từ thiepcuoionline.net
echo "Tải contactus.min.js..."
curl -L "https://thiepcuoionline.net/wp-content/plugins/ar-contactus/res/js/contactus.min.js?ver=2.2.6" \
  -o "assets/js/plugins/ar-contactus/res/js/contactus.min.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải scripts.js..."
curl -L "https://thiepcuoionline.net/wp-content/plugins/ar-contactus/res/js/scripts.js?ver=2.2.6" \
  -o "assets/js/plugins/ar-contactus/res/js/scripts.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải contact-form-7 index.js (swv)..."
curl -L "https://thiepcuoionline.net/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.4" \
  -o "assets/js/plugins/contact-form-7/includes/swv/js/index.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải contact-form-7 index.js..."
curl -L "https://thiepcuoionline.net/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.4" \
  -o "assets/js/plugins/contact-form-7/includes/js/index.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải wp-polyfill-inert.min.js..."
curl -L "https://thiepcuoionline.net/wp-includes/js/dist/vendor/wp-polyfill-inert.min.js?ver=3.1.2" \
  -o "assets/js/wp-includes/js/dist/vendor/wp-polyfill-inert.min.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải regenerator-runtime.min.js..."
curl -L "https://thiepcuoionline.net/wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.14.0" \
  -o "assets/js/wp-includes/js/dist/vendor/regenerator-runtime.min.js" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Bắt đầu tải Images..."

# Images từ thiepcuoionline.net
echo "Tải Untitled-2.png..."
curl -L "https://thiepcuoionline.net/wp-content/uploads/2024/06/Untitled-2.png" \
  -o "assets/images/uploads/2024/06/Untitled-2.png" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải Thiet-ke-chua-co-ten-61.png..."
curl -L "https://thiepcuoionline.net/wp-content/uploads/2023/03/Thiet-ke-chua-co-ten-61.png" \
  -o "assets/images/uploads/2023/03/Thiet-ke-chua-co-ten-61.png" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Tải Thiet-ke-chua-co-ten-61-300x71.png..."
curl -L "https://thiepcuoionline.net/wp-content/uploads/2023/03/Thiet-ke-chua-co-ten-61-300x71.png" \
  -o "assets/images/uploads/2023/03/Thiet-ke-chua-co-ten-61-300x71.png" \
  --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

echo "Bỏ qua Google Fonts - sử dụng từ CDN..."

# Google Fonts sẽ được load từ CDN để đảm bảo hiệu suất tốt nhất

echo "Bắt đầu tải Plugin CSS..."

# CSS từ plugin references trong file đã có local
if [ -f "wp-content/plugins/contact-form-7/includes/css/styles.css" ]; then
  echo "Copy contact-form-7 styles.css..."
  mkdir -p assets/css/plugins/contact-form-7/includes/css
  cp "wp-content/plugins/contact-form-7/includes/css/styles.css" "assets/css/plugins/contact-form-7/includes/css/"
fi

if [ -f "wp-content/plugins/ar-contactus/res/css/contactus.min.css" ]; then
  echo "Copy ar-contactus contactus.min.css..."
  mkdir -p assets/css/plugins/ar-contactus/res/css
  cp "wp-content/plugins/ar-contactus/res/css/contactus.min.css" "assets/css/plugins/ar-contactus/res/css/"
fi

if [ -f "wp-content/plugins/ar-contactus/res/css/generated-desktop.css" ]; then
  echo "Copy ar-contactus generated-desktop.css..."
  cp "wp-content/plugins/ar-contactus/res/css/generated-desktop.css" "assets/css/plugins/ar-contactus/res/css/"
fi

if [ -f "releases/v5.8.1/css/all.css" ]; then
  echo "Copy FontAwesome all.css..."
  mkdir -p assets/fonts/fontawesome/releases/v5.8.1/css
  cp "releases/v5.8.1/css/all.css" "assets/fonts/fontawesome/releases/v5.8.1/css/"
fi

echo ""
echo "✅ Hoàn thành tải về external assets!"
echo ""
echo "Cấu trúc thư mục đã tạo:"
echo "assets/"
echo "├── css/"
echo "│   ├── themes/"
echo "│   └── plugins/"
echo "├── js/"
echo "│   ├── plugins/"
echo "│   └── wp-includes/"
echo "├── images/"
echo "│   └── uploads/"
echo "└── fonts/"
echo "    ├── google-fonts/"
echo "    └── fontawesome/"
echo ""
echo "Bước tiếp theo: Chạy script replace_external_urls.sh để cập nhật đường dẫn thiepcuoionline.net trong HTML"