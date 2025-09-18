#!/bin/bash

# Script để thay thế tất cả external URLs bằng local paths
# Chạy với: bash replace_external_urls.sh

echo "Bắt đầu thay thế external URLs bằng local paths..."

# Tạo backup của file gốc
echo "Tạo backup file index.html -> index.html.backup"
cp index.html index.html.backup

# Thay thế CSS từ thiepcuoionline.net
echo "Thay thế CSS URLs..."

# Flatsome CSS
sed -i '' 's|https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/flatsome.css?ver=3.15.7|assets/css/themes/flatsome/assets/css/flatsome.css|g' index.html

# Flatsome child style
sed -i '' 's|https://thiepcuoionline.net/wp-content/themes/flatsome-child/style.css?ver=3.0|assets/css/themes/flatsome-child/style.css|g' index.html

# Effects CSS
sed -i '' 's|https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/effects.css?ver=3.15.7|assets/css/themes/flatsome/assets/css/effects.css|g' index.html

# UX Countdown CSS
sed -i '' 's|https://thiepcuoionline.net/wp-content/themes/flatsome/inc/shortcodes/ux_countdown/ux-countdown.css?ver=6.4.1|assets/css/themes/flatsome/inc/shortcodes/ux_countdown/ux-countdown.css|g' index.html

# IE Fallback CSS
sed -i '' 's|https://thiepcuoionline.net/wp-content/themes/flatsome/assets/css/ie-fallback.css|assets/css/themes/flatsome/assets/css/ie-fallback.css|g' index.html

# Thay thế JavaScript URLs
echo "Thay thế JavaScript URLs..."

# AR Contactus JS
sed -i '' 's|https://thiepcuoionline.net/wp-content/plugins/ar-contactus/res/js/contactus.min.js?ver=2.2.6|assets/js/plugins/ar-contactus/res/js/contactus.min.js|g' index.html

sed -i '' 's|https://thiepcuoionline.net/wp-content/plugins/ar-contactus/res/js/scripts.js?ver=2.2.6|assets/js/plugins/ar-contactus/res/js/scripts.js|g' index.html

# Contact Form 7 JS
sed -i '' 's|https://thiepcuoionline.net/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.4|assets/js/plugins/contact-form-7/includes/swv/js/index.js|g' index.html

sed -i '' 's|https://thiepcuoionline.net/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.4|assets/js/plugins/contact-form-7/includes/js/index.js|g' index.html

# WordPress core JS
sed -i '' 's|https://thiepcuoionline.net/wp-includes/js/dist/vendor/wp-polyfill-inert.min.js?ver=3.1.2|assets/js/wp-includes/js/dist/vendor/wp-polyfill-inert.min.js|g' index.html

sed -i '' 's|https://thiepcuoionline.net/wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.14.0|assets/js/wp-includes/js/dist/vendor/regenerator-runtime.min.js|g' index.html

# Thay thế Image URLs
echo "Thay thế Image URLs..."

# Images từ uploads
sed -i '' 's|https://thiepcuoionline.net/wp-content/uploads/2024/06/Untitled-2.png|assets/images/uploads/2024/06/Untitled-2.png|g' index.html

sed -i '' 's|https://thiepcuoionline.net/wp-content/uploads/2023/03/Thiet-ke-chua-co-ten-61.png|assets/images/uploads/2023/03/Thiet-ke-chua-co-ten-61.png|g' index.html

sed -i '' 's|https://thiepcuoionline.net/wp-content/uploads/2023/03/Thiet-ke-chua-co-ten-61-300x71.png|assets/images/uploads/2023/03/Thiet-ke-chua-co-ten-61-300x71.png|g' index.html

# Bỏ qua Google Fonts - giữ nguyên để sử dụng từ CDN
echo "Giữ nguyên Google Fonts từ CDN..."

# Bỏ hoặc comment các external links không cần thiết
echo "Comment các external links không cần thiết..."

# Comment DNS prefetch links
sed -i '' 's|<link rel="dns-prefetch" href="//cdn.jsdelivr.net" />|<!-- <link rel="dns-prefetch" href="//cdn.jsdelivr.net" /> -->|g' index.html

sed -i '' 's|<link rel="dns-prefetch" href="//use.fontawesome.com" />|<!-- <link rel="dns-prefetch" href="//use.fontawesome.com" /> -->|g' index.html

# Giữ nguyên Google Fonts DNS prefetch
# sed -i '' 's|<link rel="dns-prefetch" href="//fonts.googleapis.com" />|<!-- <link rel="dns-prefetch" href="//fonts.googleapis.com" /> -->|g' index.html

# Comment canonical và pingback (optional - nếu muốn hoàn toàn offline)
# sed -i '' 's|<link rel="canonical" href="https://thiepcuoionline.net" />|<!-- <link rel="canonical" href="https://thiepcuoionline.net" /> -->|g' index.html
# sed -i '' 's|<link rel="pingback" href="https://thiepcuoionline.net/xmlrpc.php" />|<!-- <link rel="pingback" href="https://thiepcuoionline.net/xmlrpc.php" /> -->|g' index.html

# Comment các API links của WordPress
sed -i '' 's|<link rel="https://api.w.org/" href="https://thiepcuoionline.net/wp-json-v9/" />|<!-- <link rel="https://api.w.org/" href="https://thiepcuoionline.net/wp-json-v9/" /> -->|g' index.html

sed -i '' 's|<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://thiepcuoionline.net/xmlrpc.php?rsd" />|<!-- <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://thiepcuoionline.net/xmlrpc.php?rsd" /> -->|g' index.html

sed -i '' 's|<link rel="shortlink" href="https://thiepcuoionline.net/?p=10754" />|<!-- <link rel="shortlink" href="https://thiepcuoionline.net/?p=10754" /> -->|g' index.html

echo ""
echo "✅ Hoàn thành thay thế URLs!"
echo ""
echo "📁 File backup: index.html.backup"
echo "📄 File đã cập nhật: index.html"
echo ""
echo "Các thay đổi đã thực hiện:"
echo "• CSS từ thiepcuoionline.net → assets/css/"
echo "• JavaScript từ thiepcuoionline.net → assets/js/"
echo "• Images từ thiepcuoionline.net → assets/images/"
echo "• Giữ nguyên Google Fonts từ CDN"
echo "• Comment các external API links không cần thiết"
echo ""
echo "Bước tiếp theo: Mở index.html trong browser để test!"