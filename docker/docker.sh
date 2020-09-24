#!/bin/bash
set -e

#查看mysql服务的状态，方便调试，这条语句可以删除
echo `service mysql status`

echo '1.启动mysql....'
#启动mysql
service mysql start
sleep 3
echo `service mysql status`

#判断是否初始化数据，如果初始化了，直接启动。
if [ ! -d /var/lib/mysql/blogs ] ; then
    echo '2.开始导入数据....'
    #导入数据
    sed -i 's/ADMIN_USER_NAME/'$ADMIN_USER_NAME'/' /mysql/blogs.sql
    sed -i 's/ADMIN_USER_PASSWORD/'$ADMIN_USER_PASSWORD'/' /mysql/blogs.sql
    mysql < /mysql/blogs.sql
    echo '3.导入数据完毕....'

    sleep 3
    echo `service mysql status`

    #重新设置mysql密码
    echo '4.开始修改密码....'
    sed -i 's/MYSQL_ROOT_PASSWORD/'$MYSQL_ROOT_PASSWORD'/' /mysql/privileges.sql
    mysql < /mysql/privileges.sql
    echo '5.修改密码完毕....'
fi

#sleep 3
echo `service mysql status`
echo `mysql容器启动完毕,且数据导入成功`

tail -f /dev/null