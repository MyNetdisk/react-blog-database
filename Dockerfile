FROM mysql:5.7

# 设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_ROOT_PASSWORD="123456"
ENV ADMIN_USER_NAME="admin"
ENV ADMIN_USER_PASSWORD="123456"

#将所需文件放到容器中
COPY ./docker.sh /mysql/docker.sh
COPY ./blogs.sql /mysql/blogs.sql
COPY ./privileges.sql /mysql/privileges.sql

EXPOSE 3306

# 设置容器启动时执行的命令
CMD ["sh", "/mysql/docker.sh"]