# NR VIM

## 1 简介
nr_vim旨在于开发一套ubuntu系统上开箱即用，可离线部署的vim配置。分为三个版本

- basic：极简版无任何插件。
- normal：离线安装插件，提供较好的体验。
- enhanced：需要在线安装插件，提供良好的使用体验。

## 2 主要依赖

OS support：
- ubuntu

basic version:
- vim

normal version:

enhanced version:
- nodejs

## 3 安装方法

下载本工程后，cd至本工程根目录，执行
```sh
# 安装basic版本
./install basic

# 安装normal版本
./install normal

# 安装enhanced版本
./install_pkgs
./install enhanced
```
执行完成后即可使用。

## 3 常用快捷键

### 3.1 basic

- f: 查找当前光标下的单词
- ctrl-o: 返回上一次位置
- \tt: 创建新tab
- \tn: 切换到下个tab
- \tp: 切换到上一个tab
- \tc: 关闭tab
- \tl: 返回上次打开的tab
- gg: 跳转到页面首行
- GG: 跳转到页面末
- \ct4: 改变tabsize为4
- \ct8: 改变tabsize为8
- \ct4e: 改变tabsize为4, 并展开为空格
- \ct8e: 改变tabsize为8，并展开为空格
- \rt: 重新展开tab键
- yy: 复制当前行，在前面输入数字表示复制n行
- dd: 删除当前行， 在前面输入数字表示删除n行
- w: 跳到下个字符
- \-Enter: 取消高亮
- 0: 移动到行首
- \w: 保存

### 3.2 normal

- \g: 跳转到函数定义
- \s: 查找
- ctrl-p: 模糊查询文件
- ctrl-t: 打开文件目录

