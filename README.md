# hostloc_getPoints
小鸡定时获取hostloc积分

github action大规模失效，mjj平均一人10鸡，以下可以部署到自己的小鸡上

第一步下载下列代码
https://github.com/Jox2018/hostloc_getPoints/blob/main/hostloc_auto_get_points.py

第二步把175，176行代码改为
[code]    username = "账户"
    password = "密码"[/code]
[color=Red]第三步上面文件上传到小鸡[/color]

[color=Red]第四步在小鸡里新建crontab任务[/color]

[code]crontab -e
[/code]
添加
[code]10 2 * * * sleep 5;cd /root/hostloc/ && /usr/local/bin/python3 /root/hostloc/hostloc_auto_get_points.py[/code]
[color=Red]/root/hostloc/[/color]为你上传的路径
[color=Red]/usr/local/bin/python3[/color]为你小鸡python3的引用路径

[color=Red]提示[/color]

1.如果提示以下错误，请安装request模块
Traceback (most recent call last):
  File "/root/hostloc/hostloc_auto_get_points.py", line 6, in
   ...
[code]pip3 install requests[/code]

2.老哥们可先运行成功以后再添加crontab任务
[code]cd /root/hostloc/ && /usr/local/bin/python3 /root/hostloc/hostloc_auto_get_points.py[/code]
