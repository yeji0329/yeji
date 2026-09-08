#!/usr/bin/env bash

# Task 07: 分析日志文件
# Usage: ./scripts/analyze.sh FILE

# 要求 2：没有参数时输出用法并返回非零
if [[ $# -ne 1 ]]; then
    echo "Usage: ./scripts/analyze.sh FILE"
    exit 1
fi

log_file="$1"

# 要求 3：文件不存在时输出错误并返回非零
if [[ ! -f "$log_file" ]]; then
    echo "Error: file '$log_file' not found"
    exit 1
fi

# 要求 4：正常分析
total_error=$(grep "ERROR" "$log_file" | wc -l)
top_code=$(
    grep "ERROR" "$log_file" \
    | cut -d' ' -f5 \
    | cut -d'=' -f2 \
    | sort \
    | uniq -c \
    | sort -nr \
    | head -1 \
    | awk '{print $2}'
)

echo "Total ERROR: $total_error"
echo "Top Code: $top_code"
