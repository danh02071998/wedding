#!/bin/bash

# Script để download tất cả ảnh từ file HTML
cd /Users/admin/Desktop/thiep-cuoi

# Tạo thư mục down-anh nếu chưa có
mkdir -p down-anh

echo "🔍 Đang tìm kiếm tất cả URL ảnh trong file HTML..."

# Extract tất cả URL ảnh từ HTML file
grep -oE 'https://[^"]*\.(jpg|jpeg|png|gif|webp)' index.html | sort | uniq > temp_image_urls.txt

echo "📋 Danh sách URL ảnh đã tìm thấy:"
cat temp_image_urls.txt

echo ""
echo "⬇️ Bắt đầu download ảnh..."

# Counter cho progress
total=$(wc -l < temp_image_urls.txt)
current=0

# Download từng ảnh
while IFS= read -r url; do
    ((current++))
    
    # Lấy tên file từ URL
    filename=$(basename "$url" | sed 's/\?.*$//')
    
    # Nếu file name quá dài hoặc có ký tự đặc biệt, tạo tên đơn giản hơn
    if [[ ${#filename} -gt 100 ]]; then
        extension="${filename##*.}"
        filename="image_${current}.${extension}"
    fi
    
    echo "[$current/$total] Downloading: $filename"
    
    # Download với curl
    curl -s -L -o "down-anh/$filename" "$url"
    
    # Kiểm tra kết quả download
    if [[ $? -eq 0 && -f "down-anh/$filename" ]]; then
        filesize=$(stat -f%z "down-anh/$filename" 2>/dev/null || echo "0")
        if [[ $filesize -gt 0 ]]; then
            echo "  ✅ Thành công: $filename (${filesize} bytes)"
        else
            echo "  ❌ Lỗi: File rỗng - $filename"
            rm -f "down-anh/$filename"
        fi
    else
        echo "  ❌ Lỗi download: $filename"
    fi
    
done < temp_image_urls.txt

# Cleanup
rm -f temp_image_urls.txt

echo ""
echo "🎉 Hoàn thành! Kiểm tra thư mục down-anh:"
ls -la down-anh/
echo ""
echo "📊 Tổng số ảnh đã download: $(ls down-anh/ | wc -l)"