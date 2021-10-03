#!/usr/bin/env bash

# 检查域名连通性
check_url() {
    HTTP_CODE=$(curl -o /dev/null --connect-timeout 3 -s -w "%{http_code}" $1)
    if [ $HTTP_CODE -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# 获取有效 自动更新文件 链接
get_update_bilibili() {
    bilibili_list=(https://ghproxy.com/https://raw.githubusercontent.com/Tiziyi/bili/main/bili_update.sh https://raw.githubusercontent.com/Tiziyi/bili/main/bili_update.sh https://raw.sevencdn.com/Tiziyi/bili/main/bili_update.sh)
    for url in ${bilibili_list[@]}; do
        check_url $url
        if [ $? = 0 ]; then
            valid_url=$url
            echo "使用链接 $url"
            break
        fi
    done
}

get_update_bilibili && ql raw $url
echo "已为您添加自动更新任务"
sleep 5
echo "运行一次自动更新"
task raw_main_bili_update.sh
sleep 5
# 获取有效 bili.sh 链接
get_sh_bili() {
    bili_list=(https://ghproxy.com/https://raw.githubusercontent.com/Tiziyi/bili/main/bili.sh https://raw.githubusercontent.com/Tiziyi/bili/main/bili.sh https://raw.sevencdn.com/Tiziyi/bili/main/bili.sh)
    for url in ${bili_list[@]}; do
        check_url $url
        if [ $? = 0 ]; then
            valid_url=$url
            echo "使用链接 $url"
            break
        fi
    done
}

get_sh_bili && ql raw $url
echo "已为您添加运行海尔破"
sleep 5

# 提示配置结束
echo -e "\n配置到此结束，请前往/ql/config/bilibili.json填入配置"
