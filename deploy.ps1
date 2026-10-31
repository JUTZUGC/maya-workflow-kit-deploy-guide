# Maya Workflow Kit 一键安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://github.com/5hyuns/maya-workflow-kit-for-blender#installation
# 更新日期：2026-10-31
# 类型：binary
$ErrorActionPreference = 'Stop'
Set-Location -Path $PSScriptRoot

if (-not (Get-Command curl.exe -ErrorAction SilentlyContinue)) { throw '需要先安装 curl（Windows 10+ 自带 curl.exe）' }

New-Item -ItemType Directory -Force -Path .download | Out-Null
Set-Location -Path .download

curl.exe -fL -o maya-workflow-kit-0.7.0.zip https://github.com/5hyuns/maya-workflow-kit-for-blender/releases/download/v0.7.0/maya-workflow-kit-0.7.0.zip
$h=(Get-FileHash .\maya-workflow-kit-0.7.0.zip -Algorithm SHA256).Hash.ToLower()
if ($h -ne "a38b31af2c12bac7dc51afe0389d4621a5178d1421c1ea9f764a7892d38373bc") { throw "SHA256 校验失败" }
Write-Host "校验通过：Blender 里 编辑 > 偏好设置 > 获取扩展 > 从磁盘安装，选中这个 zip"

Write-Host ''

Write-Host '下载与校验完成，安装包在 .download 目录'
Write-Host '若结果异常或需要改配置，请参考官方文档：https://github.com/5hyuns/maya-workflow-kit-for-blender#installation'
