# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.contrib.auth.models
import django.utils.timezone
from django.conf import settings
import django.core.validators


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0006_require_contenttypes_0002'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(null=True, verbose_name='last login', blank=True)),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, max_length=30, validators=[django.core.validators.RegexValidator('^[\\w.@+-]+$', 'Enter a valid username. This value may contain only letters, numbers and @/./+/-/_ characters.', 'invalid')], help_text='Required. 30 characters or fewer. Letters, digits and @/./+/-/_ only.', unique=True, verbose_name='username')),
                ('first_name', models.CharField(max_length=30, verbose_name='first name', blank=True)),
                ('last_name', models.CharField(max_length=30, verbose_name='last name', blank=True)),
                ('email', models.EmailField(max_length=254, verbose_name='email address', blank=True)),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('avatar', models.ImageField(default=b'avatar/default.png', upload_to=b'avatar/%Y/%m', max_length=200, blank=True, null=True, verbose_name=b'\xe7\x94\xa8\xe6\x88\xb7\xe5\xa4\xb4\xe5\x83\x8f')),
                ('qq', models.CharField(max_length=20, null=True, verbose_name=b'QQ\xe5\x8f\xb7\xe7\xa0\x81', blank=True)),
                ('mobile', models.CharField(max_length=11, unique=True, null=True, verbose_name=b'\xe6\x89\x8b\xe6\x9c\xba\xe5\x8f\xb7\xe7\xa0\x81', blank=True)),
                ('url', models.URLField(max_length=100, null=True, verbose_name=b'\xe4\xb8\xaa\xe4\xba\xba\xe7\xbd\x91\xe9\xa1\xb5\xe5\x9c\xb0\xe5\x9d\x80', blank=True)),
                ('groups', models.ManyToManyField(related_query_name='user', related_name='user_set', to='auth.Group', blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(related_query_name='user', related_name='user_set', to='auth.Permission', blank=True, help_text='Specific permissions for this user.', verbose_name='user permissions')),
            ],
            options={
                'ordering': ['-id'],
                'verbose_name': '\u7528\u6237',
                'verbose_name_plural': '\u7528\u6237',
            },
            managers=[
                (b'objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Ad',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name=b'\xe5\xb9\xbf\xe5\x91\x8a\xe6\xa0\x87\xe9\xa2\x98')),
                ('description', models.CharField(max_length=200, verbose_name=b'\xe5\xb9\xbf\xe5\x91\x8a\xe6\x8f\x8f\xe8\xbf\xb0')),
                ('image_url', models.ImageField(upload_to=b'ad/%Y/%m', verbose_name=b'\xe5\x9b\xbe\xe7\x89\x87\xe8\xb7\xaf\xe5\xbe\x84')),
                ('callback_url', models.URLField(null=True, verbose_name=b'\xe5\x9b\x9e\xe8\xb0\x83url', blank=True)),
                ('date_publish', models.DateTimeField(auto_now_add=True, verbose_name=b'\xe5\x8f\x91\xe5\xb8\x83\xe6\x97\xb6\xe9\x97\xb4')),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe6\x8e\x92\xe5\x88\x97\xe9\xa1\xba\xe5\xba\x8f(\xe4\xbb\x8e\xe5\xb0\x8f\xe5\x88\xb0\xe5\xa4\xa7)')),
            ],
            options={
                'ordering': ['index', 'id'],
                'verbose_name': '\u5e7f\u544a',
                'verbose_name_plural': '\u5e7f\u544a',
            },
        ),
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name=b'\xe6\x96\x87\xe7\xab\xa0\xe6\xa0\x87\xe9\xa2\x98')),
                ('desc', models.CharField(max_length=50, verbose_name=b'\xe6\x96\x87\xe7\xab\xa0\xe6\x8f\x8f\xe8\xbf\xb0')),
                ('content', models.TextField(verbose_name=b'\xe6\x96\x87\xe7\xab\xa0\xe5\x86\x85\xe5\xae\xb9')),
                ('click_count', models.IntegerField(default=0, verbose_name=b'\xe7\x82\xb9\xe5\x87\xbb\xe6\xac\xa1\xe6\x95\xb0')),
                ('is_recommend', models.BooleanField(default=False, verbose_name=b'\xe6\x98\xaf\xe5\x90\xa6\xe6\x8e\xa8\xe8\x8d\x90')),
                ('date_publish', models.DateTimeField(auto_now_add=True, verbose_name=b'\xe5\x8f\x91\xe5\xb8\x83\xe6\x97\xb6\xe9\x97\xb4')),
            ],
            options={
                'ordering': ['-date_publish'],
                'verbose_name': '\u6587\u7ae0',
                'verbose_name_plural': '\u6587\u7ae0',
            },
        ),
        migrations.CreateModel(
            name='Awards',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe8\xaf\x81\xe4\xb9\xa6\xe5\x90\x8d\xe7\xa7\xb0')),
                ('time', models.CharField(max_length=30, verbose_name=b'\xe8\x8e\xb7\xe5\xa5\x96\xe6\x97\xb6\xe9\x97\xb4')),
                ('content', models.TextField(verbose_name=b'\xe8\x8e\xb7\xe5\xa5\x96\xe5\x86\x85\xe5\xae\xb9')),
                ('bodies', models.CharField(max_length=30, verbose_name=b'\xe9\xa2\x81\xe5\x8f\x91\xe6\x9c\xba\xe6\x9e\x84')),
            ],
            options={
                'verbose_name': '\u83b7\u5956\u4fe1\u606f',
                'verbose_name_plural': '\u83b7\u5956\u4fe1\u606f',
            },
        ),
        migrations.CreateModel(
            name='Car',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('img', models.ImageField(upload_to=b'car/%Y/%m')),
                ('name', models.CharField(max_length=60, verbose_name=b'\xe5\x9b\xbe\xe7\x89\x87\xe5\x88\x86\xe7\xb1\xbb')),
                ('content', models.TextField(verbose_name=b'\xe6\x8f\x8f\xe8\xbf\xb0')),
            ],
            options={
                'verbose_name': '\u8dd1\u8f66\u56fe\u7247',
                'verbose_name_plural': '\u8dd1\u8f66\u56fe\u7247',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe5\x88\x86\xe7\xb1\xbb\xe5\x90\x8d\xe7\xa7\xb0')),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe5\x88\x86\xe7\xb1\xbb\xe7\x9a\x84\xe6\x8e\x92\xe5\xba\x8f')),
            ],
            options={
                'ordering': ['index', 'id'],
                'verbose_name': '\u5206\u7c7b',
                'verbose_name_plural': '\u5206\u7c7b',
            },
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('content', models.TextField(verbose_name=b'\xe8\xaf\x84\xe8\xae\xba\xe5\x86\x85\xe5\xae\xb9')),
                ('username', models.CharField(max_length=30, null=True, verbose_name=b'\xe7\x94\xa8\xe6\x88\xb7\xe5\x90\x8d', blank=True)),
                ('email', models.EmailField(max_length=50, null=True, verbose_name=b'\xe9\x82\xae\xe7\xae\xb1\xe5\x9c\xb0\xe5\x9d\x80', blank=True)),
                ('url', models.URLField(max_length=100, null=True, verbose_name=b'\xe4\xb8\xaa\xe4\xba\xba\xe7\xbd\x91\xe9\xa1\xb5\xe5\x9c\xb0\xe5\x9d\x80', blank=True)),
                ('date_publish', models.DateTimeField(auto_now_add=True, verbose_name=b'\xe5\x8f\x91\xe5\xb8\x83\xe6\x97\xb6\xe9\x97\xb4')),
                ('article', models.ForeignKey(verbose_name=b'\xe6\x96\x87\xe7\xab\xa0', blank=True, to='blog.Article', null=True)),
                ('pid', models.ForeignKey(verbose_name=b'\xe7\x88\xb6\xe7\xba\xa7\xe8\xaf\x84\xe8\xae\xba', blank=True, to='blog.Comment', null=True)),
                ('user', models.ForeignKey(verbose_name=b'\xe7\x94\xa8\xe6\x88\xb7', blank=True, to=settings.AUTH_USER_MODEL, null=True)),
            ],
            options={
                'verbose_name': '\u8bc4\u8bba',
                'verbose_name_plural': '\u8bc4\u8bba',
            },
        ),
        migrations.CreateModel(
            name='Education',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('school', models.CharField(max_length=30, verbose_name=b'\xe5\xad\xa6\xe6\xa0\xa1\xe5\x90\x8d\xe7\xa7\xb0')),
                ('time', models.CharField(max_length=30, verbose_name=b'\xe6\x97\xb6\xe9\x97\xb4')),
                ('content', models.TextField(verbose_name=b'\xe5\x86\x85\xe5\xae\xb9')),
                ('major', models.CharField(max_length=30, verbose_name=b'\xe4\xb8\x93\xe4\xb8\x9a')),
            ],
            options={
                'verbose_name': '\u6559\u80b2',
                'verbose_name_plural': '\u6559\u80b2',
            },
        ),
        migrations.CreateModel(
            name='Experience',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe8\x81\x8c\xe5\x8a\xa1')),
                ('time', models.CharField(max_length=30, verbose_name=b'\xe6\x97\xb6\xe9\x97\xb4')),
                ('company', models.CharField(max_length=30, verbose_name=b'\xe5\x85\xac\xe5\x8f\xb8\xe5\x90\x8d\xe7\xa7\xb0')),
                ('content', models.TextField(verbose_name=b'\xe5\x86\x85\xe5\xae\xb9')),
            ],
            options={
                'verbose_name': '\u5de5\u4f5c\u7ecf\u9a8c',
                'verbose_name_plural': '\u5de5\u4f5c\u7ecf\u9a8c',
            },
        ),
        migrations.CreateModel(
            name='Family',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('img', models.ImageField(upload_to=b'family/%Y/%m')),
                ('name', models.CharField(max_length=60, verbose_name=b'\xe5\x9b\xbe\xe7\x89\x87\xe5\x88\x86\xe7\xb1\xbb')),
                ('content', models.TextField(verbose_name=b'\xe6\x8f\x8f\xe8\xbf\xb0')),
            ],
            options={
                'verbose_name': '\u5bb6\u4eba\u56fe\u7247',
                'verbose_name_plural': '\u5bb6\u4eba\u56fe\u7247',
            },
        ),
        migrations.CreateModel(
            name='Fengjing',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('img', models.ImageField(upload_to=b'fengjing/%Y/%m')),
                ('name', models.CharField(max_length=60, verbose_name=b'\xe5\x9b\xbe\xe7\x89\x87\xe5\x88\x86\xe7\xb1\xbb')),
                ('content', models.TextField(verbose_name=b'\xe6\x8f\x8f\xe8\xbf\xb0')),
            ],
            options={
                'verbose_name': '\u98ce\u666f\u56fe\u7247',
                'verbose_name_plural': '\u98ce\u666f\u56fe\u7247',
            },
        ),
        migrations.CreateModel(
            name='Kills_hobbies',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe4\xb8\x9a\xe4\xbd\x99\xe7\x88\xb1\xe5\xa5\xbd')),
                ('proficiency', models.IntegerField(verbose_name=b'\xe5\x8d\xa0\xe7\x94\xa8\xe7\x9a\x84\xe6\x97\xb6\xe9\x97\xb4')),
            ],
            options={
                'verbose_name': '\u4e1a\u4f59\u7231\u597d',
                'verbose_name_plural': '\u4e1a\u4f59\u7231\u597d',
            },
        ),
        migrations.CreateModel(
            name='Kills_lange',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe4\xba\xa4\xe6\xb5\x81\xe8\xaf\xad\xe8\xa8\x80')),
                ('proficiency', models.IntegerField(verbose_name=b'\xe7\x86\x9f\xe7\xbb\x83\xe5\xba\xa6')),
            ],
            options={
                'verbose_name': '\u8bed\u8a00',
                'verbose_name_plural': '\u8bed\u8a00',
            },
        ),
        migrations.CreateModel(
            name='Kills_offic',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'offic\xe5\x90\x8d\xe7\xa7\xb0')),
                ('proficiency', models.IntegerField(verbose_name=b'\xe7\x86\x9f\xe7\xbb\x83\xe5\xba\xa6')),
            ],
            options={
                'verbose_name': 'offic\u5de5\u5177',
                'verbose_name_plural': 'offic\u5de5\u5177',
            },
        ),
        migrations.CreateModel(
            name='Kills_program',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe8\xaf\xad\xe8\xa8\x80\xe5\x90\x8d\xe7\xa7\xb0')),
                ('proficiency', models.IntegerField(verbose_name=b'\xe7\x86\x9f\xe7\xbb\x83\xe5\xba\xa6')),
            ],
            options={
                'verbose_name': '\u8ba1\u7b97\u673a\u8bed\u8a00\u719f\u7ec3\u5ea6',
                'verbose_name_plural': '\u8ba1\u7b97\u673a\u8bed\u8a00\u719f\u7ec3\u5ea6',
            },
        ),
        migrations.CreateModel(
            name='Kills_system',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe6\x93\x8d\xe4\xbd\x9c\xe7\xb3\xbb\xe7\xbb\x9f\xe5\x90\x8d\xe7\xa7\xb0')),
                ('proficiency', models.IntegerField(verbose_name=b'\xe7\x86\x9f\xe7\xbb\x83\xe5\xba\xa6')),
            ],
            options={
                'verbose_name': '\u64cd\u4f5c\u7cfb\u7edf',
                'verbose_name_plural': '\u64cd\u4f5c\u7cfb\u7edf',
            },
        ),
        migrations.CreateModel(
            name='Links',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=50, verbose_name=b'\xe6\xa0\x87\xe9\xa2\x98')),
                ('description', models.CharField(max_length=200, verbose_name=b'\xe5\x8f\x8b\xe6\x83\x85\xe9\x93\xbe\xe6\x8e\xa5\xe6\x8f\x8f\xe8\xbf\xb0')),
                ('callback_url', models.URLField(verbose_name=b'url\xe5\x9c\xb0\xe5\x9d\x80')),
                ('date_publish', models.DateTimeField(auto_now_add=True, verbose_name=b'\xe5\x8f\x91\xe5\xb8\x83\xe6\x97\xb6\xe9\x97\xb4')),
                ('index', models.IntegerField(default=999, verbose_name=b'\xe6\x8e\x92\xe5\x88\x97\xe9\xa1\xba\xe5\xba\x8f(\xe4\xbb\x8e\xe5\xb0\x8f\xe5\x88\xb0\xe5\xa4\xa7)')),
            ],
            options={
                'ordering': ['index', 'id'],
                'verbose_name': '\u53cb\u60c5\u94fe\u63a5',
                'verbose_name_plural': '\u53cb\u60c5\u94fe\u63a5',
            },
        ),
        migrations.CreateModel(
            name='Persony',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe5\xa7\x93\xe5\x90\x8d')),
                ('job', models.CharField(max_length=100, verbose_name=b'\xe5\xb7\xa5\xe4\xbd\x9c')),
                ('address', models.CharField(max_length=100, verbose_name=b'\xe5\x9c\xb0\xe5\x9d\x80')),
                ('intrudec', models.TextField(verbose_name=b'\xe8\x87\xaa\xe6\x88\x91\xe4\xbb\x8b\xe7\xbb\x8d')),
                ('birth', models.CharField(max_length=30, verbose_name=b'\xe5\x87\xba\xe7\x94\x9f\xe6\x97\xa5\xe6\x9c\x9f')),
                ('eamil', models.EmailField(max_length=254, verbose_name=b'\xe9\x82\xae\xe7\xae\xb1')),
                ('websit', models.CharField(max_length=100, verbose_name=b'\xe4\xb8\xaa\xe4\xba\xba\xe7\xbd\x91\xe7\xab\x99\xe5\x9c\xb0\xe5\x9d\x80')),
                ('telephone', models.CharField(max_length=30, verbose_name=b'\xe6\x89\x8b\xe6\x9c\xba\xe5\x8f\xb7')),
            ],
            options={
                'verbose_name': '\u4e2a\u4eba\u7b80\u4ecb\u8ff0',
                'verbose_name_plural': '\u4e2a\u4eba\u7b80\u4ecb\u8ff0',
            },
        ),
        migrations.CreateModel(
            name='Renwu',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('img', models.ImageField(upload_to=b'renwu/%Y/%m')),
                ('name', models.CharField(max_length=60, verbose_name=b'\xe5\x9b\xbe\xe7\x89\x87\xe5\x88\x86\xe7\xb1\xbb')),
                ('content', models.TextField(verbose_name=b'\xe6\x8f\x8f\xe8\xbf\xb0')),
            ],
            options={
                'verbose_name': '\u4eba\u7269',
                'verbose_name_plural': '\u4eba\u7269',
            },
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30, verbose_name=b'\xe6\xa0\x87\xe7\xad\xbe\xe5\x90\x8d\xe7\xa7\xb0')),
            ],
            options={
                'verbose_name': '\u6807\u7b7e',
                'verbose_name_plural': '\u6807\u7b7e',
            },
        ),
        migrations.AddField(
            model_name='article',
            name='category',
            field=models.ForeignKey(verbose_name=b'\xe5\x88\x86\xe7\xb1\xbb', blank=True, to='blog.Category', null=True),
        ),
        migrations.AddField(
            model_name='article',
            name='tag',
            field=models.ManyToManyField(to='blog.Tag', verbose_name=b'\xe6\xa0\x87\xe7\xad\xbe'),
        ),
        migrations.AddField(
            model_name='article',
            name='user',
            field=models.ForeignKey(verbose_name=b'\xe7\x94\xa8\xe6\x88\xb7', to=settings.AUTH_USER_MODEL),
        ),
    ]
