#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.


# 用户模型.
class User(AbstractUser):
    avatar = models.ImageField(upload_to='avatar/%Y/%m', default='avatar/default.png',
                               max_length=200, blank=True, null=True, verbose_name='用户头像')
    qq = models.CharField(max_length=20, blank=True, null=True, verbose_name='QQ号码')
    mobile = models.CharField(max_length=11, blank=True, null=True, unique=True, verbose_name='手机号码')
    url = models.URLField(max_length=100, blank=True, null=True, verbose_name='个人网页地址')

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name
        ordering = ['-id']

    def __unicode__(self):
        return self.username


# tag（标签）
class Tag(models.Model):
    name = models.CharField(max_length=30, verbose_name='标签名称')

    class Meta:
        verbose_name = '标签'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


# 分类(导航标签)
class Category(models.Model):
    name = models.CharField(max_length=30, verbose_name='分类名称')
    index = models.IntegerField(default=999, verbose_name='分类的排序')

    class Meta:
        verbose_name = '分类'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']

    def __unicode__(self):
        return self.name


# 自定义一个文章Model的管理器
# 1、新加一个数据处理的方法
# 2、改变原有的queryset
class ArticleManager(models.Manager):
    def distinct_date(self):
        distinct_date_list = []
        date_list = self.values('date_publish')
        for date in date_list:
            date = date['date_publish'].strftime('%Y/%m文章存档')
            if date not in distinct_date_list:
                distinct_date_list.append(date)
        return distinct_date_list


# 文章模型
class Article(models.Model):
    title = models.CharField(max_length=50, verbose_name='文章标题')
    desc = models.CharField(max_length=50, verbose_name='文章描述')
    content = models.TextField(verbose_name='文章内容')
    click_count = models.IntegerField(default=0, verbose_name='点击次数')
    is_recommend = models.BooleanField(default=False, verbose_name='是否推荐')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    user = models.ForeignKey(User, verbose_name='用户')
    category = models.ForeignKey(Category, blank=True, null=True, verbose_name='分类')
    tag = models.ManyToManyField(Tag, verbose_name='标签')

    objects = ArticleManager()

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = verbose_name
        ordering = ['-date_publish']

    def __unicode__(self):
        return self.title


# 评论模型
class Comment(models.Model):
    content = models.TextField(verbose_name='评论内容')
    username = models.CharField(max_length=30, blank=True, null=True, verbose_name='用户名')
    email = models.EmailField(max_length=50, blank=True, null=True, verbose_name='邮箱地址')
    url = models.URLField(max_length=100, blank=True, null=True, verbose_name='个人网页地址')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    user = models.ForeignKey(User, blank=True, null=True, verbose_name='用户')
    article = models.ForeignKey(Article, blank=True, null=True, verbose_name='文章')
    pid = models.ForeignKey('self', blank=True, null=True, verbose_name='父级评论')

    class Meta:
        verbose_name = '评论'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return str(self.id)


# 友情链接
class Links(models.Model):
    title = models.CharField(max_length=50, verbose_name='标题')
    description = models.CharField(max_length=200, verbose_name='友情链接描述')
    callback_url = models.URLField(verbose_name='url地址')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    index = models.IntegerField(default=999, verbose_name='排列顺序(从小到大)')

    class Meta:
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']

    def __unicode__(self):
        return self.title


# 广告
class Ad(models.Model):
    title = models.CharField(max_length=50, verbose_name='广告标题')
    description = models.CharField(max_length=200,  verbose_name='广告描述')
    image_url = models.ImageField(upload_to='ad/%Y/%m', verbose_name='图片路径')
    callback_url = models.URLField(null=True, blank=True, verbose_name='回调url')
    date_publish = models.DateTimeField(auto_now_add=True, verbose_name='发布时间')
    index = models.IntegerField(default=999, verbose_name='排列顺序(从小到大)')

    class Meta:
        verbose_name = u'广告'
        verbose_name_plural = verbose_name
        ordering = ['index', 'id']

    def __unicode__(self):
        return self.title
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def decode(info):
      return info.decode('utf-8')
from django.db import models
# Create your models here.
class  Persony(models.Model):
    name=models.CharField(max_length = 30,verbose_name='姓名')
    job=models.CharField(max_length=100,verbose_name='工作')
    address=models.CharField(max_length=100,verbose_name='地址')
    intrudec=models.TextField(verbose_name='自我介绍')
    birth=models.CharField(max_length=30,verbose_name='出生日期')
    eamil=models.EmailField(verbose_name='邮箱')
    websit=models.CharField(max_length=100,verbose_name='个人网站地址')
    telephone=models.CharField(max_length=30,verbose_name='手机号')

    class Meta:
		verbose_name = '个人简介'
		verbose_name_plural = verbose_name
    def __str__(self):
       return self.name
class Kills_system (models.Model):
      name=models.CharField(max_length=30,verbose_name='操作系统名称')
      proficiency=models.IntegerField(verbose_name='熟练度')
      class Meta:
		verbose_name = '操作系统'
		verbose_name_plural = verbose_name
      def __str__(self):
         return self.name
class  Kills_program(models.Model):
      name=models.CharField(max_length=30,verbose_name='语言名称')
      proficiency=models.IntegerField(verbose_name='熟练度')
      class Meta:
		verbose_name = '计算机语言熟练度'
		verbose_name_plural = verbose_name
      def __str__(self):
         return self.name
class Kills_offic(models.Model):
      name=models.CharField(max_length=30,verbose_name='offic名称')
      proficiency=models.IntegerField(verbose_name='熟练度')
      class Meta:
		verbose_name = 'offic工具'
		verbose_name_plural = verbose_name
      def __str__(self):
         return self.name
class  Kills_hobbies(models.Model):
      name=models.CharField(max_length=30,verbose_name='业余爱好')
      proficiency=models.IntegerField(verbose_name='占用的时间')
      class Meta:
		verbose_name = '业余爱好'
		verbose_name_plural = verbose_name
      def __str__(self):
         return self.name
class Kills_lange(models.Model)   :
      name=models.CharField(max_length=30,verbose_name='交流语言')
      proficiency=models.IntegerField(verbose_name='熟练度')
      class Meta:
		verbose_name = '语言'
		verbose_name_plural = verbose_name
      def __str__(self):
         return self.name
class  Experience(models.Model):
    name=models.CharField(max_length=30,verbose_name='职务')
    time=models.CharField(max_length=30,verbose_name='时间')
    company=models.CharField(max_length=30,verbose_name='公司名称')
    content=models.TextField(verbose_name='内容')
    class Meta:
		verbose_name = '工作经验'
		verbose_name_plural = verbose_name
    def __str__(self):
         return self.name
class Education(models.Model):
    school=models.CharField(max_length=30,verbose_name='学校名称')
    time=models.CharField(max_length=30,verbose_name='时间')
    content=models.TextField(verbose_name='内容')
    major=models.CharField(max_length=30,verbose_name='专业')
    class Meta:
		verbose_name = '教育'
		verbose_name_plural = verbose_name
    def __str__(self):
         return self.school
class  Awards(models.Model):
    name=models.CharField(max_length=30,verbose_name='证书名称')
    time=models.CharField(max_length=30,verbose_name='获奖时间')
    content=models.TextField(verbose_name='获奖内容')
    bodies=models.CharField(max_length=30,verbose_name='颁发机构')
    class Meta:
		verbose_name = '获奖信息'
		verbose_name_plural = verbose_name
    def __str__(self):
         return self.name
class Fengjing(models.Model):
    img=models.ImageField(upload_to='fengjing/%Y/%m')
    name=models.CharField(max_length=60,verbose_name='图片分类')
    content=models.TextField(verbose_name='描述')
    class Meta:
		verbose_name = '风景图片'
		verbose_name_plural = verbose_name
    def __str__(self):
         return str(self.name)

class Renwu(models.Model):
    img=models.ImageField(upload_to='renwu/%Y/%m')
    name=models.CharField(max_length=60,verbose_name='图片分类')
    content=models.TextField(verbose_name='描述')
    class Meta:
		verbose_name = '人物'
		verbose_name_plural = verbose_name
    def __str__(self):
         return str(self.name)

class Car(models.Model):
    img=models.ImageField(upload_to='car/%Y/%m')
    name=models.CharField(max_length=60,verbose_name='图片分类')
    content=models.TextField(verbose_name='描述')
    class Meta:
		verbose_name = '跑车图片'
		verbose_name_plural = verbose_name
    def __str__(self):
         return str(self.name)
class Family(models.Model):
    img=models.ImageField(upload_to='family/%Y/%m')
    name=models.CharField(max_length=60,verbose_name='图片分类')
    content=models.TextField(verbose_name='描述')
    class Meta:
		verbose_name = '家人图片'
		verbose_name_plural = verbose_name
    def __str__(self):
         return str(self.name)
