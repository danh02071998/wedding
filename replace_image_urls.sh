#!/bin/bash

# Backup file HTML
cp index.html index.html.backup

echo "🔄 Thay thế tất cả URL ảnh trong file HTML..."

# Thay thế tất cả href ảnh
sed -i '' 's|href="https://thiepcuoionline.net/wp-content/uploads/[^"]*/\([^/"]*\.jpg\)"|href="down-anh/\1"|g' index.html

# Thay thế tất cả data-src ảnh JPG
sed -i '' 's|data-src="https://thiepcuoionline.net/wp-content/uploads/[^"]*/\([^/"]*\.jpg\)"|data-src="down-anh/\1"|g' index.html

# Thay thế tất cả data-srcset ảnh JPG (giữ lại chỉ ảnh chính)
sed -i '' 's|data-srcset="https://thiepcuoionline.net/wp-content/uploads/[^"]*/\([^/"]*\.jpg\)[^"]*"|data-srcset="down-anh/\1 1365w"|g' index.html

# Thay thế khach-nha-trai-no.png trong schema
sed -i '' 's|https://chinhhuongwedding.thiepcuoionline.net/wp-content/themes/flatsome-child/img/khach-nha-trai-no.png|down-anh/khach-nha-trai-no.png|g' index.html

echo "✅ Hoàn thành thay thế URL ảnh!"

# Hiển thị kết quả
echo "📊 Thống kê thay thế:"
echo "- Số href ảnh đã thay thế: $(grep -c 'href="down-anh/' index.html)"
echo "- Số data-src ảnh đã thay thế: $(grep -c 'data-src="down-anh/' index.html)"
echo "- File backup: index.html.backup"