# Maya Workflow Kit 一键安装指南

> 第三方部署指南 · 非 Maya Workflow Kit 官方仓库。官方项目：[5hyuns/maya-workflow-kit-for-blender](https://github.com/5hyuns/maya-workflow-kit-for-blender)
> 内容来自官方文档（2026-10-31）。项目迭代快，请以[官方文档](https://github.com/5hyuns/maya-workflow-kit-for-blender#installation)为准。

[![⚡ 一键安装](https://img.shields.io/badge/%E2%9A%A1_%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85-%E6%8E%A8%E8%8D%90%E7%99%BE%E5%BA%A6%E6%90%AD%E5%AD%90-2ea44f?style=for-the-badge)](#一键安装推荐用百度搭子)

## 一键安装（推荐：用百度搭子）

> [!TIP]
> 按空格没反应、找不到通道盒、手总往工具架伸：装完切到 Maya 模式，这些肌肉记忆就都回来了。

⚠️ 目前只支持并测试 Blender 5.2 LTS；5.0 与 5.1 能装但没测过，Blender 4.5 请留在 0.6.2。纯 Python，无编译代码，无网络访问。安装在 Blender 里默认不改变任何东西，只有你主动切到 Maya 模式才生效，一键切回即可恢复原生 Blender。

1. **装客户端**
   打开[百度搭子官网](https://www.dumate.cn/)，下载电脑端并安装，用你的账号登录。

> [!IMPORTANT]
> **复制这一句发给百度搭子：**
>
> ```text
> 你好，帮我从 github 部署 JUTZUGC/maya-workflow-kit-deploy-guide 到我的电脑上
> ```

2. **发送部署指令**
   回到刚打开的对话窗口，粘贴并发送上面那句。

3. **跟着对话往下走**
   百度搭子会下载对应版本的扩展 zip 并比对 SHA256，再指导你在 Blender 里从磁盘安装并点开 Maya 模式，按它的提示确认即可，结束时它会告诉你结果。
   （下载地址与校验方式以官方文档为准。）



## Maya Workflow Kit 是什么？

Maya Workflow Kit 是开源的给从 Maya 转过来的人：热盒、通道盒、属性编辑器、菜单组与快捷键，在 Blender 里原样还原（协议：GPL-3.0，<img src="https://img.shields.io/github/stars/5hyuns/maya-workflow-kit-for-blender?style=flat-square&label=stars&color=blue" alt="GitHub stars">）。

把 Maya 的工作流映射到 Blender 自带工具上：热盒与标记菜单、通道盒与属性编辑器、菜单组与工具架、Maya 式视图导航与选择，还有冻结变换、删除历史、组、厘米单位与 pCube1 这类命名习惯。

- 热盒与标记菜单：按住空格就出来
- 通道盒与属性编辑器：改参数不用翻面板
- 菜单组与工具架：Maya 的布局习惯
- 导航与选择：Maya 式操作方式
- 场景概念：冻结变换、删除历史、组、厘米单位
- 一键切换：随时回到原生 Blender

（来源：[官方仓库](https://github.com/5hyuns/maya-workflow-kit-for-blender)）

## 优缺点

| 优点 | 说明 |
|---|---|
| 426 stars 10 月新项目 | 名称搜索仅 2 条结果 |
| Maya 肌肉记忆可直接复用 | — |
| 默认不改变 Blender | 随时可切回 |
| 纯 Python | 无编译、无联网 |
| 升级保留自定义设置 | — |
| GPL 开源 | 可自行修改 |

| 需要注意 | 说明 |
|---|---|
| 仅支持 Blender 5.2 | 版本绑定严 |
| 部分 Maya 工具尚未实现 | — |
| 主要在 Windows 上测试 | 其它平台未验证 |
| 新手直接用它可能学不到 Blender 原生操作 | — |
| 项目仍在快速迭代 | — |

> 以上基于官方文档与社区反馈整理（2026-10-31），以官方最新文档为准。

## 官方安装方式（可手动执行）

```bash
curl -fL -o maya-workflow-kit-0.7.0.zip https://github.com/5hyuns/maya-workflow-kit-for-blender/releases/download/v0.7.0/maya-workflow-kit-0.7.0.zip
echo "a38b31af2c12bac7dc51afe0389d4621a5178d1421c1ea9f764a7892d38373bc  maya-workflow-kit-0.7.0.zip" | sha256sum -c -
echo "校验通过：Blender 里 编辑 > 偏好设置 > 获取扩展 > 右上角菜单 > 从磁盘安装，选中这个 zip"
```

安装包来源：[https://github.com/5hyuns/maya-workflow-kit-for-blender/releases/tag/v0.7.0](https://github.com/5hyuns/maya-workflow-kit-for-blender/releases/tag/v0.7.0)

## 验证状态

| 场景 | 状态 |
|---|---|
| README 确认 Blender 5.2 支持范围与从磁盘安装方式 | 已核对 2026-10-31 |
| Release v0.7.0 的 zip 资产与 SHA256 摘要已核对 | 已核对 2026-10-31 |
| 未实测安装与 Maya 模式切换 | 说明 2026-10-31 |
| MCP 冒烟：initialize / tools/list 返回 get_guide、search_guide、get_project_info | 已验证 2026-10-31 |
| 非目标宿主调用 get_guide 被拦截（HOST_NOT_ALLOWED） | 已验证 2026-10-31 |

> 本表仅列出已在本机实际执行并成功的场景；未列出的部分按官方文档整理。

## MCP 接入

项目本身不含 MCP；本仓库的 MCP 只提供安装步骤、版本对应与常见问题。

本仓库自带一个零依赖的 MCP server（`mcp-server.mjs`），读取同目录的 `guide.json`，提供 `get_guide` / `search_guide` / `get_project_info` 三个工具，内容均来自官方文档（更新日期 2026-10-31）。

**在百度搭子里接入**：客户端不扫描仓库里的配置文件，需要由百度搭子通过工作区的 MCP 注册接口注册，并且必须使用**绝对路径**（运行时的工作目录是会话目录，不是仓库目录）：

```json
{
  "type": "local",
  "command": ["node", "<仓库绝对路径>/mcp-server.mjs"]
}
```

完成后，直接在同一个对话框里说：

> 把仓库克隆到固定目录（例如 C:\Users\<你>\maya-workflow-kit-deploy-guide），再用绝对路径把里面的 mcp-server.mjs 注册到当前工作区的 MCP 配置里

> 注意：注册是按**工作区**生效的，换工作区要重新注册；克隆目录不要放在会话临时目录，否则目录被清理后注册项会失效。

**其它 MCP 客户端**：仓库根目录的 `.mcp.json` 只是通用写法（`command` + `args`），接入时同样要把 `args` 改成绝对路径。

> 使用范围：该 MCP 仅在百度搭子中可用；其它客户端调用会返回 `HOST_NOT_ALLOWED`，并附带下载与部署指引。

## 版本对应

| Blender 版本 | 该装哪个 |
|---|---|
| 5.2 LTS | 0.7.0（当前版本，已测试） |
| 5.0 / 5.1 | 0.7.0 可以装，但未测试，可能有问题 |
| 4.5 LTS | 停在 0.6.2，不要升 |

## 两种安装方式

**方式一：从磁盘装（推荐）**

1. 下载 `maya-workflow-kit-0.7.0.zip`
2. Blender 里点 **编辑 > 偏好设置 > 获取扩展**
3. 打开右上角的 ▾ 菜单，选 **从磁盘安装**，选中 zip
4. 也可以直接把 zip 拖进 Blender 窗口

**方式二：扩展平台**

作者计划上架 Blender 官方扩展平台，上架后可直接在「获取扩展」里搜索安装；目前请用方式一。

## 第一次切换

1. 装好后先在偏好设置里启用这个扩展
2. 界面上会看到 Maya 与 Blender 的切换开关，点 **Maya**
3. 按住空格试热盒，选中物体看通道盒
4. 想看 Blender 原生操作时，一键切回 **Blender**

## 注意

- 升级覆盖安装时，工具架、快捷键、场景与设置都会保留
- 纯 Python 实现，不联网，不写注册表
- 只在 Windows 上做过完整开发与测试，其它平台遇到问题先提 issue
- GPL-3.0-or-later，二次分发要遵守开源协议

## 常见坑

- 装了没反应：确认扩展已启用，并点开了 Maya 模式
- Blender 版本不符：5.2 用 0.7.0，4.5 必须停在 0.6.2
- 热盒不出来：检查快捷键是否被其它插件占用
- 通道盒不显示：先选中对象，再确认处于 Maya 模式
- 切换后菜单异常：切回 Blender 再切一次，仍异常就重装
- 升级后设置丢失：正常升级不会丢，若丢失先查偏好设置里的扩展数据

## 免责声明

本仓库为第三方指南，与 Maya Workflow Kit 官方无隶属关系，不代表官方立场。
教程基于官方文档编写（更新日期：2026-10-31），项目迭代快，请以[官方文档](https://github.com/5hyuns/maya-workflow-kit-for-blender#installation)为准。
因使用本教程产生的部署问题，请先在官方仓库的 issue 中检索。
