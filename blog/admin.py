#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.contrib import admin
from models import *

# Register your models here.
class ArticleAdmin(admin.ModelAdmin):

    list_display = ('title', 'desc', 'click_count',)
    list_display_links = ('title', 'desc', )
    list_editable = ('click_count',)

    fieldsets = (
        (None, {
            'fields': ('title', 'desc', 'content', 'user', 'category', 'tag', )
        }),
        ('高级设置', {
            'classes': ('collapse',),
            'fields': ('click_count', 'is_recommend',)
        }),
    )

    class Media:
        js = (
            '/static/js/kindeditor-4.1.10/kindeditor-min.js',
            '/static/js/kindeditor-4.1.10/lang/zh_CN.js',
            '/static/js/kindeditor-4.1.10/config.js',
        )

admin.site.register(User)
admin.site.register(Tag)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Category)
admin.site.register(Comment)
admin.site.register(Links)
admin.site.register(Ad)
# Register your models here.
admin.site.register(Persony)
admin.site.register(Kills_system)
admin.site.register(Kills_hobbies)
admin.site.register(Kills_program)
admin.site.register(Kills_lange)
admin.site.register(Kills_offic)
admin.site.register(Experience)
admin.site.register(Education)
admin.site.register(Car)
admin.site.register(Fengjing)
admin.site.register(Family)
admin.site.register(Renwu)
admin.site.register(Awards)

