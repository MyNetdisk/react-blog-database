use mysql;
select host, user from user;
-- 设置root密码
grant all on *.* to 'root'@'%' identified by "MYSQL_ROOT_PASSWORD" with grant option;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
-- create user zhouzhihui identified by '123456';
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为123456：
-- grant all on react_blog.* to zhouzhihui@'%' identified by '123456' with grant option;
-- 这一条命令一定要有(刷新权限（必须步骤）)：
flush privileges;