<div align="center">
  <img width="360" src="assets/images/logo-v2.png" alt="weapp" />
  <br>

  <a href="javascript:;"><img src="https://img.shields.io/badge/Python-brightgreen.svg" /></a>
  <a href="https://opensource.org/licenses/mit-license.php"><img src="https://img.shields.io/badge/license-MIT-blue.svg" /></a>

  <p><strong>个人博客网站,自带网页简历</strong></p>
  <h1></h1>
</div>

**基于Python2.7 django1.9 框架开发**，

## 主要功能：
- 文章，页面，分类目录，标签的添加，删除，编辑等。
- 侧边栏功能，最新文章，最多阅读，标签云等。
- 支持个人简历编写，展示
- 支持个人图库，图片上传分类，浏览



## 项目预览
![操作截图](./static/images/test.gif)

## 目录结构
```
├─assets ---------- 静态资源文件
│  ├─images ---------- 公共图片
│  └─js -------------- 公共的JS
│     └─common ---------- 公共方法函数封装
├─components ------ 自定义组件和第三方组件
│  ├─libs ------------ 第三方库
│  └─weapp ----------- weapp组件
├─pages ----------- 页面目录
│  ├─index ----------- 首页
│  ├─libs ------------ 第三方库页面
│  └─weapp ----------- weapp组件页面
├─app.js
├─app.json
├─app.wxss
└─README.md
```


## 主要特点
* 组件调用简单
* 组件化编程开发，可配置、可扩展、可复用
* 使用ES6代码特性
* 小程序API的二次封装，如转发分享
* 公共方法的封装，如URL参数转换

## 需要改进
* 文章的排版，支持markdown语法高亮


## 项目截图

![首页](./static/images/desc1.png)
![博客](./static/images/desc2.png)
![个人空间](./static/images/desc6.png)
![后台](./static/images/desc8.png)



## License
[![](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/mit-license.php) 

[MIT](https://opensource.org/licenses/MIT)，享受开源的乐趣
