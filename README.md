# server
大讯云服务器端程序

本程序暂时只支持CentOS，运行前请确认已经安装了MySQL，Redis等服务。

如果不懂如果安装可以进入 [论坛](http://bbs.daxunyun.com) 有详细的安装教程。

因为github单个文件不能大于100m，所以consul经过压缩，git后先解压再运行

第一步git整个服务器程序
```
git clone https://github.com/daxunyun/server
```

第二步解压缩consul程序
```
cd server
tar xzf consul.tar.gz
```

第三步进入打开配置文件，配置教程可以进入论坛查看
```
vi ./bin/conf/server.json
```

第四步运行
```
sh run.sh start
```

只要配置信息正确一般就可以启动到了。

更多使用教程可以进入论坛查看

论坛地址：http://bbs.daxunyun.com
