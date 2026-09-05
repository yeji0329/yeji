# Linux Shell 招新学习笔记

## Task 01 - Project Hunt

### 题目要求
在 `workspace/` 目录下找到项目编号 `PROJECT_ID`，并将其写入 `output/01_project_id.txt`；同时假设当前目录为 `workspace/src/utils/`，写出保存 `PROJECT_ID` 文件的相对路径，写入 `output/01_relative_path.txt`。

### 解题过程
1. 使用 `ls -la workspace/` 查看所有文件（包括隐藏文件）。
2. 使用 `grep -R "PROJECT_ID" workspace/` 递归搜索包含项目编号的文件。
3. 发现文件位于 `workspace/.project/metadata`，内容为 `PROJECT_ID=LSR-2026-0831`。
4. 创建输出目录：`mkdir -p output`。
5. 写入项目编号：`echo "LSR-2026-0831" > output/01_project_id.txt`。
6. 写入相对路径：`echo "../../.project/metadata" > output/01_relative_path.txt`。
7. 运行判题程序：`./check.sh 01`，结果通过。

### 运行结果截图

![Task 01 运行结果](./notes/screenshots/01_project_hunt_result.png)

### 学习感悟

> （此处待补充）

---
