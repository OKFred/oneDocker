# 2023-06-13

# 引入node镜像
FROM node:16

# 创建一个目录
WORKDIR /app

# 复制package.json文件到工作目录
COPY package.json ./

# 安装依赖
RUN npm install

# 复制所有文件到工作目录
COPY . .

# 设置环境变量
ENV PORT=3000

# 暴露端口
EXPOSE 3000

# 项目启动
CMD ["npm", "start"]
