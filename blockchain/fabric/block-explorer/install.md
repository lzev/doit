# install

## 依赖环境

1. node

- 安装node

```
sudo wget https://npm.taobao.org/mirrors/node/latest-v8.x/node-v8.11.1-linux-x64.tar.xz

sudo tar xvf node-v8.11.1-linux-x64.tar.xz

cd node-v8.11.1-linux-x64/bin

./node -v // 此时显示 8.11.1

npm install -g jq  // 安装jq

sudo apt install gcc-6

sudo apt install g++-6

sudo ln -s gcc-6 gcc

sudo ln -s g++-6 g++
```

- 设置环境变量

```
sudo vim ~/.bashrc

export PATH=/usr/local/node-v8.11.1-linux-x64/bin:$PATH
```

2. 安装postgres db

- 安装postgresql

```
sudo apt-get update
sudo apt-get install postgresql
sudo systemctl start postgresql
sudo -u postgres psql

ALTER USER postgres WITH PASSWORD 'passowrd';
psql postgres://hppoc:password@127.0.0.1:5432/fabricexplorer
```

- 安装postgres db

```
docker pull postgres
docker run --name your-postgresql -v /usr/postgresqldata:/var/lib/postgresql/data/ -e POSTGRES_PASSWORD=password -p 5432:5432 postgresql
```

3. 安装expolrer

```
git clone https://github.com/hyperledger/blockchain-explorer.git
cd blockchain-explorer
```

4. 创建db

```
cd blockchain-explorer/app/persistence/fabric/postgreSQL/db
sudo -u postgres ./createdb.sh
```

5. 构建浏览器

```
cd blockchain-explorer
npm install
cd blockchain-explorer/app/test
npm install
npm run test
cd client/
npm install
npm test -- -u --coverage
npm run build
```

6. 运行

```
./start.sh (开启后台执行).http://localhost:8080 查看结果.
./stop.sh (关闭).
```

## 错误

1. Fails due to Browserslist: caniuse-lite is outdated

```
Delete following folders from node_modules folder: caniuse-lite and browserslist
npm i caniuse-lite browserslist
```

2. locate: 无法执行 stat () /var/lib/mlocate/mlocate.db: 没有那个文件或目录

由于locate没装导致或者没启动错误,sudo apt install mlocate 安装且使用sudo updatedb执行更新。

3. db error { error: Ident authentication failed for user “postgres”
权限问题，需要吧blockchain-explorer下载在非当前用户文件夹下，比如/tmp。

4. 执行createdb.sh的时候报错：could not change directory to “/home/dc2-user/kongli/blockchain-explorer/app/persistence/postgreSQL/db”
权限不够
