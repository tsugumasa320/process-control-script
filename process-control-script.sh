#!/bin/bash

# プロセス名を指定
process_names=("Live" "Max")

# 指定したプロセス名に一致するプロセスのPIDを取得
for process_name in "${process_names[@]}"; do
    pid=""
    while IFS= read -r line; do
        if [[ "$line" == *"$process_name"* ]]; then
            pid=$(echo "$line" | awk '{print $2}')
            break
        fi
    done <<<"$(ps aux)"

    # プロセスが見つかった場合
    if [ -n "$pid" ]; then
        # PIDを使用して他の操作を実行
        # 例: 優先度を変更
        sudo renice -20 -p $pid
        echo "プロセス $process_name (PID: $pid) の優先度を変更しました。"
    else
        echo "プロセス $process_name は実行中ではありません。"
    fi
done
