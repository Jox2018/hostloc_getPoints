#基于基础镜像
FROM python:alpine

#代码添加到code文件夹
ADD ./ /root

#设置code文件夹是工作目录
WORKDIR /root

#安装相关依赖
RUN pip install requests && pip install pyaes

#运行项目
CMD ["python3","/root/hostloc_auto_get_points.py"]
