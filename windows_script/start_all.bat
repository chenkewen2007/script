title 一键启动XXX项目jar包
: chcp 65001
: 将命令提示符的代码页设置为65001（UTF-8）。这确保命令提示符可以正确处理UTF-8编码的字符。

: rem start "nacos" cmd /k "D:\software\nacos-1.3\bin\startup.cmd"
: 30秒后启动下一个配置
: rem timeout /t 30 /nobreak


: 新开一个窗口，标题为gateway
start "gateway" cmd /k java -jar gateway-zuul.jar
: 40秒后启动下一个配置
timeout /t 40 /nobreak


start "your-app" cmd /k java -jar your-app.jar
timeout /t 10 /nobreak


: java -Xss10m -Xms512m -Xmx1024m -jar YourApp.jar
: 将线程栈大小设置为 10MB（-Xss10m）；
: 将初始堆大小设置为 512MB（-Xms512m）；
: 将最大堆大小设置为 1024MB（-Xmx1024m）

: "c:\\Program Files\\java\\jdk-11.0.14\\bin\\"java -Dfile.encoding=utf-8 -jar yourJarFile.jar
: java 手动配置JDK登录


: java -Dfile.encoding=UTF-8 -jar yourJarFile.jar
: -D表示定义一个系统属性。在这种情况下，file.encoding=UTF-8设置了文件编码为UTF-8。主要适用于代码中有中文的情况

: java日志另存为指定文件（用于未安装log4j之类日志分析插件的时候）
: java -jar your-app.jar > logs/your-app.log  2>&1
: java日志另存为指定文件，只输出错误日志
：java -jar your-app.jar 2> logs/your-app.log
