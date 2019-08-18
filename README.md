# 简介

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/gotoeasy/vscode)](https://hub.docker.com/r/gotoeasy/vscode)
[![Image Layers](https://img.shields.io/microbadger/layers/gotoeasy/vscode)](https://hub.docker.com/r/gotoeasy/vscode)
[![Image Size](https://img.shields.io/microbadger/image-size/gotoeasy/vscode)](https://hub.docker.com/r/gotoeasy/vscode)
[![Docker Pulls](https://img.shields.io/docker/pulls/gotoeasy/vscode)](https://hub.docker.com/r/gotoeasy/vscode)

在`gotoeasy/ubuntu-desktop`的基础上，安装`vscode`开发环境

# 例子
```
// 以后台方式运行容器，指定SSH和VNC端口，默认密码为123456
docker run -d -p 22:22 -p 5900:5900 gotoeasy/vscode

// 可以指定密码(必须6位以上)及分辨率
docker run -d -p 22:22 -p 5900:5900 -e PASSWD=abcd1234 -e SIZE=1024x768 gotoeasy/vscode

// 用docker-compose方式启动，参考配置docker-compose.yml
docker-compose up
```
没找到用docker脚本自动安装`vscode`插件的好方法，目前需自行按需安装插件


# 内容

- [x] vscode

<details>
<summary><strong>gotoeasy/ubuntu-desktop</strong></summary>

- [x] `ubuntu:18.04`
- [x] 用户：`root`
- [x] 默认SSH密码：`123456`
- [x] 默认VNC密码：`123456`
- [x] 预装XRDP，但window的远程桌面连接性能较差所以未启动，需要时自行开启`service xrdp start`，默认端口`3389`
- [x] 预装`wget`、`curl`、`firefox`等少许常用软件
- [x] 时区`Asia/Shanghai`
- [x] 中文桌面环境`xfce`
- [x] 中文输入法
- [x] VNC远程桌面连接时支持和本机之间相互复制粘贴文本
</details>

# 截图
![http://gotoeasy.github.io/screenshots/docker-ubuntu-vscode/vscode.jpg](http://gotoeasy.github.io/screenshots/docker-ubuntu-vscode/vscode.jpg)
