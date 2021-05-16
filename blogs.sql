-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-04-07 18:16:27
-- 服务器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `blogs`
--

create database `blogs` default character set utf8 collate utf8_general_ci;
use blogs;


-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE `admin_user` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(1024) DEFAULT NULL COMMENT '头像',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `role` varchar(32) NOT NULL COMMENT '角色',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_password_reset_date` date DEFAULT NULL COMMENT '最后修改密码时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`Id`, `userName`, `passWord`, `email`, `avatar`, `introduction`, `role`, `register_date`, `last_password_reset_date`) VALUES
(1, 'MyNetdisk', 'ADMIN_USER_PASSWORD', NULL, 'https://images.mynetdisk.vercel.app/react-blogs/avatar/avatar.jpg', '分享知识，记录生活。', 'ROLE_ADMIN', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `content` varchar(2550) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论内容',
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章id',
  `article_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '文章名称',
  `comment_id` bigint(20) DEFAULT NULL COMMENT '父层id',
  `from_id` bigint(20) DEFAULT NULL COMMENT '评论者id',
  `from_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论者昵称',
  `from_avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论者头像',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞人数',
  `create_date` datetime DEFAULT NULL COMMENT '评论时间',
  `is_del` tinyint(2) DEFAULT NULL COMMENT '是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='评论表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `content`, `article_id`, `article_title`, `comment_id`, `from_id`, `from_name`, `from_avatar`, `like_num`, `create_date`, `is_del`) VALUES
(1, '哈哈哈[大笑]', 1, 'Debain 8环境安装git', NULL, 1, 'zeal', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', 0, '2020-06-17 17:39:41', 0),
(2, '简直是太好笑了[可爱]', 1, 'Debain 8环境安装git', NULL, 1, 'zeal', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', 0, '2020-06-17 17:40:25', 0),
(3, '@zeal 这么巧，你也在测试评论吗？[可爱]', 1, 'Debain 8环境安装git', 2, 2, 'Tina', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', 0, '2020-06-17 23:48:15', 0),
(4, '@zeal 这么巧，你也在测试评论吗？[可爱]', 1, 'Debain 8环境安装git', 2, 2, 'Tina', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', 0, '2020-06-17 23:48:15', 0),
(5, '写得不错哦[牛皮]', 1, '解决Mac OS 升级后npm报错', NULL, 1274223115459620865, 'visitor', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/3.jpg', 0, '2020-06-20 18:51:46', 0);

-- --------------------------------------------------------

--
-- 表的结构 `label`
--

CREATE TABLE `label` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `hot` bigint(20) DEFAULT NULL COMMENT '热度',
  `out_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '外层颜色',
  `avatar_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像颜色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='分类目录表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `label`
--

INSERT INTO `label` (`id`, `name`, `icon`, `hot`, `out_color`, `avatar_color`) VALUES
(1, 'Github', 'mdi-docker', 1, 'gold', 'brown'),
(2, 'Docker', 'mdi-language-typescript', NULL, '#87d068', 'lime'),
(3, '沟通', 'mdi-gift-outline', NULL, '#108ee9', 'pink'),
(4, 'docker-compose', 'mdi-nodejs', NULL, 'red', 'red'),
(5, '房地产', NULL, NULL, '#f50', NULL),
(6, '励志', NULL, NULL, '#2db7f5', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `nav`
--

CREATE TABLE `nav` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `alias` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '别名',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='分类目录表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `nav`
--

INSERT INTO `nav` (`id`, `name`, `alias`, `icon`) VALUES
(1, '主页', 'index', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `phrase`
--

CREATE TABLE `phrase` (
  `id` bigint(20) NOT NULL,
  `hitokoto` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '正文',
  `type` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '类型',
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '来源',
  `creator` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `phrase`
--

INSERT INTO `phrase` (`id`, `hitokoto`, `type`, `source`, `creator`, `created_at`) VALUES
(1, '与众不同的生活方式很累人呢，因为找不到借口。', 'a', '幸运星', '跳舞的果果', '1970-01-17'),
(2, '面对就好，去经历就好。', 'a', '花伞菌', 'umbrella', '1970-01-18'),
(3, '将愿望倾入不愿忘却的回忆中……', 'a', 'ef-a tale of memories', 'lqsasa', '1970-01-18'),
(4, '美好的人眼里映出的世界也是美好的。', 'a', 'ARIA', 'misaki', '1970-01-18'),
(5, '看似美好的东西，往往藏着陷阱。', 'a', '只有神知道的世界', '紫月岚', '1970-01-18'),
(6, '天空是连着的，如果我们也能各自发光的话，无论距离有多远，都能看到彼此努力的身影。', 'a', '龙虎斗', 'Sai', '1970-01-17'),
(7, '恋ではなく、爱でもなく、もっとずっと 深く重い。', 'a', 'sweet   pool', '占星术杀人魔法', '1970-01-18'),
(8, '花开花落，再灿烂的星光也会消失。', 'a', '圣斗士星矢', '水幻之音', '1970-01-18'),
(9, '挡着在我们面前的是巨大庞然的人生，阻隔在我们中间的是广阔无际的时间，对于他们，我们无能为力……', 'a', '秒速五厘米', 'zjl4835751', '1970-01-18'),
(10, '我是一个经常笑的人，可我不是经常开心的人。', 'a', '未闻花名', 'Sai', '1970-01-18');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类目录id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `article_content` text CHARACTER SET utf8mb4 NOT NULL COMMENT '内容',
  `introduce` text DEFAULT NULL COMMENT '副标题',
  `addTime` int(20) DEFAULT NULL COMMENT '创建时间',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '阅读数量',
  `cover_image` varchar(1024) DEFAULT NULL COMMENT '封面图片',
  `author_id` bigint(20) DEFAULT NULL COMMENT '作者编号',
  `update_date` int(20) DEFAULT NULL COMMENT '更新时间',
  `label` varchar(64) DEFAULT NULL COMMENT '标签'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文章表' ROW_FORMAT=DYNAMIC;
--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`Id`, `type_id`, `title`, `article_content`, `introduce`, `addTime`, `view_count`, `cover_image`, `author_id`, `update_date`, `label`) VALUES
(1, 1, '自学编程 vs 参加培训', '作为一名高校计算机专业教师，经常有人向我询问：\r\n\r\n我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？\r\n\r\n我自己除了在入门阶段上过两个电脑培训班（全部都在上个世纪九十年代）之外，后来就再没参加过，我觉得根本就没这必要，自学足矣。\r\n\r\n并且我对现在以赚钱为最高目的的、鱼龙混杂、弄虚作假成风的 IT 就业培训行业印象并不好，所以我总趋向于不推荐学生参加培训。特别是计算机专业的学生，如果我听到计算机专业的学生在毕业之前还需要参加一个软件培训班才能找到工作，那我一定会深深地叹息……\r\n\r\n但是随着问类似问题的人越来越多，我也开始日益认真地思索“通过参加培训班来学习软件技术”这件事情，是不是真的不应该推荐？\r\n\r\n本文就是我对这个问题思索的一点结果。\r\n\r\n在这里，我不讨论 IT 培训机构存在的必要性，这都是一个产业了，它存在的必要性还用废话吗？\r\n\r\n我关注的是从学习者角度而言，“自学”与“参加培训”这两种方式的对比和选择策略。\r\n\r\n首先明确一点，我认为，对于计算机专业的学生，如果还需要参加培训班才能找到工作，那么我可以肯定这个学生的四年时光是被浪费了，不应该这样的。不要把责任全推到外部环境上，哪怕学校再差，周围人再怎么不爱学习，只要真的认真学了，断不至于惨到不参加培训班就找不到工作的境地。\r\n\r\n那么，对于非计算机专业的学生，应不应该参加培训呢？要知道，以就业为目的的 IT 培训，学费通常高达数万，可一点也不便宜啊。\r\n\r\n我的回答是：是不是需要参加培训，这是要看人的。\r\n\r\n有些人不必花这个钱，通过自学完全可以找到工作，而有些人，参加相应培训是合适的。\r\n\r\n## 哪些人可以走自学之路而不用去报培训班呢？\r\n\r\n我总结了一下，适合于自学的人应该具备四个前提条件：\r\n\r\n（1）有足够的时间，不急着马上找工作。比如还是在校的一、二年级学生，或者现在有工作有饭吃，只不过是想转行跳到 IT 行业。\r\n\r\n这个时间段的长短，我个人认为至少一年，用两年的时间自学比较合适。\r\n\r\n（2）是一个有着较强的自控能力的人，能坚持长期的自学。\r\n\r\n就我的观察，能坚持自学的人在人群中所占的比例并不高，我觉得可能不会超过四分之一。\r\n\r\n（3）具有高中以上学历，更具体地说，掌握了高中数学所介绍的内容，同时，具备基础的英文阅读能力。不具备高中数学基础，很多技术你学不会，而看不懂英文，会给你的学习带来巨大的障碍，甚至难以为继.\r\n\r\n（4）具备基本的物质条件和学习环境，比如你不至于穷到买不起电脑买不起书，上不了网……\r\n\r\n如果你满足以上条件，那么，你完全可以不上培训班，也能靠自学学出来。\r\n\r\n不满足以上条件的，则可以考虑参加培训班。\r\n\r\n下面我展开来说一说。\r\n\r\n## 学习时间长短带来的影响\r\n\r\n#### 上培训班的一大好处就是“省时间”。\r\n\r\n培训机构通常会依据当前技术的发展现状、业界的人才需求变化情况，动态地调整教学内容，构建出一个比较完整的就业培训体系，能够让你在短短数月之内，带你入门。\r\n\r\n作为一名写了二十多年代码，参加过大大小小的一堆项目，学过一打以上的各种编程语言或技术的老码农来说，我认为编程中充满了套路，只要能掌握这些套路，把这些套路用熟，应付中低层次的软件开发工作是不成问题的。\r\n\r\n而在传授开发套路这块，培训机构是比较高效的，只要你选的是靠谱的培训机构，人别太笨，基础别太差，培训老师手把手教你，经过几个月的强化训练，多数编程套路都能学会。\r\n\r\n那培训机构的问题在哪里呢？\r\n\r\n问题也出在 “省时间”上。\r\n\r\n为了节约时间，培训机构必须要尽可能高效地将大量的知识“灌入”学员的大脑，同时必须通过达到一定强度的编程训练，让学员掌握那些开发套路。\r\n\r\n认知科学的研究成果表明，知识的消化与吸收，职业技能的学习与精通，本质上是在大脑神经元之间建立连接，重塑大脑结构的过程，这个过程的时间可以缩短，但不能无限地缩短。另外，不同的人，拥有不同的背景和基础，在学习与掌握相同的知识与职业技能时，所花的时间是不一样的。\r\n\r\n但培训机构是不管这些的，它的目的是赚钱，先把学生招进来，然后向他们的大脑中以尽可能短的时间塞入尽可能多的东西，只要能糊弄住面试官，让学员能找到一份工作就行了。\r\n\r\n所以下面这种现象是必然会出现的：\r\n\r\n同一班的学员中，那些原先有一定基础的，学习与消化知识能力较强的，多半能够在培训期间构建出自己的知识与技能体系，他大脑中的知识己经构成了一个整体，知识组织得井井有条：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032001.05095371.jpg)\r\n\r\n另外一些学员，短时间内被灌入过多的知识，来不及组织和消化，他的大脑中知识就变成了这样：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032002.f7d5ebb3.jpg)  \r\n很多开发高手都认为：\r\n\r\n编程是一种技能，是一种使用特定工具去解决各种问题的能力。\r\n\r\n多数人都能成为一名合格的程序员，但能成为优秀程序员的人数并不多，这里面的关键就在于分析问题与解决各种问题的能力存在着巨大的差异。\r\n\r\n这种分析问题与解决各种问题能力，并非天生，而是需要后天努力训练得来。\r\n\r\n使用刻意练习的方法，能帮助你有效地在特定的时间段内熟练地掌握特定工具的用法，会用特定的技术去解决己知领域的己知问题，但面对变化了的，真实的复杂的实际问题时，单纯的套路是没法解决问题的。\r\n\r\n好的培训班对于培养那些并不需要太多创造力的初级程序员（即我们所说的“搬砖”程序员）是有效的，它们设计了一整套比较完整的、符合当下业界实际需求的培训体系统，并且有意无意地也应用了一些教育学的研究成果，它们其实是在传授一些开发模式和编程套路，它们的目的，就是在比较短的时间内，将这些开发模式与套路灌入学生大脑，让其能机械式地反应就行了。\r\n\r\n不少培训班的训练模式，有点类似于应付高考。\r\n\r\n回想一下，为应付高考，在高中是怎么干的？\r\n\r\n分析高考试题类型，为每种类型总结出相应的解题套路和技巧，然后反复训练，以便能达到熟练的程度……\r\n\r\n培训班的方法其实与之一致，只不过其学习成果的验收方法不是全国统一的高考，而是由各用人单位组织的“单独考试”罢了，培训班的成效，以其学员能通过多牛企业的面试，拿到多高工资的 Offer 为衡量标准。\r\n\r\n所以，培训班的大问题，就是它只教授工具与技术的具体使用方法，介绍一些典型的套路，但却无法或很难提升学员的分析问题和解决问题的能力，因为这种能力的提升，是无法短期速成的。\r\n\r\n对于学员本身的长远成长，以盈利为目的的 IT 就业培训班其实漠不关心，这是由资本的本质所决定的。\r\n\r\n对此，上培训班的学员自己必须心中有数。\r\n\r\n## 学习者个人因素带来的影响\r\n\r\n前面说过，自控能力强的人在人群中所占的比例不高，很多人都是克服不了人性的弱点——好逸恶劳，导致学习活动不能坚持，三天打鱼两天晒网，……，对于这些人，需要外部环境来“约束”和“强制”他们学习，只要经济条件许可，参加培训班是一种可行的路。\r\n\r\n道理很简单：\r\n\r\n培训班营造了一个集体学习的大环境，同时，学员花了五位数的钱，难道不肉痛？\r\n\r\n那还不好好学！不然，那钱不白花了吗？\r\n\r\n有了这个环境，有了这种怕损失的心理，学习自然不会偷懒，只要时间与精力投入了，学习总会有效果的。\r\n\r\n对于那些意志坚定有毅力的人来说，其学习动力来自于内，根本就不需要有这样的一个外部强制力量，就能主动地认真地学习。\r\n\r\n这种人，走自学之路是推荐的。\r\n\r\n但同时要知道，决定走自学之路的人，面临的一个主要问题是：很容易走错路，走弯路，掉坑里……\r\n\r\n所幸的是这个问题在互联网时代被大大的缓解。最近几年兴起“知识变现”，其特征就是可以用钱来买知识，买时间。\r\n\r\n你只要愿意为学习投入，花必要的费用，就能得到被其他人整理好的精炼过的知识，就能了解他人经过多年总结而得到的经验，从而节省大量的时间，提高了学习效率。\r\n\r\n比如我个人就在罗胖的得到 App 上花费了上千元订阅吴军的《硅谷来信》、王煜全的《前哨》、万维钢的《精英日课》等专栏，从这些每天推送的音频中，我获得了很多有价值的信息，一点也不亏。\r\n\r\n又比如知乎的 Live 也是汲取、传播与分享知识的双赢平台，我第一次办的 Live——《如何自学计算机专业课程》，第二次办的 Live——《如何自学编程》，都是我总结二十年开发和自学经验，十多年教学经验而得到的，我相信听众只需要认真地听听这些 Live，就能帮助听众少走很多弯路，有效地提升自学效率。\r\n\r\n其实各种学习资源，互联网上还有好多，比如国内外名校的 MOOC，都是可以免费去学的，还有诸如知乎、StackOverflow、简书等网站，上面都沉淀了大量的他人的知识与经验，你还可以通过互联网直接向特定领域的牛人请教，比如知乎、微博都开通了付费问答，花些钱，就能得到那些在特定领域经验丰富的人的建议，向这些“老师”请教的机会，以前是不存在的，……，\r\n\r\n有这么丰富的资源，为什么不去主动利用这些资源来提升自学的效率呢？\r\n\r\n所以，新的时代，我们学习观点要改变：\r\n\r\n为知识花钱，为学习花钱，为效率花钱，这是花钱的最好方式。\r\n\r\n花钱其实是省钱，并且最终能帮你赚钱。\r\n\r\n这看上去很俗，但其实就是这个道理。\r\n\r\n只要你能善用互联网上的各种资源，你会发现，通过自学入门并不会比通过培训班入门慢多少，而你在这个过程中所培养出来的自学技能，将让你受益终身！\r\n\r\n## 从更高更大的视角看自学与培训\r\n\r\n不管自学也好，参加培训班也好，最终都是为了培养软件开发的职业技能。\r\n\r\n现在让我们回归问题的本质——软件开发。\r\n\r\n软件开发实际上分为两个大的阶段：\r\n\r\n1 问题定义、分析与设计阶段，这是最需要智商、创造力和经验的阶段，真正的开发高手，就是在这一阶段体现出远超普通人的水平，而在这一阶段所需要的能力，对不起，培训班教不出来，也无法速成，只能靠人自己的努力，慢慢地培养和增强。\r\n\r\n2 使用各种技术与工具，将第一阶段的成果实现出来。这一块就比较机械了，多数人经过训练都能掌握，培训班在这一块的效率是很高效的，它们多半能在较短的时间内，教会学员特定编程语言（比如 Python）特定工具（比如 Git）与特定技术的使用（比如 Spring MVC），并且传授给他们一些开发的“套路”（比如分层架构与设计模式），从而将学员成功地培养成为一个能够“搬砖”的软件工人，即初级程序员。\r\n\r\n由于目前软件行业人才需求量大，因此，这些只能搬砖的初级程序员是很容易找到一份工作的，这也就是为什么培训班多半会收学生五位数的学费，而学生也愿意支付的根本原因。\r\n\r\n所以，上培训班，实际上是花钱让别人引你入门，成为一名初级程序员多半问题不大，经过三五年的工作训练，初级程序员多数能成为中级程序员，但到了这个级别，不少人的水平就开始停滞在这个水平上，徘徊若干年，直到遇到“职业危机”，主动或被动地下岗、转岗，成为“程序员是吃青春饭”这一观点的论据。\r\n\r\n要想爬出这个“技术青春饭”的陷阱，是否能从中级程序员进入高级甚至一流程序员的这一层次是关键。\r\n\r\n如果你选择通过培训入门，那么一定要牢记，培训班只能帮助你走出职业生涯的第一步，并且这一步它还要了你一大笔钱，这是你必须付出的代价。\r\n\r\n从初级到中级程序员，你所在公司可能还会通过一些给新人配备导师啊，入职培训、在岗培训等方式给与支持与帮助，再往上走，多半就只能靠自己自学了。如果你在的公司不提供这些帮助员工成长的机制，那么，甚至从初级到中级的成长之路，也得靠你自己。\r\n\r\n由此可以看到，自学其实是个人成长的最主要方式和手段。\r\n\r\n如果你具备我在前面介绍过的四个前提条件，那么在入门初期（其成果是成长为一名初级程序员），如果你不愿意花上培训班这笔钱，是完全可以通过自学达到相同的目的，当然，时间要长两到三倍。\r\n\r\n在培训班学习效率是比较高的，前面也说过，这里再重复一下：一方面是培训机构也都付出了相应的努力，让自己的培训课程体系尽可能地高效，二是有一个集体的强制学习的环境，这对于那些自控力不强的人来说，外界给与一定的强制性是必须的。三是学员花了较多的钱，如果家境不太好的，这些钱可能还是借来的，这也是一种强大的敦促努力学习的心理因素。\r\n\r\n三大因素作用下，培训班的作用立竿见影。\r\n\r\n所以必须承认培训班具有这些好处。\r\n\r\n但也必须明确，培训班的好处大都是短期的，用不了多久就会消散。\r\n\r\n自学就不一样了，虽然在初期，要入门成为一名初级程序员，可能花比培训班长两到三倍的时间，但正是这种较慢的自学过程，有效地锻炼了你的自学能力，而这种能力，对于你成长为中级和高级程序员来说，是极为重要的。\r\n\r\n你不妨看看周围，没有一个技术牛人不拥有很强的学习能力，各行各业都是如此。\r\n\r\n所以，对于想节约时间的，可以报个培训班入门，找到一份初级程序员的工作多半问题不大。\r\n\r\n但从长远来看，以成长为高级程序员为目标，初期通过自学入门，和通过培训班入门，后者并不会比前者更节省时间。\r\n\r\n好了，写了这么多，我相信我己经把问题讲清楚了，最后给一个流程图，帮助你在“自学”还是“培训”中作出选择：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032003.0febda33.jpg)\r\n\r\n最后，祝大家学习进步！\r\n\r\n> 金旭亮<br/>\r\n> 北京理工大学 计算机学院讲师<br/>\r\n> 原文链接：https://zhuanlan.zhihu.com/p/27696141', '我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？', 1584671428, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/1.jpg', 1, 1584671428, '培训'),
(2, 2, '关键对话', '## 从“心”开始\n\n面对棘手的问题时，关键对话高手是这样关注任务目标的。\n\n### 从我做起\n\n- 记住，你唯一能直接控制的人只有你自己。\n\n### 关注你的真正目的\n\n- 发现自己即将陷入沉默或暴力时，停止对话，冷静思考你的动机。\n- 问自己这样一个问题：“我现在的行为显示我的动机是什么？”\n- 明确你的真正目的，问自己：“我想为自己、他人和人际关系做些什么？”\n- 最后，问自己：“如果这是我的真正目的，我该怎么做？”\n\n### 拒绝“傻瓜式选择”\n\n- 在分析行为目的时，留意在哪些情况下你会说服自己做出“傻瓜式选择”。\n- 留意你是否总是告诉自己必须在说实话和顾面子、成与败之间两极化选择。\n- 利用对比说明的方式消除“傻瓜式选择”的影响。\n- 说出你希望的目的之后，明确你不希望实现的目的，然后开动脑筋寻找可以实现对话的健康方式。\n\n## 注意观察\n\n在关键对话的过程中，人们很难准确的意识到会发生什么情况，很难了解出现这些情况的原因。当对话变得充满压力时，我们的做法往往会适得其反，下意识地表现出长期形成的不正确的压力应对方式。\n\n想打破这种错误行为的怪圈，你应当学会注意观察以下内容。\n\n- 观察对话内容和对话气氛。\n- 观察对话在哪些情况下会变得难以处理。\n- 观察安全问题。\n- 观察对方是否进入沉默或暴力应对状态。\n- 观察你的错误应对方式会在什么情况下出现。\n\n## 保证安全\n\n### 暂停对话\n\n当对方出现沉默或暴力应对的情况时，你应当暂停对话，营造安全气氛。安全气氛一旦恢复，你就可以继续进行对话了。\n\n### 判断哪种安全因素出现危机\n\n- 共同目的——对方是否觉得你在对话过程中关注他们的目的？是否认同你的对话动机？\n- 互相尊重——在对话过程中，对方是否感到你尊重他们？\n\n### 在必要时向对方道歉\n\n- 当你的破坏尊重感时，你应当向对方道歉。\n\n### 利用对比法消除对方的误解\n\n- 当对方误解你的目的或意图时，你应当利用对比法消除误会。先说明你不希望如何，然后说明你想怎样。\n\n### 提出共同目的\n\n当和对方的目的不一致时，你应当利用四部分营造共同目的。\n\n- 积极寻找共同目的\n- 识别策略背后的目的\n- 开发共同目的\n- 和对方共同构思新策略\n\n## 控制想法\n\n如果强烈情绪让你在对话中陷入沉默或暴力，试试下面的方法。\n\n### 行为方式回顾\n\n**关注你的行为表现**。 如果发现自己正远离对话，问问自己在做什么。\n\n- 我是否陷入沉默或暴力应对方式？\n\n**确定行为背后的感受**。学会准确识别行为背后的情绪\n\n- 导致这种行为的情绪感受是什么？\n\n**分析感受背后的想法**。学会质疑你的结论，寻找感受背后的可能解释。\n\n- 造成这种情绪出现的想法是什么？\n\n**寻找想法背后的事实**。回到事实本身，放弃绝对表达，区别客观事实和主观想法\n\n- 形成这种想法的事实依据是什么？\n\n**注意似是而非的“小聪明”式想法**。尤其是受害者想法、大反派想法和无助者想法。\n\n### 改变主观臆断\n\n你应当询问自己以下问题\n\n- 我是否故意忽略自己在这个问题中的责任？\n- 一个理智而正常的人为什么会这样做？\n- 我的真实目的是什么？\n- 要想实现这些目的，现在我要怎么做？\n\n## 陈述观点\n\n和对方讨论棘手问题时，或是感觉自己可能会强迫对方接受自己的观点时，你应当采取综合陈述法。\n\n- **分享**事实经过。从最少争议、最有说服力的事实谈起。\n- **说出**你的想法。说明你根据这些事实得出的结论。\n- **征询**对方观点。鼓励对方说出他们看到的事实和产生的想法。\n- 做出**试探**表述。承认这些结论只是你的想法，不要假装其是事实。\n- **鼓励**做出尝试。创建安全感，鼓励对方说出不同甚至对立的观点。\n\n## 了解动机\n\n想要鼓励观点的自由交流，帮助对方拜托沉默或暴力的应对方式，你应当了解他们的行为动机，在对话中变现出巨大的好奇心和耐心，只有这样才能恢复安全感。\n然后，你可以使用四种有效的倾听技巧，从对方的行为中寻找潜在的动机。\n\n- **询问观点**。表明你很有兴趣了解对方的看法。\n- **确认感受**。通过表示高度理解对方的感受增强安全感。\n- **重新描述**。当对方说出自己的看法时，你应当重述他们的表达，表明自己不但了解对方的观点，而且鼓励他们分享内心的想法\n- **主动引导**。如果对方还是退缩迟疑，你应当“先发制人”，对他们的想法或感受做出最符合情况的猜测。\n\n在和对方分享观点时，应当注意一下几点.\n\n- **赞同**。在分享观点时对他人表示赞同。\n- **补充**。如果对方的观点有遗漏之处，赞同你们共享的部分，然后做出补充。\n- **比较**。当你们的观点相距甚远时，不要简单地认为对方的观点是错误的。而应当把你们的看法进行比较。\n\n## 开始行动\n\n要想把成功的关键对话转变成优秀的决策和一致的行动，你应当努力避免错误期望和不作为两种陷阱。\n\n### 决定如何决策\n\n- **命令式**。无须参与的决策方式。\n- **顾问式**。广泛征集意见，由少数人决定的决策方式。\n- **投票式**。以支持率为基础的决策方式。\n- **命令式**。人人都必须对最终结果表示同意的决策方式。\n\n### 明确执行细节\n\n在决策执行环节，你必须明确说明**行动人、行动目标**和**截止时间**等要素。**明确行为目标**，设定**检查时间**，记录任务细节并按时进行检查。最后，你应当督促人们对其做出的承诺负责。', '关键对话有三个特征：对话双方的观点有很大的差距，对话存在很高的风险，对话双方的情绪非常激烈。', 1600043400, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/2.jpg', 1, 1600043400, '沟通'),
(3, 1, '采用 Github Action 自动化部署博客', '关于自动化部署，起初我接触的是 Travis CI，配置很简单，使用起来非常简单\r\n\r\n后来 Github Action 完全开放，我就完全转 Github Action 这个自定义更加方便的 CI 系统了，起初我的自动化部署脚本也是自己写的 Shell 脚本，因为那时候相关的部署 Action 尚不完善，不支持直接 Push 到根地址，不过前段时间支持了之后我就放弃自己写的脚本咯\r\n\r\n那么如何使用 Github Action 呢？只需要在项目根目录新建 `.github/workflows/` 文件夹，再在其中新建相应的 YAML 配置文件即可，比如 `hello-github-action.yml`，名字随意啦，只是为了区分\r\n\r\n文件内写入相应的内容\r\n\r\n```yaml\r\n# action 名字\r\nname: Hello Github Action\r\n\r\non:\r\n  # 触发条件，比如 push pull_request 等\r\n  push:\r\n    branches:\r\n      - master\r\n\r\njobs:\r\n  build-and-deploy:\r\n    # 运行环境\r\n    runs-on: ubuntu-latest\r\n    steps:\r\n      # 各步的任务\r\n      - name: Hello Github Action\r\n        run: echo \'Hello Github Action\'\r\n```\r\n\r\n这样我们就完成了一个简单的 Github Action，它会在我们每次 push 到 master 分支时触发，之后就会打印 `Hello Github Action`，虽然看不见……\r\n\r\n## 自动化部署到 Github Pages\r\n\r\n我们对上面的配置稍作修改，目标就是在源仓库 Push 时触发，此时将博客源码构建成静态文件，并将它们 Push 到 Github Pages 仓库即可\r\n\r\n```yaml\r\nname: Vuepress Deploy\r\n\r\non:\r\n  push:\r\n    branches:\r\n      - master\r\n\r\njobs:\r\n  build-and-deploy:\r\n    runs-on: ubuntu-latest\r\n    steps:\r\n      # 使用某个 Repo\r\n      - name: Checkout ????️\r\n        uses: actions/checkout@v2\r\n\r\n      # 构建静态文件\r\n      - name: Install and Build ????\r\n        run: |\r\n          npm install yarn\r\n          yarn\r\n          yarn docs:build\r\n\r\n      # 部署到 Github Pages\r\n      - name: Deploy ????\r\n        uses: peaceiris/actions-gh-pages@v3\r\n        with:\r\n          personal_token: ${{ secrets.PERSONAL_TOKEN }}\r\n          publish_dir: docs/.vuepress/dist\r\n          external_repository: SigureMo/SigureMo.github.io\r\n          publish_branch: master\r\n          cname: sigure.xyz\r\n          user_name: \"github-actions[bot]\"\r\n          user_email: \"github-actions[bot]@users.noreply.github.com\"\r\n```\r\n\r\n这里第一步是使用你的源代码 repo，其中 uses 是指使用了某个现成的 Action，比如这个 `actions/checkout` 就是 [`github.com/actions/checkout`](https://github.com/actions/checkout) 的 `v2` 版本，如果需要 submodule 或者 lfs 可以通过 `with` 选项来修改参数\r\n\r\n第二步是将博客源码构建成静态文件，不同的框架的构建方法自然不同，我这里是以 Vuepress 作为示例\r\n\r\n第三步就是将构建好的静态文件 Push 到目标的 Github Pages 对应的 Repo 了，这里使用的是 [`peaceiris/actions-gh-pages`](https://github.com/peaceiris/actions-gh-pages)，如果你只需要部署到当前 Repo 的 `gh-pages` 分支上的话，你只需要配置以下内容即可\r\n\r\n```yaml\r\n- name: Deploy ????\r\n  uses: peaceiris/actions-gh-pages@v3\r\n  with:\r\n    github_token: ${{ secrets.GITHUB_TOKEN }}\r\n    publish_dir: docs/.vuepress/dist\r\n```\r\n\r\n这里的 `secrets.GITHUB_TOKEN` 不需要配置，Github 会自动提供\r\n\r\n但是如果你和我一样想部署到 `<username>.github.io` 的话，就需要稍微改动一下啦，该 Action 提供了非常丰富的参数以供配置\r\n\r\n由于目标 Repo 和目标分支都变了，就需要分别设置下 `external_repository` 和 `publish_branch` 这两个参数咯\r\n\r\n另外，由于 Push 到外部 Repo 的话 `GITHUB_TOKEN` 的权限不足，因此需要提供其它的验证方式，比如 `personal_token` 和 `deploy_key`，这里提一下 `personal_token` 的生成与配置方式，该方法相比于后者也更方便一些\r\n\r\n依次进入`个人 Settings -> Developer settings -> Personal access tokens` 点击 `Generate new token`，随便填写个名字，然后下面勾选 `repo`（权限） 后确认 `Generate token`\r\n\r\n由于生成的 token 只能看一次，请确定复制后再关闭页面\r\n\r\n之后依次进入 `源 repo -> Settings -> Secrets`，点击 `New secret`，Name 字段填写 `PERSONAL_TOKEN`，Value 字段粘贴刚刚生成的 token 即可\r\n\r\n这样，该 action 在 `secrets.PERSONAL_TOKEN` 处就可以获得刚刚生成的拥有读写 repo 权限的 token，然后传入该 action 的 ACCESS_TOKEN 参数，进而完成整个部署过程\r\n\r\n这样就完成了权限的配置啦，该 Action 还提供了很多比较实用的参数，比如 `cname`，更多详情去看它的文档吧\r\n\r\n完成这些，就可以重新 push 一下源代码 repo 试一下啦，还可以在源 repo 的 Actions 中可以看到相关进度\r\n\r\n## 同步到 Coding Pages\r\n\r\n虽然 Github Pages 非常方便，但是国内访问实在是太慢，加载太久的话就木有人愿意继续访问的说，虽然想尝试下 CDN，但貌似 CDN 有着更新不及时的缺点，强迫症表示无法接受\r\n\r\nCoding 是国内的软件开发平台，国内访问速度还不错，因此利用 Coding 作为国内的访问镜像也许是个不错的选择，只需要将国内域名解析到 Coding Pages，国外解析到 Github Pages 就可以啦\r\n\r\n我们首先在 Coding 新建一个项目，选择项目模板时记得选择 `DevOps 项目`\r\n\r\n进入项目，在`持续部署 -> 静态网站` 中开启该功能，记得勾选自动部署功能，之后就可以获得访问地址啦，而且还可以配置自己的域名\r\n\r\n为了能够自动将 Github Pages 的静态文件同步过来，我们需要配置一个 Action\r\n\r\n```yaml\r\n- name: Sync to Coding ????\r\n  uses: wearerequired/git-mirror-action@v1\r\n  env:\r\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\r\n  with:\r\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\r\n    destination-repo: \"git@e.coding.net:sigure/notev/notev.git\"\r\n```\r\n\r\n`source-repo` 和 `destination-repo` 自然分别对应 Github Pages Repo 和 Coding Pages Repo 的 ssh 地址，后者在 `代码仓库 -> 设置 -> 仓库设置` 下的 `仓库设置` 即可获得\r\n\r\n当然，我们需要拥有 Github Pages Repo 的读权限和 Coding Pages Repo 的写权限，该 Action 才能进行，这里需要配置下 ssh 公钥与私钥，公钥配置在 Github Pages Repo 和 Coding Pages Repo，而负责执行 Action 的源代码 Repo 则存储私钥\r\n\r\n为了安全起见，不要使用现有的 ssh 密钥，创建一个临时的 ssh 密钥对即可\r\n\r\n私钥直接保存在 Github 源代码 Repo 的 `Settings -> secrets` 中，而公钥则要保存在两个目标 repo 中\r\n\r\n对于 Github，直接在该目标 repo 中的 `Settings -> Deploy keys` 中添加该公钥即可\r\n\r\n对于 Coding，也是在 `代码仓库 -> 设置 -> 仓库设置` 的 `部署公钥` 配置即可，记得勾选写入权限\r\n\r\n此时再次触发 Action 就可以同步到 Coding Pages 啦\r\n\r\n## 同步到 Gitee Pages\r\n\r\n那么，为什么之前没有选择 Gitee 呢？因为 Gitee 的自动部署以及自定义域名都是 Gitee Pages Pro 的服务，前者可以通过 Github Action 来完成，但后者就没有办法了，如果你没有绑定域名的需求的话，Gitee 会是更好的选择\r\n\r\n我们在 Gitee 创建一个 Github 目标 repo 对应的 repo，在创建时的 `Import` 选项中填写 Github 目标 repo 的地址\r\n\r\n之后在新的 Gitee repo 下中的 `Services -> Gitee Pages` 开启该服务，emmm，此时就可以注意到该服务的更新需要手动更新，并不能像 Github Pages 那样自动更新\r\n\r\n为了完成 Github 目标 repo 到 Gitee 目标 repo 的同步，以及 Gitee Pages 的自动更新，我们还需要配置新的 Action\r\n\r\n```yaml\r\n# 同步到 Gitee repo\r\n- name: Sync to Gitee ????\r\n  uses: wearerequired/git-mirror-action@v1\r\n  env:\r\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\r\n  with:\r\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\r\n    destination-repo: \"git@gitee.com:siguremo/SigureMo.git\"\r\n\r\n# 更新 Gitee Pages\r\n- name: Build Gitee Pages ????\r\n  uses: yanglbme/gitee-pages-action@master\r\n  with:\r\n    gitee-username: SigureMo\r\n    gitee-password: ${{ secrets.GITEE_PASSWORD }}\r\n    gitee-repo: SigureMo/SigureMo\r\n```\r\n\r\n首先我们需要将 Github 的静态文件存储 repo 的代码同步到 Gitee，它需要配置下 `SSH_PRIVATE_KEY`，也就是能够同时访问两个 repo 的私钥，这个和前面 Coding 的配置方法都一样啦，私钥放 Github 源 Repo，公钥放两个目标 Repo，值得注意的是，Gitee 的公钥不能直接在该 Repo 下的 `Settings -> Deploy keys` 进行配置，因为在这里配置的公钥并不能拥有对该 repo 的写权限，所以我们需要在个人 `Settings -> SSH keys` 中添加该公钥\r\n\r\n第二步就是更新 Gitee Pages 了，这一步很简单，将 Gitee 的密码配置到 `Settings -> secrets` 即可\r\n\r\n现在再重新 Push，你会发现 Gitee Pages 也会立刻重新构建，不过 Gitee 可能会弹出在非常用地登陆的消息，因为更新过程使用你的密码进行了登陆\r\n\r\n报错：不能同时同步到 coding & gitee 中\r\n\r\n```\r\nGithub Actions: [remote rejected] master -> master (shallow update not allowed), error: failed to push some refs\r\n```\r\n\r\n解决方案：\r\n\r\n```yaml\r\n- uses: actions/checkout@v2\r\n  with:\r\n    fetch-depth: 0\r\n```\r\n\r\n# References\r\n\r\n1. [actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)\r\n2. [gitee-pages-action](https://github.com/yanglbme/gitee-pages-action)\r\n3. [利用 Github 和 Coding 为 Hexo 博客开启 Https](https://zhuanlan.zhihu.com/p/111786790)\r\n\r\n> 版权声明：本文为 vuepress 博主「NoteV」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。<br/>\r\n> 原文链接：https://sigure.xyz/posts/2020/06/22/deploy-blog-using-github-action.html', '博客的部署往往只需要一行命令，但却需要花费我几分钟在本地的构建时间，完成博客内容后本应该放松放松心情，这几分钟的等待显得尤为惹人生厌。\n\n那么如何解决这个问题呐？当然是自动化部署啦，这样我们每次只需要将写完的博客 Push 到 Github 上，就可以触发相应的 CI 以完成博客的自动部署咯，所以这里就介绍如何使用 Github Action 来自动化部署博客', 1600741828, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/3.jpg', 1, 1600741828, 'Github'),
(4, 2, '被爆款折叠的女孩(笔记)', '2010 年，孙玲从工厂辞职，报了一个软件培训班。离开工厂那天，孙玲用日记记录下自己的心情，「说到彻底离开这里，还真是有点不舍。但这地方太狭窄了，不能够容纳我的心。」\r\n\r\n前《华尔街日报》驻京记者、作家张彤禾在自己的《打工女孩》一书中，曾描绘过珠三角地区的培训班盛况，一些主打「提升个人综合素质」的速效班，更容易收割迫切需要改变自身短板的打工者的心。而英语和电脑课虽然最受欢迎，但坚持下来的人很少，因为它们的收效很慢。\r\n\r\n但孙玲还是坚持了下来，她当时的积蓄只够学一期课程，于是白天学习，晚上打零工，似乎是与生俱来的韧性陪伴她度过那段跟命运作战的日子。于是靠着边打工边赚钱，和培训机构的分期付款政策给予的喘息机会，孙玲完成了为期一年的编程学习。\r\n\r\n2011 年下半年，孙玲通过了一家公司的面试，正式进入 IT 行业。工资 3000，转正后 4000，朝九晚六，有双休。\r\n\r\n2012 年 4 月，孙玲报名了一家英语培训机构。学英语的动力来自于一则广告，广告中说，掌握一门语言就是掌握另一种思维方式。学费 26500 块，总觉得自己天资不够的孙玲把前一年攒的钱全部投入其中，不够的部分分期贷款。\r\n\r\n2012 年底，觉得凭借高中学历未来找工作困难的孙玲又报名了西安交通大学的远程教育，学费 10000 多，同样可以分期。\r\n\r\n2014 年，孙玲通过了英语四级考试。拿到大专文凭后，她又接着报了深圳大学专升本的自考，周末去深圳大学上课，十几个科目，一年半的时间后，她得到了深大的自考毕业证书和学士学位。\r\n\r\n学习英语的经历让她认识了世界各地的朋友，于是萌生了想去外面世界看一看的想法，2016 年圣诞节，孙玲在一次聚会活动中的卡片上认真写下了自己的愿望——我要去其他国家至少生活一年，无论是学习还是工作。\r\n\r\n接下来是新一轮的知识储备战，刷题，考雅思，申请学校，2017 年 9 月 8 日，孙玲收到了从美国寄过来的通知书，次月，她漂洋过海，开始了自己的留学生活。\r\n\r\n2018 年 10 月，孙玲获得了 EPAM Systems 公司的 offer，这是一家在纽交所上市的信息技术服务公司，孙玲负责服务谷歌，工作地点在谷歌的办公楼，年薪税前 12 万美金（折合人民币约为 82 万）。\r\n![选项卡](https://mynetdisk.top/assets/img/20200922.4dcd6a0b.png)\r\n\r\n> 人物<br/>\r\n> 微信公众号<br/>\r\n> 原文链接：https://mp.weixin.qq.com/s?__biz=MjEwMzA5NTcyMQ==&mid=2653120714&idx=1&sn=ed362bd1b3295cf677e9fbdf66f9ef91&chksm=4eb28e0c79c5071a192cc778f42d87e9ce70dfe298aabbeb5142c9a306527de42e9474c7620c&mpshare=1&scene=1&srcid=092169SZep7DEdi12bVU3zye&sharer_sharetime=1600742413154&sharer_shareid=3d286a92128998d0a0082732c47ba4f5&key=b82f1b249fc3af4d8aa109e7ffbb81fe69e18f1eb9e313fe8a71f304bffc24d7122aece61aee0a98bdfafa15fd84eabb810fbb65ef51b62bf4e50cd43823ebc24111b8c731c1ed9deea67751606cf1e127616cebe255ab5514ac99109040bfe5ff76a2fdda335a26d217dd7356a69e5db2dd294c8a9b1a406540ada452eed702&ascene=1&uin=MTAyNDUwNjI0MA%3D%3D&devicetype=Windows+10+x64&version=62090538&lang=zh_CN&exportkey=Aa8mQjUTSavY2zg9464UAhc%3D&pass_ticket=sRFXlk5LQdPeGHjPr7wpy9%2BeAB%2ByYMDdSM8nFqBsoXgdnAesM9kDw1uij8i65PDN&wx_header=0', '「不想那么无聊」是孙玲在做人生每个关键决定的时刻优先考虑的因素，对十几岁的她来说，种地和理发都有一点无聊，所以要改变。到了深圳，每天在流水线上测试电池正负极也很无聊，所以也要改变。当上程序员，每天坐办公室朝九晚五，时间久了也难免无聊，所以依然要改变。人们对孙玲故事误解最深的是，觉得最终拥有一份高薪工作就是这个女孩最好的结局，但孙玲自己从来没有这么想过。', 1604374648, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/6.jpg', 1, 1604374648, '励志'),
(5, 2, '像TED一样演讲2:沟通升级（笔记）', '在一份涵盖 700 多份职业的详细分析报告中，牛津大学的研究人员总结出，因为自动化，我们今天 47%的工作将会消失。再强调一遍：人类近一半的工作岗位将在未来 10 年逐步消失。这是一个延伸的过程，开始于蓝领工人，即用双手工作的人，他们的工作现在正被机器取代。在不久的将来，自动化可能会取代全球 1.4 亿名知识型员工，“更智能”的认知系统可以更快更有效地完成他们的工作。研究表明，不同国家和地区，从运输到科技，从医疗到零售，从法律到金融，几乎所有领域都面临着相同的风险。\r\n\r\n数据专家安东尼·戈德布卢姆说：“如果你能够传达你的想法，引起别人的注意，那么你不会很快被替代。”亿万富翁沃伦·巴菲特说：“不同寻常的人会脱颖而出，并不是因为他们有 200 的智商或是别的。如果公开演讲时能收放自如，你就会脱颖而出，结果会远远超出你的预期。这是一项资产，将会持续五六十年。如果你不喜欢公开演讲，它就会是一种负债。”\r\n\r\n如何学会演讲，成为高效的沟通者，表达你的思想？请看这本书《像 TED 一样演讲 2》。\r\n\r\n在本书你将学习可操作的具体方法，学习如何锻炼人类独有的这项技能。打造顶级沟通者的秘诀针对的是行动者、实干家，他们是探险家和冒险者。这是为那些想要推动自己事业和世界前进的人而写的。\r\n\r\n在 21 世纪的知识经济中，没有机器、软件或机器人可以复制你的思想。但是，如果你不能说服别人认同你的想法，那么你的想法就无关紧要了。\r\n\r\n本书是为那些相信自己的想法很重要的人而写的，是为那些想要在思想时代获得竞争优势的人而写的，没有哪台计算机会取代你，也没有哪个竞争对手会超过你。掌握说服的艺术，你将无可替代。你会触动别人的内心，你会不断成长并大胆引领他人走向未来，你会将潜力发挥到极致并成就伟大的事业。\r\n\r\n## 情感原则\r\n\r\n故事是我们说服别人时最好的语言工具，这一点菲尔·奈特十分清楚。奈特在伟大领导者的工具箱中添加了一个秘密武器：情感。根据亚里士多德的说法，情感通过吸引观众的兴趣达到说服的效果，而故事是我们吸引观众的最直接的方式。耐克员工通过记住过去的故事，从而受到鼓舞去创造未来。\r\n\r\n情感是大脑的古老机制，会帮助我们记住重要的事，忘记其他的事，因为毕竟不是每件事都同样重要。如果你每件事都记得清清楚楚，大脑会很难运转。有些记忆会被存储起来，而有些则不会。\r\n\r\n来点儿压力？我们去哪儿找呢？这个方法就是讲故事。故事中嵌入紧张的情节，嵌入冲突和障碍，就相当于施加了一点儿压力，让听众保持全神贯注。故事是不可抗拒的，因为我们天生就通过故事思考，通过故事理解周遭世界，通过故事分享创意。掌握讲故事这门古老的艺术，你将在现代世界脱颖而出。\r\n\r\n如果你想让别人把打开他们心门的钥匙交给你，就给他们讲个故事。如果你想让他们把新车的钥匙交给你，也可以讲个故事。故事是我们将思想传递给别人的最佳工具。故事会引发大脑释放神经化学物质，迫使我们注意说话者，同情他们，理解他们，并对他们的想法感到兴奋。人类渴望故事，需要听故事。故事是不可抗拒的，讲故事的人魅力无穷。\r\n\r\n### 受众行动的三类故事\r\n\r\n有三类故事你可以并且应该加入希望说服别人采取行动的对话或演讲中。它们是：\r\n\r\n- 有关个人经历的故事\r\n- 有关顾客或客户的真实故事\r\n- 有关品牌或公司历史上标志性事件的故事\r\n\r\n### 有关个人经历的故事\r\n\r\n不管是自己经历挫折后取得成功的故事，还是由悲转喜的故事，都很有力量。把奋斗和成功当作修辞手段，我们能够彼此建立更深入、更有意义的关系。\r\n\r\n### 有关顾客或客户的真实故事\r\n\r\n作为四大会计师事务所中发展最快的公司，毕马威发现讲故事可以赋予员工目标感。\r\n\r\n### 有关品牌或公司历史上标志性事件的故事\r\n\r\n你的标志性故事是什么？每个人都有自己的标志性故事，每家企业、每个创业公司或品牌也都有自己的标志性故事。\r\n\r\n### 影响标志性故事的七个要素\r\n\r\n“标志性故事是一种随着时间的推移可以不断地被利用的重要资产，它可以在公司内外提供灵感和方向。”加州大学伯克利分校哈斯商学院营销学教授戴维·阿克和斯坦福大学工商管理研究生院的营销学教授詹妮弗·阿克写道。“标志性故事是获得关注、与人沟通、说服别人、改变行为和促成讨论的有力方式。标志性故事几乎总是比简简单单传达事实或特征更有效率和影响力。”\r\n\r\n阿克表示，一个有影响力的标志性故事包括以下七个要素：\r\n\r\n- 它得是个故事。标志性故事就是一个有开头、中间部分和结尾的故事（问题解决）。\r\n- 它得引人入胜。阿克夫妇表示，一个引人入胜的故事“是发人深省、新颖有趣、内容丰富、令人愉快的”。\r\n- 它得真实。故事的角色、场景和挑战必须真实。一个听起来不真实的故事会被认为是虚构的，可能会损害讲故事的人的可信度。\r\n- 它得有细节。生动或重要的小细节会增强故事的真实性。\r\n- 它得有惊喜。对电影而言，就是转折，\r\n- 它得引入能够引起共鸣的角色。听众应该可以从故事的主人公身上看到自己的影子。\r\n- 它得有冲突和张力。所有伟大的故事都由冲突和张力构成。如果没有挣扎或冲突，故事就会变得很无趣。一位能够引起听者共鸣的主人公克服了重重障碍，最终取得成功，这种故事是不可抗拒的。\r\n\r\n标志性故事会帮助你、你的产品和品牌脱颖而出。这是形成差异化的一个因素，因为没有两个品牌拥有相同的故事。你的标志性故事是什么呢？\r\n\r\n### 故事的情感原则\r\n\r\n在没有情感诉求的情况下，也就是没有引起观众的情感共鸣的情况下，说服不可能发生。\r\n\r\n故事是我们构建情感诉求的最佳语言工具，因为人类天生喜欢故事。\r\n\r\n下次演讲或推销时你可以使用三种类型的故事：\r\n\r\n- 有关个人经历的故事；\r\n- 有关顾客或客户的真实故事；\r\n- 有关品牌或公司历史上标志性事件的故事。\r\n\r\n## 三幕式故事结构\r\n\r\n作家布拉德·斯通利用一个久经考验的讲故事的方法来建立信任。他遵循的结构几乎所有成功的好莱坞电影都用过，即三幕式结构。著名编剧悉德·菲尔德在 1979 年出版的《电影剧本写作基础》一书中推广了这个结构。\r\n\r\n这个结构并不是菲尔德构建的。他分析了数百部成功的电影，发现它们都遵循一种戏剧结构，这是我们的老朋友亚里士多德首先发现的。菲尔德说：“讲故事的时候，必须设置好角色，介绍戏剧性前提（故事的内容）和戏剧性情境（行动的环境），还要角色设置需要面对和克服的障碍，然后克服这个障碍。”菲尔德说，最重要的是，讲故事是一种可以学习并应用于任何领域的技艺，包括商业在内。\r\n\r\n悉德·菲尔德说，伟大的故事都用了下面这个结构，这种模式也适用于伟大的商业演讲：\r\n![三幕式故事结构](https://mynetdisk.top/assets/img/20201007.7e4e5511.jpg)\r\n\r\n约瑟夫·坎贝尔 1949 年出版的《千面英雄》“可能是任何理论家都能总结出通用公式的一本书”。汤普森指出：“坎贝尔追溯了数千年的历史，说明在人类会写字之前，我们就在一遍又一遍地讲述同一个英雄故事。”坎贝尔认为，每一个史诗般的英雄故事几乎都是相同的：一位英雄踏上旅程，通过了重要的试炼，最后得到提升。\r\n\r\n### 故事的三幕式结构\r\n\r\n下次演讲或展示的时候，遵循经典的三幕式故事结构：开端、冲突和解决。\r\n\r\n这个结构和讲故事一样古老，并且效果非凡。\r\n\r\n设置英雄在成功完成任务之前所必须克服的障碍，让观众处于悬念之中（绷紧一根弦）。\r\n\r\n讲故事时要有戏剧弧线，即张力、冲突和快乐的结局，以此触发观众的大脑释放催产素。\r\n\r\n## 一语中的\r\n\r\n热门电影或电视剧开始时总有一行吸引人的“一句话梗概”。没有一句话梗概，一切都白谈。一句话梗概用来说服别人接受某个想法。有吸引力的一句话梗概会用尽可能少的词说明主角、角色的目标以及冲突。\r\n\r\n一句话梗概很有效，因为它说的就是重点，正是大脑所渴望的东西。华盛顿大学生物学家约翰·梅迪纳表示，人类的大脑不会记录一件事的每个细节。大脑更擅长观察模式，总结一次经历的大意，也就是要点。\r\n\r\n### 少即是多的原则\r\n\r\n伟大的演讲都有一个主题，所有其他内容都是用来支撑这一重要信息的。\r\n\r\n下次演讲的时候，你可以想象是在给好莱坞电影设计一句话梗概。如果你要用一句话说服别人支持你的观点，只能用一句话，你会说什么？\r\n\r\n在演讲的前 15 秒钟就要介绍你的创意。\r\n\r\n## 语言——越简单越有效\r\n\r\n确定一个主题是打造引人入胜、简明扼要的演讲的第一步。要把 800 页的内容压缩成 14 分钟的演讲，\r\n\r\n- **下载一个文本可读性检测软件，比如应用程序“海明威”。这些移动或桌面工具使用可靠的算法来判断文本的可读性。** 这些工具会告诉你，你输入的文本最低需要什么教育程度才能读懂。如果里面有太多的行话，等级会较高。词语越简单——这也是我们的目标，等级越低。请记住，在这种情况下，越低意味着越好。\r\n- **编辑，编辑，再编辑** 肯尼迪身边有着世界上最伟大的演讲稿撰写人，但他仍然通过编辑、再编辑来改进讲稿。伟大的沟通者会让他们的演讲听起来轻松自如，因为他们付出了很多努力使其达到这种效果。\r\n- **要知道，观众会在大约 10 分钟后开始走神。** 有些神经科学研究发现，注意力持续的时间会长一点，但并不多……最多 15 分钟。似乎有一个内在的进化原因，导致人们在一段时间后会注意力分散。简言之，大脑觉得无聊了。所以要说到点子上，而且时间不能拖得太久。\r\n\r\n## 如何让故事拥有说服力\r\n\r\n亚里士多德在《修辞学》中指出，最有说服力的人会在演讲中插入大量隐喻和类比。他说，这些修辞手段会激发听众的兴趣，让他们采取行动。修辞让语言变得甜美清晰，根据亚里士多德的说法，它们“让学习变得愉快”。他说，隐喻具有“异国情调和迷人的特质”，让你的想法拥有说服力。\r\n\r\n类比是一个涵盖较为广泛的术语，用于比较两种不同的事物，表明它们之间的相似性。类比会迫使听众以不同的方式看待一个想法。在日常用语中，有几种形式的类比，隐喻就是其中之一。隐喻是一种文学手段，我们用一种东西来描述另一种东西，用一个词代替另一个词的意思。\r\n\r\n掌握古老的说服艺术需要理解类比的艺术和科学。没有类比，就没有说服力。类比会迫使人们摆脱传统思维。当一个想法或概念与以前的完全不同时，需要非常规思维才能说服别人接受。“类比之所以有用，是因为它能变不熟悉为熟悉。” 波拉克写道，“类比能够把陌生的地带变成我们熟悉的地带，从而帮助我们在新的地带驰骋。”\r\n\r\n亚里士多德曾写道：“成为隐喻大师是迄今为止最伟大的事……它也是天才的一个标志。”普通的沟通者会采用直白的讲稿，而演讲天才会用类比将自己与别人区别开来。\r\n\r\n### 用类比思维讲故事\r\n\r\n- 类比和隐喻会让你的演讲拥有“语言美”。\r\n- 要开始关注类比和隐喻，你可以在任何地方找到它们。\r\n- 要想找到创意，你可以读一读沃伦·巴菲特每年一次的致股东的信和约翰·波拉克的《创新的本能：类比思维的力量》。\r\n\r\n## 激发创意的四种方法\r\n\r\n以独一无二、不同寻常的方式传达想法能吸引人们的注意力，并激发他们以不同的方式看待世界。但是，在你提出一个原创想法之前，你得先有一个新颖的想法。通过神经科学，我们对历史上创意最多的人的了解比以往任何时候都多。他们的经历可以帮助我们每个人想出最好的点子。\r\n\r\n### 有创意地讲故事\r\n\r\n- 一个人不可能想有创意就能有，必须创造理想的条件，有顿悟才能有创意。\r\n- 把不同领域的想法联合起来，听听电影配乐，读读书或散散步，以此来开启你的大脑，当你去一个陌生的国度旅行时这样做就更好了。\r\n- 在为自己的创意准备演讲时，不要一上来就做幻灯片。在创建幻灯片或文档之前，先置身于一个创意空间，好好想想故事的各个元素。要知道，人们不会被幻灯片感动，而会被你故事中的情感因素感动。\r\n\r\n## 克服恐惧\r\n\r\n面对恐惧，这是克服并最终征服它的唯一方法。克服恐惧后，取而代之的是与观众建立联系所带来的快乐。你应该为分享自己的想法而高兴。毕竟，它们有可能会改变世界，这是十分令人兴奋的事。\r\n\r\n- 伟大的沟通者不是天生的，而是后天练就的。从历史人物到今天的商业领袖，世界上很多最鼓舞人心的演讲者都克服了焦虑、紧张和怯场。你也可以的。\r\n- 神经科学家已经确定了两种方法，可以帮助你在压力之下有突出的表现：认知重评和排练。\r\n- 认知重评就是重新审视你对自己和生活中所发生的事的看法。将负面思想转为正面思想是获胜的关键。一旦你改变了内心的想法，就必须花时间练习。一遍又一遍地练习演讲能增强你的信心，让你为重大日子做好准备。', '如何学会演讲，成为高效的沟通者，表达你的思想？请看这本书《像 TED 一样演讲 2》。', 1606095455, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/7.jpg', 1, 1606095455, '沟通');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `value` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '角色值',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `is_del` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `name`, `value`, `description`, `is_del`, `create_date`, `update_date`) VALUES
(1, '系统管理员', 'ROLE_ADMIN', '管理员身份，拥有所有权限', 0, '2018-09-14 18:01:23', '2020-08-14 09:06:26'),
(2, '作者', 'ROLE_EDITOR', '编辑者身份，可发表文章', 0, '2019-04-12 17:53:52', '2020-06-20 14:00:04'),
(3, '用户', 'ROLE_USER', '用户访客身份，可评论点赞收藏', 0, '2019-04-12 17:54:37', '2020-06-20 14:00:11'),
(4, '体验者', 'ROLE_EXPERIENCER', '体验网站功能', 0, '2020-06-20 14:05:26', '2020-06-20 14:07:50');

-- --------------------------------------------------------

--
-- 表的结构 `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '网站名称',
  `link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `powerby` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '技术栈',
  `powerby_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '技术栈链接',
  `copyright` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '许可协议',
  `copyright_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '许可协议链接',
  `icp` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备案信息',
  `icp_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备案信息链接',
  `create_date` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='网站信息' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `name`, `link`, `icon`, `powerby`, `powerby_link`, `copyright`, `copyright_link`, `icp`, `icp_link`, `create_date`) VALUES
(1, 'MyNetdisk', 'https://github.com/MyNetdisk', 'https://images.mynetdisk.vercel.', 'Nextjs', 'https://www.nextjs.cn/', 'CC 4.0 BY-SA', 'https://creativecommons.org/licenses/by-sa/4.0/', '湘ICP备2020019391号', 'https://beian.miit.gov.cn/', '2018-present');

-- --------------------------------------------------------

--
-- 表的结构 `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `linkname` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '社交名称',
  `linkhref` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='社交用户' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `name`, `linkname`, `linkhref`, `icon`, `create_date`) VALUES
(1, 'MyNetdisk', 'Github', 'https://github.com/MyNetdisk', 'github', '2019-09-09 22:53:02'),
(2, 'MyNetdisk', 'Gitee', 'https://gitee.com/MyNetdisk', 'gitee', '2019-09-09 22:53:02'),
(3, 'MyNetdisk', 'csdn', 'https://blog.csdn.net/weixin_44663365', 'csdn', '2019-09-09 22:53:02'),
(4, 'MyNetdisk', 'juejin', 'https://juejin.im/user/1345457964191518', 'juejin', '2019-09-09 22:53:02'),
(5, 'MyNetdisk', 'zhihu', 'https://www.zhihu.com/people/kungfumi', 'zhihu', '2019-09-09 22:53:02');

-- --------------------------------------------------------

--
-- 表的结构 `types`
--

CREATE TABLE `types` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `typeName` varchar(255) NOT NULL DEFAULT '' COMMENT '文章类型',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `orderNum` int(11) NOT NULL DEFAULT 0 COMMENT '文章类型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='文章类型' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `types`
--

INSERT INTO `types` (`Id`, `typeName`, `icon`, `orderNum`) VALUES
(1, '技术总结', 'MailOutlined', 1),
(2, '生活与创作', 'AppstoreOutlined', 2);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `username` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `email` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `register_date` datetime NOT NULL COMMENT '注册时间',
  `last_password_reset_date` date DEFAULT NULL COMMENT '最后修改密码时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `register_date`, `last_password_reset_date`) VALUES
(1, '张炎', '1', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/13.jpg', '2021-03-28 22:17:13', NULL),
(2, '王文洲', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/7.jpg', '2021-03-28 22:47:33', NULL),
(3, '周志辉', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/15.jpg', '2021-03-28 22:51:42', NULL),
(4, '石璐婷', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/5.jpg', '2021-03-28 22:55:11', NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `phrase`
--
ALTER TABLE `phrase`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `label`
--
ALTER TABLE `label`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `types`
--
ALTER TABLE `types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
