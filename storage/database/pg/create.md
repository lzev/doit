# 创建用户

## PostgreSQL 用户和权限管理

CREATE ROLE rolename;
CREATE USER username;
CREATE USER和CREATE ROLE的区别在于，CREATE USER指令创建的用户默认是有登录权限的，而CREATE ROLE没有。

创建用户时设定用户属性

基本语法格式
CREATE ROLE role_name WITH optional_permissions;
示例:在创建用户时设定登录权限。
CREATE ROLE username WITH LOGIN;
可以通过\h CREATE ROLE指令查看全部可设置的管理权限


修改用户属性
修改权限的命令格式
ALTER ROLE username WITH attribute_options;
例如:可通过以下方式禁止用户登录
ALTER ROLE username WITH NOLOGIN;

设置访问权限
语法格式如下:
GRANT permission_type ON table_name TO role_name;

示例
GRANT UPDATE ON demo TO demo_role; --赋予demo_role demo表的update权限
GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC to demo_role; --赋予demo_role所有表的SELECT权限

特殊符号:ALL代表所访问权限，PUBLIC代表所有用户
GRANT ALL ON demo TO demo_role; --赋给用户所有权限
GRANT SELECT ON demo TO PUBLIC; --将SELECT权限赋给所有用户

\z或\dp指令显示用户访问权限。
\h GRANT显示所有可设置的访问权限

撤销用户访问权限
语法格式如下:
REVOKE permission_type ON table_name FROM user_name;
其中permission_type和table_name含义与GRANT指令中相同。

用户组
在postgres中用户实际上是role，同时组也是role。 包含其他role的role就是组。

创建组示例:
CREATE ROLE temporary_users;
GRANT temporary_users TO demo_role;
GRANT temporary_users TO test_user;

切换ROLE
SET ROLE role_name; --切换到role_name用户
RESET ROLE; --切换回最初的role


INHERIT权限：该属性使组成员拥有组的所有权限
ALTER ROLE test_user INHERIT;

删除用户和组
删除用户和组很简单:

DROP ROLE role_name;
DROP ROLE IF EXISTS role_name;



应用

```
create user test ;
create database test owner test;
alter user test password pwd;
grant all on DATABASE test to test;

COMMENT ON DATABASE test is 'used for  test data store'
```
