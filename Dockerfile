# 基础镜像
FROM gotoeasy/ubuntu-desktop
# 维护者信息
MAINTAINER gotoeasy <gotoeasy@163.com>

# 安装
RUN apt-get update && \
    apt-get install -y \
	apt-transport-https \
	gpg \
	unzip \
	git 

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list

RUN apt-get update && \
    apt-get install -y code

