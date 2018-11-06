#!/usr/bin/env python
# -*- coding: utf-8 -*-

import logging
from django.shortcuts import render, redirect
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.hashers import make_password
from django.conf import settings
from django.core.paginator import Paginator, InvalidPage, EmptyPage, PageNotAnInteger
from django.db.models import Count
from models import *
from forms import *

logger = logging.getLogger('blog.views')  # 日志器


# 全局信息
def global_setting(request):
    # 配置media
    MEDIA_URL = settings.MEDIA_URL
    # 站点基本信息
    SITE_URL = settings.SITE_URL  # 站点地址
    SITE_NAME = settings.SITE_NAME  # 站点名称
    SITE_DESC = settings.SITE_DESC  # 站点描述
    WEIBO_SINA = settings.WEIBO_SINA  # 新浪微博
    WEIBO_TENCENT = settings.WEIBO_TENCENT  # 腾讯微博
    PRO_EMAIL = settings.PRO_EMAIL  # 邮箱
    PRO_RSS = settings.PRO_RSS  # RSS订阅
    # 分类信息获取（导航数据）
    category_list = Category.objects.all()[:6]
    # 文章归档数据
    archive_list = Article.objects.distinct_date()
    # 广告数据
    ad_list = Ad.objects.order_by('id')[:6]
    # 标签云数据
    tag_list = Tag.objects.all()
    # 友情链接数据
    link_list = Links.objects.all()
    # 浏览排行
    click_count_list = Article.objects.order_by('-click_count')[:6]
    # 评论排行
    comment_count_list = Comment.objects.values('article').annotate(
        comment_count=Count('article')).order_by('-comment_count')
    article_comment_list = [
        Article.objects.get(pk=comment['article']) for comment in comment_count_list][:6]
    # 站长推荐
    is_recommend_list = Article.objects.order_by('-is_recommend')[:6]
    return locals()


def blog(request):
    try:
        # 最新文章数据
        article_list = Article.objects.all()
        # 分页
        article_list = get_page(request, article_list)
    except Exception as e:
        logger.error(e)  # 捕获异常
    return render(request, 'blog.html', locals())


def archive(request):
    try:
        # 先获取客户端提交的信息
        year = request.GET.get('year', None)
        month = request.GET.get('month', None)
        # 获取文章列表并分页
        article_list = Article.objects.filter(
            date_publish__icontains=year + '-' + month)
        article_list = get_page(request, article_list)
    except Exception as e:
        logger.error(e)  # 异常捕获，写进日志器
    return render(request, 'archive.html', locals())


# 按标签查询对应的文章列表
def tag(request):
    try:
        # 获取模板标签
        tag = request.GET.get('tag', None)
        # 获得标签对应的model对象
        tag = Tag.objects.get(name=tag)
        # 通过标签获得文章列表
        article_list = tag.article_set.all()
        # 分页
        article_list = get_page(request, article_list)
    except Exception as e:
        logger.error(e)
    return render(request, 'tag.html', locals())


# 分页代码
def get_page(request, article_list):
    paginator = Paginator(article_list, 4)  # 一页最多显示4篇文章
    try:
        page = int(request.GET.get('page', 1))
        article_list = paginator.page(page)
    except (EmptyPage, InvalidPage, PageNotAnInteger):
        article_list = paginator.page(1)  # 出现异常就返回第一页
    return article_list


# 文章详情
def article(request):
    try:
        # 获取文章id
        id = request.GET.get('id', None)
        try:
            # 获取文章信息
            article = Article.objects.get(pk=id)
        except Article.DoesNotExist:
            return render(request, 'failure.html', {'reason': '没有找到对应的文章'})

        # 评论表单
        comment_form = CommentForm({'author': request.user.username,
                                    'email': request.user.email,
                                    'url': request.user.url,
                                    'article': id} if request.user.is_authenticated() else{'article': id})
        # 获取评论信息
        comments = Comment.objects.filter(article=article).order_by('id')
        comment_list = []
        for comment in comments:
            for item in comment_list:
                if not hasattr(item, 'children_comment'):
                    setattr(item, 'children_comment', [])
                if comment.pid == item:
                    item.children_comment.append(comment)
                    break
            if comment.pid is None:
                comment_list.append(comment)
    except Exception as e:
        print e
        logger.error(e)
    return render(request, 'article.html', locals())


# 提交评论
def comment_post(request):
    try:
        comment_form = CommentForm(request.POST)
        if comment_form.is_valid():
            # 获取表单信息
            comment = Comment.objects.create(username=comment_form.cleaned_data["author"],
                                             email=comment_form.cleaned_data[
                                                 "email"],
                                             url=comment_form.cleaned_data[
                                                 "url"],
                                             content=comment_form.cleaned_data[
                                                 "comment"],
                                             article_id=comment_form.cleaned_data[
                                                 "article"],
                                             user=request.user if request.user.is_authenticated() else None)
            comment.save()
        else:
            return render(request, 'failure.html', {'reason': comment_form.errors})
    except Exception as e:
       pass
    return redirect(request.META['HTTP_REFERER'])


# 注销
def do_logout(request):
    try:
        logout(request)
    except Exception as e:
        print e
        
    return redirect(request.META['HTTP_REFERER'])


# 注册
def do_reg(request):
    try:
        if request.method == 'POST':
            reg_form = RegForm(request.POST)
            if reg_form.is_valid():
                # 注册
                user = User.objects.create(username=reg_form.cleaned_data["username"],
                                           email=reg_form.cleaned_data[
                                               "email"],
                                           url=reg_form.cleaned_data["url"],
                                           password=make_password(reg_form.cleaned_data["password"]),)
                user.save()

                # 登录
                # 指定默认的登录验证方式
                user.backend = 'django.contrib.auth.backends.ModelBackend'
                login(request, user)
                return redirect(request.POST.get('source_url'))
            else:
                return render(request, 'failure.html', {'reason': reg_form.errors})
        else:
            reg_form = RegForm()
    except Exception as e:
       pass
    return render(request, 'reg.html', locals())


# 登录
def do_login(request):
    try:
        if request.method == 'POST':
            login_form = LoginForm(request.POST)
            if login_form.is_valid():
                # 登录
                username = login_form.cleaned_data["username"]
                password = login_form.cleaned_data["password"]
                user = authenticate(username=username, password=password)
                if user is not None:
                    # 指定默认的登录验证方式
                    user.backend = 'django.contrib.auth.backends.ModelBackend'
                    login(request, user)
                else:
                    return render(request, 'failure.html', {'reason': '登录验证失败'})
                return redirect(request.POST.get('source_url'))
            else:
                return render(request, 'failure.html', {'reason': login_form.errors})
        else:
            login_form = LoginForm()
    except Exception as e:
        pass
    return render(request, 'login.html', locals())


def category(request):
    try:
        # 获取客户端提交的信息
        cid = request.GET.get('cid', None)
        try:
            category = Category.objects.get(pk=cid)
        except Category.DoesNotExist:
            return render(request, 'failure.html', {'reason': '分类不存在'})
        article_list = Article.objects.filter(category=category)
        article_list = get_page(request, article_list)
    except Exception as e:
        pass
    return render(request, 'category.html', locals())
def index(request):
        return  render(request, 'index.html')
def adx (request):
        return  render(request, 'adx.html')
def mp4 (request):
        return  render(request, 'mp4.html')
#_*_ coding:utf-8_*_
from django.shortcuts import render
from   blog.models import *
from django.core.mail import send_mail
from django.shortcuts import HttpResponse
# Create your views here.
def person(request):
    #个人信息
     persion=Persony.objects.all()
    #专业技能
     kills_system=Kills_system.objects.all()
     kills_lange=Kills_lange.objects.all()
     kills_program=Kills_program.objects.all()
     kills_offic=Kills_offic.objects.all()
     kills_hobbies=Kills_hobbies.objects.all()
    #工作经验
     exprience_list=Experience.objects.all()
     awards_list=Awards.objects.all()
     education_list=Education.objects.all()
     fengjing=Fengjing.objects.all()
     renwu=Renwu.objects.all()
     car=Car.objects.all()
     family=Family.objects.all()
     if request.method == 'POST':
        message= request.POST['message']
        subject=request.POST['email']
        name=request.POST['name']
        message="发送者的姓名:"+name+'\n'+message
        send_mail(subject, message,'18356954786@163.com', ['15755083306@163.com',],fail_silently=False)
        return  HttpResponse('发送完成，请等待管理员回复:')


     return render (request,'person.html',locals())
