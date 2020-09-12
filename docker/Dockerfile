FROM mysql:5.7

# 设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY ./docker/docker.sh /mysql/docker.sh
COPY ./docker/react_blog.sql /mysql/react_blog.sql
COPY ./docker/privileges.sql /mysql/privileges.sql

EXPOSE 3306

# 设置容器启动时执行的命令
CMD ["sh", "./mysql/docker.sh"]