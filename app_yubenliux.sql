-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2017 年 01 月 11 日 15:10
-- 服务器版本: 5.6.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_yubenliux`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add 用户', 6, 'add_user'),
(17, 'Can change 用户', 6, 'change_user'),
(18, 'Can delete 用户', 6, 'delete_user'),
(19, 'Can add 标签', 7, 'add_tag'),
(20, 'Can change 标签', 7, 'change_tag'),
(21, 'Can delete 标签', 7, 'delete_tag'),
(22, 'Can add 分类', 8, 'add_category'),
(23, 'Can change 分类', 8, 'change_category'),
(24, 'Can delete 分类', 8, 'delete_category'),
(25, 'Can add 文章', 9, 'add_article'),
(26, 'Can change 文章', 9, 'change_article'),
(27, 'Can delete 文章', 9, 'delete_article'),
(28, 'Can add 评论', 10, 'add_comment'),
(29, 'Can change 评论', 10, 'change_comment'),
(30, 'Can delete 评论', 10, 'delete_comment'),
(31, 'Can add 友情链接', 11, 'add_links'),
(32, 'Can change 友情链接', 11, 'change_links'),
(33, 'Can delete 友情链接', 11, 'delete_links'),
(34, 'Can add 广告', 12, 'add_ad'),
(35, 'Can change 广告', 12, 'change_ad'),
(36, 'Can delete 广告', 12, 'delete_ad'),
(37, 'Can add 个人简介述', 13, 'add_persony'),
(38, 'Can change 个人简介述', 13, 'change_persony'),
(39, 'Can delete 个人简介述', 13, 'delete_persony'),
(40, 'Can add 操作系统', 14, 'add_kills_system'),
(41, 'Can change 操作系统', 14, 'change_kills_system'),
(42, 'Can delete 操作系统', 14, 'delete_kills_system'),
(43, 'Can add 计算机语言熟练度', 15, 'add_kills_program'),
(44, 'Can change 计算机语言熟练度', 15, 'change_kills_program'),
(45, 'Can delete 计算机语言熟练度', 15, 'delete_kills_program'),
(46, 'Can add offic工具', 16, 'add_kills_offic'),
(47, 'Can change offic工具', 16, 'change_kills_offic'),
(48, 'Can delete offic工具', 16, 'delete_kills_offic'),
(49, 'Can add 业余爱好', 17, 'add_kills_hobbies'),
(50, 'Can change 业余爱好', 17, 'change_kills_hobbies'),
(51, 'Can delete 业余爱好', 17, 'delete_kills_hobbies'),
(52, 'Can add 语言', 18, 'add_kills_lange'),
(53, 'Can change 语言', 18, 'change_kills_lange'),
(54, 'Can delete 语言', 18, 'delete_kills_lange'),
(55, 'Can add 工作经验', 19, 'add_experience'),
(56, 'Can change 工作经验', 19, 'change_experience'),
(57, 'Can delete 工作经验', 19, 'delete_experience'),
(58, 'Can add 教育', 20, 'add_education'),
(59, 'Can change 教育', 20, 'change_education'),
(60, 'Can delete 教育', 20, 'delete_education'),
(61, 'Can add 获奖信息', 21, 'add_awards'),
(62, 'Can change 获奖信息', 21, 'change_awards'),
(63, 'Can delete 获奖信息', 21, 'delete_awards'),
(64, 'Can add 风景图片', 22, 'add_fengjing'),
(65, 'Can change 风景图片', 22, 'change_fengjing'),
(66, 'Can delete 风景图片', 22, 'delete_fengjing'),
(67, 'Can add 人物', 23, 'add_renwu'),
(68, 'Can change 人物', 23, 'change_renwu'),
(69, 'Can delete 人物', 23, 'delete_renwu'),
(70, 'Can add 跑车图片', 24, 'add_car'),
(71, 'Can change 跑车图片', 24, 'change_car'),
(72, 'Can delete 跑车图片', 24, 'delete_car'),
(73, 'Can add 家人图片', 25, 'add_family'),
(74, 'Can change 家人图片', 25, 'change_family'),
(75, 'Can delete 家人图片', 25, 'delete_family');

-- --------------------------------------------------------

--
-- 表的结构 `blog_ad`
--

CREATE TABLE IF NOT EXISTS `blog_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `callback_url` varchar(200) DEFAULT NULL,
  `date_publish` datetime NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `blog_ad`
--

INSERT INTO `blog_ad` (`id`, `title`, `description`, `image_url`, `callback_url`, `date_publish`, `index`) VALUES
(4, '1', '1', 'ad/2017/01/1.jpg', '', '2017-01-07 11:23:31', 999),
(8, '4', '4', 'ad/2017/01/4.jpg', NULL, '2017-01-11 14:34:10', 23),
(3, '3', '3', 'ad/2017/01/3.jpg', NULL, '0000-00-00 00:00:00', 22),
(7, '4', '4', 'ad/2017/01/2.jpg', '', '2017-01-07 11:24:22', 999),
(9, '5', '5', 'ad/2017/01/5.jpg', '', '2017-01-11 14:34:46', 55),
(10, '6', '6', 'ad/2017/01/6.jpg', '', '2017-01-11 14:35:08', 66),
(11, '7', '7', 'ad/2017/01/7.jpg', '', '2017-01-11 14:35:35', 77),
(12, '8', '8', 'ad/2017/01/8.jpg', NULL, '0000-00-00 00:00:00', 88),
(13, '8', '8', 'ad/2017/01/8.jpg', NULL, '2017-01-11 14:36:10', 88),
(14, '9', '9', 'ad/2017/01/9.jpg', NULL, '2017-01-11 14:36:32', 99),
(15, '10', '10', 'ad/2017/01/10.jpg', NULL, '2017-01-11 14:36:52', 100),
(16, '11', '11', 'ad/2017/01/11.jpg', NULL, '2017-01-11 14:37:12', 111),
(17, '12', '12', 'ad/2017/01/12.jpg', NULL, '2017-01-11 14:37:28', 121),
(18, '13', '13', 'ad/2017/01/13.jpg', NULL, '2017-01-11 14:37:47', 131),
(19, '14', '14', 'ad/2017/01/14.jpg', NULL, '2017-01-11 14:34:46', 14);

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_b583a629` (`category_id`),
  KEY `blog_article_e8701ad4` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `desc`, `content`, `click_count`, `is_recommend`, `date_publish`, `category_id`, `user_id`) VALUES
(3, '心情一曲', '父亲听到这里，会立马把话接下去：说，接着说，万一什么', '<p>\r\n	<img src="/uploads/kindeditor/2017/1/2c1a2fe1-d3d4-11e6-9cbf-74d435c2e4c4.jpg" alt="" /> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">这么多年来，我一直都非常感谢一种常在我耳边出现的声音。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">它们分别在不同的时段由不同的人物发出，语气甚至是原话内容都不太统一，但它们都可以归结成一句：</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">这事不一定能成，但我还是建议你，去试一试。</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">1.</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">小时候家里穷，心里也挺自卑。每到年关当口，父母就会带着我去一趟县城，买点年货，顺便也逛一逛。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">但凡走到任何一家装修稍显华丽的店面门口，我都是不好意思进去的，我知道进去了也买不了什么，还要遭售货员一阵白眼。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">父亲则比较放得开，更愿意逛，他拉着我说：走，进去看看。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我往往都会憋闷好一阵，在冷风中从牙缝里挤出一句：别了吧，进去也不一定买，挺丢人的，万一……</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">父亲听到这里，会立马把话接下去：</span><b><span style="font-size:10px;">说，接着说，万一什么？</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">这倒是把我问猛住了，是啊，万一什么呢？我一时真想不出来。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">父亲帮我说：万一发现东西太贵怎么办？是吗？贵的话咱可以不买啊，等有钱了再买呗。万一人家冷笑翻白眼怎么办？是吗？凭什么冲我们翻白眼，不买东西，还不允许顾客走走看看了？还有万一什么？还能怎么样？要了咱的命不成？</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">经过父亲这般分析，我深觉有理，是啊，最坏的结果，总不至于要了我的命吧。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">“那咱……推门进去？”</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="color:#DFC5A4;font-size:10px;background-color:#000000;"><span style="color:#333333;"><span>“对，推门进去！”</span><span style="background-color:;"></span></span><span style="font-size:16px;"></span></span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<b><span style="font-size:10px;">现在想来，父亲给予我最大的财富，便是这天不怕地不怕的勇气了，从那之后，有想做但不敢做的事，我都会先给自己一分钟的时间，直接想想如果做了，最坏的后果是什么，以及，自己能否承受得住，但凡可以，必做无疑，除非我不想。</span></b> \r\n</p>\r\n<p>\r\n	<span style="color:#DFC5A4;font-size:10px;background-color:#000000;"><span>于是，在大学二年级，有人问我，来了两位美国外交官，需要有学生代表过去做个交流</span><span style="color:#333333;"></span><span>谈话，你愿不愿意的时候，我一口答应下来。</span></span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">每每回想此事，使我感到高兴的并非是通过两个半小时的交流让我获得了什么，而是我为自己感到庆幸，我知道，如果当时害怕躲了过去，我会遗憾一辈子的。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">2.</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">刚上高中一年级的时候，我在理科重点班。其实我们高二才分文理科，之所以高一就喜欢称其为理科重点班，是因为我们学校重理轻文，这种不平衡也是有道理的，一来，我们的县城高中客观上讲，各方面条件的确是有限得很，理科升学率勉强算可以，至于文科，根本就没法提。二来，这些高一就读于重点班的孩子，高二肯定都会选择读理科的，谁选读文科，那简直是脑子进了水。</span> \r\n</p>\r\n<p>\r\n	<b><span style="font-size:10px;">嗯，我便是脑子进水的那个。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">在提交文理分科志愿表的时候，两个重点班，100名学生，选择学文的，只有三个，若是精确到男性，则只剩我这个光杆司令。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">同学之间倒不存在歧视，他们是真心的替我的升学感到担忧，毕竟事实摆在那里：我们分班时恰逢上上届的学姐学长参加完高考，传回来的战报是：文科生里只有一名学姐过了一本线，还是个重读的。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">当时我并没有多么强烈的使命感，只是觉得，我如果选择了理科，怎样也会考上个普本，将来找份还可以的工作，但怎么想怎么不畅快；但若选择了学文，也许只能考个专科，男孩做这些咬文嚼字的工作，也许还会被骂没出息，</span><b><span style="font-size:10px;">但即便这样，我还是想想就觉得开心。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">那个暑假的某天，我们全体师生吃了一次“散伙饭”，说是散伙，他们是散不了的，开学后走到另一条路上的人，只有三个。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">那天大家彼此推杯换盏，我则像个格格不入的局外人，略有尴尬，大家挨个走到班主任老师前敬酒，老师也给每个学生说点未来寄语。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我这个选择学文的，一万个不敢走上前，因为班主任教物理，我的物理成绩又是常年稳定在倒数第一。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">逃不过，便不逃了，硬着头皮走到她跟前，缓缓举起杯子：“那个……老师我要去文科班了。”</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我现在还记得，老师姓任，任老师突然把嗓门抬到高八度，夸张地把所有的注意力全部吸引到我们这来，然后说：你敢想敢为又肯下功夫，学理科会有进步的，即便学文，那你也是出类拔萃的！</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">多数人为少数人的选择鼓起掌来，那天我喝了很多酒，应该是哭了。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">离席之前，她走到我这里，拍着肩膀小声说：</span><b><span style="font-size:10px;">做自己的决定，不用过分关注结果，哪怕是跟别人不一样，哪怕最后没成功，也是另一种收获，最起码，咱这辈子不后悔。</span></b><span style="font-size:10px;">老师学理的，但老师也知道语文课本里有这样的话：</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">夫夷以近，则游者众，险以远，则至者少。而世之奇伟瑰怪非常之观，常在于险远，而人之所罕至焉，故非有志者不能至也。</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">当年的高考没有考这段话，但我还是考上了一本；事情也过去好多年了，但我仍记得这段话。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">3.</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">这毕竟不是剧本，这是生活，不可能每一个选择都指向一个大团圆的结局。</span> \r\n</p>\r\n<p>\r\n	<b><span style="font-size:10px;">回想从前做过的那些“少数派”的决定，有的成了，有的没成，但那些没成的，不但没有影响我快活的人生体验，反倒觉得，更值得一说。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">读大学的时候，学校组织了场运动会，要求每个项目都有人员报名。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我们学院的男女比例不好形容，具体到我们班，美女倒是如云，男生一只手就能数的过来。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">男子五千米长跑，其余几位男同胞都是拒绝的，一方面，确实是累人。另一方面，跑不跑的完都是两说，即便跑下来，也注定倒数第一，在七八千双眼睛面前，不够丢人的。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我上了，不是因为我有实力，不是因为我脸皮厚，仅仅因为，我想试试，仅仅因为，我没跑过。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">比赛前的一个月，我每天都在校园广场上跑啊跑，从广场舞大妈的队伍旁路过无数次，也偶尔会撞见老师和同学，有天傍晚恰好碰上我特别崇拜的一位教授和他的妻子携手散步，他认出我来，便问：这是要参加运动会？我说是的。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">他笑了笑：</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">我也跑过，跑不赢都挺有意思的，坚持下试试。</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">在我跑出去尚能听得见他声音的时候，听见他对妻子说：</span><b><span style="font-size:10px;">年轻人就该这样。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">比赛那天，纵然通过一个月的魔鬼训练，我的速度有所提升，但由于过于兴奋，乱了节奏，气息调不匀，有风，常与看台上的观众互动导致乱了军心，呃……好吧我就是跑得慢。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我一直处在倒数第二的位置，我知道我正常发挥是可以稳拿倒数第五左右的，但也算及格，因为我把倒数第一的那个同学跑吐了。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">毕业那会特别想去读人大的研究生，录取率实在太低，身边的朋友家长也有劝我谨慎选择的。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">当时有位曾教过我的老师恰好去人大读博士后，我就颤颤巍巍地发了条短信给她，问问她希望大不大。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">没过一会，她一通电话呼过来，叫定我的名字：“这么说吧，很难，真的很难，要是从概率上讲吧，你十有八九是考不上的。”</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">“哦……”</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">“你知道吗？要花好长好长时间复习，看的书都要记下来，竞争对手不是一般人，是尖子里的尖子，筛选特严，而且考不上很打脸，而且你可能错过这一年中的很多其他的机会，而且……”</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">“哦……”</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">“但老师还是希望你试一试。”</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">“嗯？”</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">“我说，我还是希望，你，试，一，试。”</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">“可是……”</span> \r\n</p>\r\n<blockquote>\r\n	<p>\r\n		<span style="font-size:10px;">“我希望你试一试，我真的希望你试一试，不然你以后回忆起来，会一直想这个事儿的。”</span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<span style="font-size:10px;">“嗯。”</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我没考上，差了一点，确实是没考上，即便也调剂成功了，但事实就是没考上。但，我舒坦了。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我拿着高学历去做几个月勤杂工的时候，很多人都不知道为什么；我从去年开始选择在网上写文章的时候，很多人都不知道为什么。我做一些稀奇古怪的事的时候，很多人都不知道为什么。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">有时候，我也说不好为什么，我只是有一样特别清楚</span><b><span style="font-size:10px;">：那是我的选择，是真正属于我这个生命个体的选择。而人之所以能证明自己活过，不也是正源自于此么。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">我是个看热闹不嫌事大的人，甭管谁问我选择性的问题，我都会“不负责任”地怂恿一下，告诉对方试一试，试一试。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">但这便是最大的“负责”，嗯，我知道的，我也会告诉对方，结果可能，且很有可能失败，但说不上为什么，我总是想告诉别人，试一试，再试一试。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">后来我明白：</span><b><span style="font-size:10px;">匆匆几十年，很多事情，试对了，是收获；试错了，是景色。</span></b> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">齐天大圣到此一游，我来过。</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:10px;">end.</span> \r\n</p>\r\n<strong><span style="font-size:16px;"></span></strong>', 2, 0, '2017-02-01 16:04:41', 5, 1),
(4, '论持久战', '毛主席', '<img src="/uploads/kindeditor/2017/1/e52cd170-d3e5-11e6-b3ee-74d435c2e4c4.jpeg" alt="" />', 0, 0, '2017-01-06 07:58:55', 6, 3),
(5, '文件服务器', ' 文件...................', '<pre class="prettyprint lang-py">\r\n<pre class="prettyprint lang-py">#!/usr/bin/python\r\n 2 #_*_coding:utf-8 _*_\r\n 3 import  urlparse\r\n 4 import urllib2\r\n 5 import random\r\n 6 import time\r\n 7 from   datetime  import  datetime, timedelta\r\n 8 import socket \r\n 9 import disk_cache \r\n10 DEFAULT_AGENT=''WSWP''  # 设置代理\r\n11 DEFAULT_DELAY=5       #设置下载延迟 为了限制下载速度\r\n12 DEFAULT_RETRIES=1#发生错误时候尝试的次数\r\n13 DEFAULT_TIMEOUT=60   \r\n14 CACHE=disk_cache.DiskCache()</pre>\r\n<br />\r\n</pre>', 0, 0, '2017-01-06 08:22:01', 7, 2);

-- --------------------------------------------------------

--
-- 表的结构 `blog_article_tag`
--

CREATE TABLE IF NOT EXISTS `blog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`,`tag_id`),
  KEY `blog_article_tag_a00c1b00` (`article_id`),
  KEY `blog_article_tag_76f094bc` (`tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `blog_article_tag`
--

INSERT INTO `blog_article_tag` (`id`, `article_id`, `tag_id`) VALUES
(11, 3, 3),
(10, 5, 3);

-- --------------------------------------------------------

--
-- 表的结构 `blog_awards`
--

CREATE TABLE IF NOT EXISTS `blog_awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `bodies` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `blog_awards`
--

INSERT INTO `blog_awards` (`id`, `name`, `time`, `content`, `bodies`) VALUES
(1, 'HCNP', '2016', '华为高级网络工程师', '华为公司');

-- --------------------------------------------------------

--
-- 表的结构 `blog_car`
--

CREATE TABLE IF NOT EXISTS `blog_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_car`
--

INSERT INTO `blog_car` (`id`, `img`, `name`, `content`) VALUES
(1, 'car/2017/01/1.png', '', ''),
(2, 'car/2017/01/2.png', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `index`) VALUES
(2, '首页', 999),
(3, '博客', 999),
(4, '个人空间', 999),
(5, '心情', 999),
(6, '军事', 999),
(7, 'script', 999);

-- --------------------------------------------------------

--
-- 表的结构 `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `date_publish` datetime NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_a00c1b00` (`article_id`),
  KEY `blog_comment_252a6649` (`pid_id`),
  KEY `blog_comment_e8701ad4` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `content`, `username`, `email`, `url`, `date_publish`, `article_id`, `pid_id`, `user_id`) VALUES
(2, '不错啊', 'yubenliu', 'example@webscraping.com', 'http://www.baidu.com', '2017-01-06 06:01:55', 3, NULL, 3);

-- --------------------------------------------------------

--
-- 表的结构 `blog_education`
--

CREATE TABLE IF NOT EXISTS `blog_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  `major` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_education`
--

INSERT INTO `blog_education` (`id`, `school`, `time`, `content`, `major`) VALUES
(1, '潜上二中', '2009-2012', '学习高中知识，乐于打球，学习。起早贪晚，3点一线，', '理科班'),
(2, '安徽交通职业技术学院', '2014—2015', '学习网络知识，主修网络工程，编程，服务器等', '计算机网络'),
(3, 'OPENLAB', '2015—2016', '学习思科华为交换路由', '网络工程师');

-- --------------------------------------------------------

--
-- 表的结构 `blog_experience`
--

CREATE TABLE IF NOT EXISTS `blog_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `blog_experience`
--

INSERT INTO `blog_experience` (`id`, `name`, `time`, `company`, `content`) VALUES
(1, '测试工程师', '2015—2016', '安徽中新软件', '测试相关的网络产品，如DDOS，抗拒绝，防火墙，WAF等，研究一些安全问题，找出想应得bug,提出相应的BUG。');

-- --------------------------------------------------------

--
-- 表的结构 `blog_family`
--

CREATE TABLE IF NOT EXISTS `blog_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `blog_family`
--

INSERT INTO `blog_family` (`id`, `img`, `name`, `content`) VALUES
(0, 'family/2017/01/05.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `blog_fengjing`
--

CREATE TABLE IF NOT EXISTS `blog_fengjing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_fengjing`
--

INSERT INTO `blog_fengjing` (`id`, `img`, `name`, `content`) VALUES
(1, 'fengjing/2017/01/1.jpg', '', ''),
(2, 'fengjing/2017/01/2.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `blog_kills_hobbies`
--

CREATE TABLE IF NOT EXISTS `blog_kills_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `proficiency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `blog_kills_hobbies`
--

INSERT INTO `blog_kills_hobbies` (`id`, `name`, `proficiency`) VALUES
(1, '学习', 70),
(2, '学校', 20),
(3, '打篮球', 30),
(4, '听歌', 5),
(5, '运动', 10);

-- --------------------------------------------------------

--
-- 表的结构 `blog_kills_lange`
--

CREATE TABLE IF NOT EXISTS `blog_kills_lange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `proficiency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `blog_kills_lange`
--

INSERT INTO `blog_kills_lange` (`id`, `name`, `proficiency`) VALUES
(5, '汉语', 99),
(6, '英语', 60);

-- --------------------------------------------------------

--
-- 表的结构 `blog_kills_offic`
--

CREATE TABLE IF NOT EXISTS `blog_kills_offic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `proficiency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_kills_offic`
--

INSERT INTO `blog_kills_offic` (`id`, `name`, `proficiency`) VALUES
(1, 'word', 80),
(2, 'ppt ', 70),
(3, 'exec', 66);

-- --------------------------------------------------------

--
-- 表的结构 `blog_kills_program`
--

CREATE TABLE IF NOT EXISTS `blog_kills_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `proficiency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `blog_kills_program`
--

INSERT INTO `blog_kills_program` (`id`, `name`, `proficiency`) VALUES
(1, 'Python', 70),
(2, 'c语音', 50),
(3, 'shell', 70),
(4, '交换路由', 80),
(5, 'HTML/CSS', 50),
(6, 'Peal', 50);

-- --------------------------------------------------------

--
-- 表的结构 `blog_kills_system`
--

CREATE TABLE IF NOT EXISTS `blog_kills_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `proficiency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `blog_kills_system`
--

INSERT INTO `blog_kills_system` (`id`, `name`, `proficiency`) VALUES
(1, 'centos', 80),
(2, 'Debain', 70),
(3, 'windows', 90),
(4, 'unbutu', 80);

-- --------------------------------------------------------

--
-- 表的结构 `blog_links`
--

CREATE TABLE IF NOT EXISTS `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `callback_url` varchar(200) NOT NULL,
  `date_publish` datetime NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `blog_links`
--

INSERT INTO `blog_links` (`id`, `title`, `description`, `callback_url`, `date_publish`, `index`) VALUES
(1, 'baidu ', 'dd', 'http://ww.baidu.com', '2017-01-06 05:47:43', 999),
(2, '知乎', 'http://www.zhihu.com', 'http://www.zhihu.com', '2017-01-10 11:21:41', 999),
(3, '爬虫', '爬虫', 'http://cuiqingcai.com', '2017-01-11 01:25:26', 999),
(4, '京东', '京东', 'https://www.jd.com', '2017-01-11 01:26:01', 999),
(5, 'github', 'github', 'http://www.github.com', '2017-01-11 01:26:24', 999),
(6, '新浪', 'http://www.sina.com.cn/', 'http://www.sina.com.cn/', '2017-01-11 01:27:46', 999);

-- --------------------------------------------------------

--
-- 表的结构 `blog_persony`
--

CREATE TABLE IF NOT EXISTS `blog_persony` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `job` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `intrudec` longtext NOT NULL,
  `birth` varchar(30) NOT NULL,
  `eamil` varchar(254) NOT NULL,
  `websit` varchar(100) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `blog_persony`
--

INSERT INTO `blog_persony` (`id`, `name`, `job`, `address`, `intrudec`, `birth`, `eamil`, `websit`, `telephone`) VALUES
(1, 'yu benliu', '安全测试工程师', '安徽合肥高新区', '从事互联网安全工作，热爱学习，热爱研究，乐观开朗。IT愤青青年。', '1992-02-11', '1014425308@qq.com', 'http://yubenliux.applinzi.com/', '18356954786');

-- --------------------------------------------------------

--
-- 表的结构 `blog_renwu`
--

CREATE TABLE IF NOT EXISTS `blog_renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `blog_renwu`
--

INSERT INTO `blog_renwu` (`id`, `img`, `name`, `content`) VALUES
(1, 'renwu/2017/01/1.jpg', '', ''),
(2, 'renwu/2017/01/2.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `blog_tag`
--

CREATE TABLE IF NOT EXISTS `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `name`) VALUES
(4, '交友'),
(3, '心灵鸡汤'),
(5, 'python'),
(6, '爬虫'),
(7, '攻击黑客'),
(8, '安全'),
(9, '90后'),
(10, '英雄联盟'),
(11, '合肥'),
(12, 'NBA'),
(13, '中新软件'),
(14, '篮球'),
(15, '体育'),
(16, '生活'),
(17, 'script'),
(18, '电视剧');

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `avatar`, `qq`, `mobile`, `url`) VALUES
(1, 'pbkdf2_sha256$20000$EobVyPaW9G5q$4nif9lLusFRyxRx0JtrJy4rKqoY/y5OKAWaszttHEEk=', '2017-01-11 01:14:24', 1, 'root', '', '', '', 1, 1, '2017-01-05 07:37:18', 'avatar/default.png', NULL, NULL, NULL),
(2, 'pbkdf2_sha256$20000$ENJAxFvxiS1N$Bb0/IKN8ChYHXh6DBn2wKJXeXy09S8cpZbd8hayWkkA=', '2017-01-05 07:43:10', 0, 'sysadmin', '', '', '1014425308@qq.com', 0, 1, '2017-01-05 07:43:10', 'avatar/default.png', NULL, NULL, 'http://www.baidu.com'),
(3, 'pbkdf2_sha256$20000$VuD40VTSBXz7$UBwNcuN9tXus1OUb+M4otSccs57p1w+ml5ioPRbEgyg=', '2017-01-06 06:01:44', 0, 'yubenliu', '', '', 'example@webscraping.com', 0, 1, '2017-01-06 06:01:44', 'avatar/default.png', NULL, NULL, 'http://www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `blog_user_groups`
--

CREATE TABLE IF NOT EXISTS `blog_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `blog_user_groups_e8701ad4` (`user_id`),
  KEY `blog_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `blog_user_groups`
--


-- --------------------------------------------------------

--
-- 表的结构 `blog_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `blog_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `blog_user_user_permissions_e8701ad4` (`user_id`),
  KEY `blog_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `blog_user_user_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-01-05 07:38:44', '1', 'dd ', 1, '', 8, 1),
(2, '2017-01-05 07:38:47', '1', 'ff ', 1, '', 7, 1),
(3, '2017-01-05 07:38:56', '1', 'f ', 1, '', 9, 1),
(4, '2017-01-05 07:46:41', '2', 'xxx', 1, '', 7, 1),
(5, '2017-01-05 07:46:43', '2', '生活这件小事', 1, '', 9, 1),
(6, '2017-01-05 07:46:51', '2', '生活这件小事', 2, 'Changed click_count.', 9, 1),
(7, '2017-01-05 07:50:43', '1', '生活这件小事', 1, '', 12, 1),
(8, '2017-01-06 03:25:26', '1', 'ff', 1, '', 25, 1),
(9, '2017-01-06 03:25:39', '1', '任务', 2, 'Changed name.', 25, 1),
(10, '2017-01-06 03:35:44', '2', '赫尔咯', 1, '', 12, 1),
(11, '2017-01-06 05:20:55', '1', 'dd ', 3, '', 8, 1),
(12, '2017-01-06 05:21:07', '2', '首页', 1, '', 8, 1),
(13, '2017-01-06 05:21:17', '3', '博客', 1, '', 8, 1),
(14, '2017-01-06 05:21:31', '4', '个人空间', 1, '', 8, 1),
(15, '2017-01-06 05:47:43', '1', 'baidu ', 1, '', 11, 1),
(16, '2017-01-06 05:51:47', '5', '心情', 1, '', 8, 1),
(17, '2017-01-06 05:52:04', '3', '心灵鸡汤', 1, '', 7, 1),
(18, '2017-01-06 05:52:41', '3', '心情一曲', 1, '', 9, 1),
(19, '2017-01-06 05:54:53', '3', '心情一曲', 2, 'Changed content.', 9, 1),
(20, '2017-01-06 07:58:48', '6', '军事', 1, '', 8, 1),
(21, '2017-01-06 07:58:55', '4', '论持久战', 1, '', 9, 1),
(22, '2017-01-06 07:59:07', '3', '心情一曲', 2, 'Changed click_count.', 9, 1),
(23, '2017-01-06 08:21:57', '7', 'script', 1, '', 8, 1),
(24, '2017-01-06 08:22:01', '5', '文件服务器', 1, '', 9, 1),
(25, '2017-01-06 08:40:16', '5', '文件服务器', 2, 'Changed content.', 9, 1),
(26, '2017-01-06 08:42:15', '5', '文件服务器', 2, 'Changed content.', 9, 1),
(27, '2017-01-06 09:08:21', '5', '文件服务器', 2, 'Changed content.', 9, 1),
(28, '2017-01-06 09:10:27', '5', '文件服务器', 2, 'Changed content.', 9, 1),
(29, '2017-01-07 06:05:17', '3', '没了', 1, '', 12, 1),
(30, '2017-01-07 08:52:25', '1', 'linux ', 1, '', 14, 1),
(31, '2017-01-07 11:23:31', '4', '1', 1, '', 12, 1),
(32, '2017-01-07 11:23:50', '5', '2', 1, '', 12, 1),
(33, '2017-01-07 11:24:06', '6', '3', 1, '', 12, 1),
(34, '2017-01-07 11:24:22', '7', '4', 1, '', 12, 1),
(35, '2017-01-07 11:49:52', '1', '生活这件小事', 3, '', 12, 1),
(36, '2017-01-07 11:49:59', '2', '赫尔咯', 3, '', 12, 1),
(37, '2017-01-07 11:50:12', '3', '没了', 3, '', 12, 1),
(38, '2017-01-10 08:54:32', '1', 'centos', 2, 'Changed name and proficiency.', 14, 1),
(39, '2017-01-10 08:54:49', '2', 'Debain', 1, '', 14, 1),
(40, '2017-01-10 08:54:59', '3', 'windows', 1, '', 14, 1),
(41, '2017-01-10 08:55:07', '4', 'unbutu', 1, '', 14, 1),
(42, '2017-01-10 08:55:33', '1', 'Python', 1, '', 18, 1),
(43, '2017-01-10 08:55:51', '2', 'C语音', 1, '', 18, 1),
(44, '2017-01-10 08:56:13', '3', 'HTML/CSS', 1, '', 18, 1),
(45, '2017-01-10 08:56:31', '4', '路由交换', 1, '', 18, 1),
(46, '2017-01-10 11:02:07', '1', '学习', 1, '', 17, 1),
(47, '2017-01-10 11:02:13', '1', '学习', 2, 'No fields changed.', 17, 1),
(48, '2017-01-10 11:21:41', '2', '知乎', 1, '', 11, 1),
(49, '2017-01-10 11:22:23', '2', '学校', 1, '', 17, 1),
(50, '2017-01-10 11:22:47', '3', '打篮球', 1, '', 17, 1),
(51, '2017-01-10 11:23:07', '4', '听歌', 1, '', 17, 1),
(52, '2017-01-10 11:23:22', '5', '运动', 1, '', 17, 1),
(53, '2017-01-11 01:16:48', '1', 'YuBenLiu', 1, '', 13, 1),
(54, '2017-01-11 01:17:46', '1', 'yu benliu', 2, 'Changed name.', 13, 1),
(55, '2017-01-11 01:19:17', '4', '路由交换', 3, '', 18, 1),
(56, '2017-01-11 01:19:23', '3', 'HTML/CSS', 3, '', 18, 1),
(57, '2017-01-11 01:19:28', '2', 'C语音', 3, '', 18, 1),
(58, '2017-01-11 01:19:32', '1', 'Python', 3, '', 18, 1),
(59, '2017-01-11 01:19:44', '5', '汉语', 1, '', 18, 1),
(60, '2017-01-11 01:19:53', '6', '英语', 1, '', 18, 1),
(61, '2017-01-11 01:20:13', '1', 'Python', 1, '', 15, 1),
(62, '2017-01-11 01:20:28', '2', 'c语音', 1, '', 15, 1),
(63, '2017-01-11 01:20:36', '3', 'shell', 1, '', 15, 1),
(64, '2017-01-11 01:20:48', '4', '交换路由', 1, '', 15, 1),
(65, '2017-01-11 01:21:02', '5', 'HTML/CSS', 1, '', 15, 1),
(66, '2017-01-11 01:21:30', '6', 'Peal', 1, '', 15, 1),
(67, '2017-01-11 01:21:53', '2', 'xxx', 3, '', 7, 1),
(68, '2017-01-11 01:22:01', '1', 'ff ', 3, '', 7, 1),
(69, '2017-01-11 01:22:12', '4', '交友', 1, '', 7, 1),
(70, '2017-01-11 01:22:23', '5', 'python', 1, '', 7, 1),
(71, '2017-01-11 01:22:32', '6', '爬虫', 1, '', 7, 1),
(72, '2017-01-11 01:22:48', '7', '攻击黑客', 1, '', 7, 1),
(73, '2017-01-11 01:22:54', '8', '安全', 1, '', 7, 1),
(74, '2017-01-11 01:23:02', '9', '90后', 1, '', 7, 1),
(75, '2017-01-11 01:23:15', '10', '英雄联盟', 1, '', 7, 1),
(76, '2017-01-11 01:23:21', '11', '合肥', 1, '', 7, 1),
(77, '2017-01-11 01:23:30', '12', 'NBA', 1, '', 7, 1),
(78, '2017-01-11 01:23:52', '13', '中新软件', 1, '', 7, 1),
(79, '2017-01-11 01:23:59', '14', '篮球', 1, '', 7, 1),
(80, '2017-01-11 01:24:04', '15', '体育', 1, '', 7, 1),
(81, '2017-01-11 01:24:12', '16', '生活', 1, '', 7, 1),
(82, '2017-01-11 01:24:19', '17', 'script', 1, '', 7, 1),
(83, '2017-01-11 01:24:31', '18', '电视剧', 1, '', 7, 1),
(84, '2017-01-11 01:25:26', '3', '爬虫', 1, '', 11, 1),
(85, '2017-01-11 01:26:01', '4', '京东', 1, '', 11, 1),
(86, '2017-01-11 01:26:24', '5', 'github', 1, '', 11, 1),
(87, '2017-01-11 01:27:46', '6', '新浪', 1, '', 11, 1),
(88, '2017-01-11 01:28:29', '5', '2', 3, '', 12, 1),
(89, '2017-01-11 01:28:35', '6', '3', 3, '', 12, 1),
(90, '2017-01-11 01:32:06', '1', 'word', 1, '', 16, 1),
(91, '2017-01-11 01:32:15', '2', 'ppt ', 1, '', 16, 1),
(92, '2017-01-11 01:32:29', '3', 'exec', 1, '', 16, 1),
(93, '2017-01-11 01:33:44', '1', '潜上二中', 1, '', 20, 1),
(94, '2017-01-11 01:34:28', '2', '安徽交通职业技术学院', 1, '', 20, 1),
(95, '2017-01-11 01:34:47', '3', 'OPENLAB', 1, '', 20, 1),
(96, '2017-01-11 01:37:08', '1', '测试工程师', 1, '', 19, 1),
(97, '2017-01-11 01:38:56', '1', 'HCNP', 1, '', 21, 1),
(98, '2017-01-11 02:25:48', '3', '心情一曲', 2, 'Changed content.', 9, 1);

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'blog', 'user'),
(7, 'blog', 'tag'),
(8, 'blog', 'category'),
(9, 'blog', 'article'),
(10, 'blog', 'comment'),
(11, 'blog', 'links'),
(12, 'blog', 'ad'),
(13, 'blog', 'persony'),
(14, 'blog', 'kills_system'),
(15, 'blog', 'kills_program'),
(16, 'blog', 'kills_offic'),
(17, 'blog', 'kills_hobbies'),
(18, 'blog', 'kills_lange'),
(19, 'blog', 'experience'),
(20, 'blog', 'education'),
(21, 'blog', 'awards'),
(22, 'blog', 'fengjing'),
(23, 'blog', 'renwu'),
(24, 'blog', 'car'),
(25, 'blog', 'family');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-01-05 07:34:12'),
(2, 'contenttypes', '0002_remove_content_type_name', '2017-01-05 07:34:12'),
(3, 'auth', '0001_initial', '2017-01-05 07:34:12'),
(4, 'auth', '0002_alter_permission_name_max_length', '2017-01-05 07:34:12'),
(5, 'auth', '0003_alter_user_email_max_length', '2017-01-05 07:34:12'),
(6, 'auth', '0004_alter_user_username_opts', '2017-01-05 07:34:12'),
(7, 'auth', '0005_alter_user_last_login_null', '2017-01-05 07:34:12'),
(8, 'auth', '0006_require_contenttypes_0002', '2017-01-05 07:34:12'),
(9, 'blog', '0001_initial', '2017-01-05 07:34:13'),
(10, 'admin', '0001_initial', '2017-01-05 07:34:13'),
(11, 'sessions', '0001_initial', '2017-01-05 07:34:13'),
(12, 'blog', '0002_awards_car_education_experience_family_fengjing_kills_hobbies_kills_lange_kills_offic_kills_program_', '2017-01-06 03:17:31');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c5xrdxt7znz211x63te2rbklzh3yqvmy', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-19 07:44:07'),
('0mjtim9tku5edva8wthbiqoej7tgjl7f', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-21 08:51:25'),
('igkc9q4yza80uyhwg4uqxygw6sy62lxt', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-21 06:04:34'),
('fc9w5gjz8t8hklsp20borirqot7oz8gx', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-24 08:18:55'),
('pqwsqpczr7207qg7l7jeutkiigp8ku38', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-24 08:54:09'),
('kgs7ihejdutwbm7u65n1a4cs8vf7g5es', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-24 10:54:46'),
('rgsvzinwt2aalmhn0b2xbsnz3vmwzjyd', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-24 10:57:21'),
('6ffzozyga5tgez62ddqq5sweh3ohy5e2', 'ZmJiNjUzNTg4YzQ0NTdmN2JmOGI0Y2UyZTIwNzkwMDBhYjliNmE3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MjA2MDQxMTNiMGZmNGU3Njk1Y2UyM2JiNjA1ZjNmN2IyZTI0NzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-25 01:14:24');
