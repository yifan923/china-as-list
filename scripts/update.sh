
#!/bin/bash

# 出现错误立即退出
set -e

# 创建目录
mkdir -p data

echo "更新中国电信..."
bgpq4 -4 AS4134 > data/ct.txt

echo "更新中国移动..."
bgpq4 -4 AS9808 > data/cm.txt

echo "更新中国联通..."
bgpq4 -4 AS4837 > data/cu.txt

echo "完成"
