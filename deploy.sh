#!/usr/bin/env bash
set -euo pipefail
# Maya Workflow Kit 一键安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://github.com/5hyuns/maya-workflow-kit-for-blender#installation
# 更新日期：2026-10-31
# 类型：binary
cd "$(dirname "${BASH_SOURCE[0]}")"

command -v curl >/dev/null 2>&1 || { echo "需要先安装 curl"; exit 1; }

mkdir -p .download
cd .download

curl -fL -o maya-workflow-kit-0.7.0.zip https://github.com/5hyuns/maya-workflow-kit-for-blender/releases/download/v0.7.0/maya-workflow-kit-0.7.0.zip
echo "a38b31af2c12bac7dc51afe0389d4621a5178d1421c1ea9f764a7892d38373bc  maya-workflow-kit-0.7.0.zip" | sha256sum -c -
echo "校验通过：Blender 里 编辑 > 偏好设置 > 获取扩展 > 右上角菜单 > 从磁盘安装，选中这个 zip"

echo ""

echo "下载与校验完成，安装包在 .download 目录"
echo "若结果异常或需要改配置，请参考官方文档：https://github.com/5hyuns/maya-workflow-kit-for-blender#installation"
