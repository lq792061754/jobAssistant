/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.14-log : Database - job_assistant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`job_assistant` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `job_assistant`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`password`) values 
(1,'lq','123');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `commenter_id` int(11) DEFAULT NULL,
  `comment_content` text,
  `comment_time` datetime DEFAULT NULL,
  `comment_note` int(11) DEFAULT NULL,
  `comment_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`comment_id`,`post_id`,`commenter_id`,`comment_content`,`comment_time`,`comment_note`,`comment_flag`) values 
(32,29,4,' <p>666<br></p>','2019-05-14 21:06:22',0,'0'),
(33,29,4,' <p>666<br></p>','2019-05-14 21:06:28',0,'0'),
(35,28,6,' <p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/f4/cj_thumb.gif\"></p><p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/14/tza_thumb.gif\"></p><p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/d9/landeln_thumb.gif\"></p><p><br></p>','2019-05-15 13:41:23',0,'0'),
(36,30,4,'<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/0b/tootha_thumb.gif\"><p><br></p>','2019-05-20 15:16:26',0,'0'),
(37,33,4,' <p>你好啊<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/5c/huanglianwx_thumb.gif\"><br></p><p><br></p>','2019-05-21 22:03:52',0,'0'),
(38,32,4,' <p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/6a/laugh.gif\"></p><p><br></p>','2019-05-21 22:04:09',0,'1'),
(39,42,7,' <p>不错啊<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/0b/wabi_thumb.gif\"><br></p><p><br></p>','2019-05-22 00:04:09',0,'0');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `test_time` date DEFAULT NULL,
  `need_brief` varchar(255) DEFAULT NULL,
  `hold_place` varchar(255) DEFAULT NULL,
  `post_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`company_id`,`company_name`,`start_time`,`end_time`,`test_time`,`need_brief`,`hold_place`,`post_url`) values 
(1,'百度','2019-05-07','2019-05-09','2019-05-12','精通java、c++，有良好的编程习惯','华中科技大学','http://talent.baidu.com/external/baidu/campus.html'),
(2,'腾讯','2019-04-29','2019-05-06','2019-05-08','java工程师，精通java，主流框架','北京大学','http://join.qq.com'),
(3,'阿里巴巴','2019-02-25','2019-05-28','2019-05-30','精通C语言，算法，在校表现优秀。','清华大学','http://job.alibaba.com/zhaopin/index.htm'),
(4,'携程','2019-03-07','2019-03-09','2019-03-12','精通.net,有良好的编程习惯，心里素质。','重庆大学','http://campus.ctrip.com'),
(7,'bilibili','2019-05-16','2019-05-18','2019-05-20','精通java，有较好的团队合作能力。','武汉大学','http://campus.bilibili.com/activity-campus2019.html'),
(8,'华为','2019-05-01','2019-05-08','2019-05-09','精通C语言，有良好的编程习惯','浙江大学','http://career.huawei.com/reccampportal/campus4_index.html#campus4/content.html');

/*Table structure for table `exercise_topic` */

DROP TABLE IF EXISTS `exercise_topic`;

CREATE TABLE `exercise_topic` (
  `et_id` int(11) NOT NULL AUTO_INCREMENT,
  `et_name` varchar(255) DEFAULT NULL,
  `et_time` date DEFAULT NULL,
  `et_from` varchar(255) DEFAULT NULL,
  `et_kind` varchar(255) DEFAULT NULL,
  `et_heat` int(50) DEFAULT NULL,
  PRIMARY KEY (`et_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `exercise_topic` */

insert  into `exercise_topic`(`et_id`,`et_name`,`et_time`,`et_from`,`et_kind`,`et_heat`) values 
(35,'2018bilibili校招','2018-11-14','网络','JAVA',2),
(36,'2019417我今天的题','2019-05-02','企业','JAVA',6),
(37,'携程2019届秋招专业笔试','2019-05-22','企业','JAVA',1),
(38,'bilibili2018秋招合辑','2018-11-22','网络','C++',1),
(39,'百度2019校招核心系统工程师','2019-10-11','网络','JAVA',0),
(40,'拼多多2019校招合辑','2019-03-07','企业','C++',0);

/*Table structure for table `job_post` */

DROP TABLE IF EXISTS `job_post`;

CREATE TABLE `job_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `post_content` text,
  `pub_time` datetime DEFAULT NULL,
  `post_heat` int(11) DEFAULT NULL,
  `post_comments_num` int(11) DEFAULT NULL,
  `post_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `job_post` */

insert  into `job_post`(`post_id`,`post_title`,`writer_id`,`post_content`,`pub_time`,`post_heat`,`post_comments_num`,`post_note`) values 
(23,'算法菜鸟的春招之路 ',4,'<br><p>不想干活了，就来总结一下这两个月的面试，算是春招告一段落吧，其实就是 hun gong shi。三月四月基本上每天就是那种早7晚12的节奏，拿的offer都没有什么太大的分量，大佬们笑笑就行</p><span>我也知道自己的菜，非常感谢那些知道我菜还给了我offer的面试官，也很感谢挂了我的面试官，感谢他们让我清楚得意识到自己到底有多么菜<span></span></span><p>  首先介绍一下，我本硕都不是科班，只是专业跟cs或多或少有一些关系，本科学过数据结构，计算机网络什么的，Java也学了，但全忘了，现在完全不记得了，研一零零散散有看一些算法的东西，但真正认真学是研二开始的。刷leecode大概是去年11月开始的，当时是一个同学带我刷的，一天两个左右，到一月份好像做了100多个吧，然后寒假把剑指offer刷了一遍，准备面试的这两个月狂刷leecode，现在到300了，后面有空还是偶尔会刷一刷的，怎么说，我觉得刷题还是挺有意思的，国内大厂一般手撕代码不是很难，都比较基础，一般刷剑指offer就够了，但是自己想再提升一下还是得多刷leecode，多总结，刷多了会发现很多都是套路~我面试过程中可能运气好到爆遇到的写代码的题目都比较常见，并没有出现hard难度的，在此感谢各位面试官爸爸们高抬贵手放了我一马~另外，我没有顶会paper，我的水paper都不好意思往简历上写，怕面试官看了直接不面我了</p><span></span><p>  好了，废话不多说了，我前前后面的有爱奇艺，bilibili，oppo北京研究院，华为，平安科技，滴滴，360，腾讯，商汤，蘑菇街，招行卡中心，百度，阿里 </p><p>  招行卡中心和百度做了笔试后没有给面试机会，其实这两个是我最想去的地方</p><span><span></span>希望秋招可以偏爱我一下下</span><p>  腾讯提前批二面挂了，阿里主管一直不面我，我放弃了，是我太菜没有修福报的机会</p><span></span><span>这些面试过去太久了，我已经记不清到底是第几面的问题了，下面我就写在一起吧~~由于我可能废话比较多，每次讲两个项目就大概花了半个小时，所以，哈哈哈，导致后面面试官问的其他东西都不多<span>我也不是故意拖延时间的，只是在讲项目的过程中面试官一延申就一直说下去了~~</span></span><span>爱奇艺：</span><p>  主要是问了项目，但并没有很细，就我把每个项目讲一遍，他们都没有问其他啥的~下面就是基础了： </p><p>  1.解释word2vec（这个我真的是5次有3次都会被问到，我觉得想突出你对它掌握得很好得话得知道层次softmax每次到底是怎么更新参数的，skip gram和cbow的优缺点，负例采样和层次化softmax各自的优缺点，以及word2vec的缺点等等) </p><p>  2.手推LR </p><p>  3.问了SVM的原理，但没有问的很细 </p><p>  3.讲决策树，然后我就巴拉巴拉从（ID3,C4.5到CART，再随机森林，GBDT和XGBOOST，感觉挺尴尬的，我就一个人在那说，面试官就看着我，搞的我都不知道我是不是说太多了） </p><p>  4.问了条件随机场，我说我就只知道一点点，面试官很和善得说，不知道没关系，你简历里面也没有写，他说他就随便问问然后我就把自己理解的那一点跟他说了，讲了下随机条件场的原理，</p><span>对比了下条件随机场和隐马</span><p>  5.知道敏感哈希算法么，太菜了我又只知道一点点，就只说了自己知道的东西，面试官还是笑眯眯的，面试体验还是很好的。 </p><p>  bilibili： </p><p>  1.问项目，问attention机制，手写attention的公式，手推最小二乘 </p><p>  2.有个面试官是主管，偏向业务比较多，所以针对有一个项目问了很多细节的东西，真的超级细，细到我有一个特征是怎么做平滑处理的，还好是我自己做的，哈哈哈，淡定应对 </p><p>  3.写代码，判断平衡二叉树，一个是字符串匹配（用KMP) </p><p>  其余的问题不记得了 </p><p>  Oppo北京研究院： </p><p>  1.问项目，讲了其中两个 </p><p>  2.讲LR，面试官要求LR讲得特别仔细，就那种LR是什么假设，损失函数是怎么回事，怎样更新参数什么的 </p><p>  3.问知道哪些优化算法 </p><p>  4.问了一个斐波那契数列的题，说了两种方法后，面试官问还有没有用线性代数优化的方法，我当时一懵，只知道剑指offer上有最后一种方法，但并没有仔细看，然后在面试官的提示下大概完成了 </p><p>  5.问了哈希表的原理，解决哈希冲突的方式，哈希函数的选择，常用的哈希函数 </p><p>  好像还有其他问题，但也忘了</p><span></span><span>华为：</span><span>1.真的是玄学面试，问了简历中两个项目</span><span>2.问了word2vec原理</span><span>3.代码题是 two sum（我听到这个题的时候，what，怎么这么简单<span>，跳台阶，铺瓷砖</span></span><span><span>然后就是聊人生啦！真是玄学面</span></span><span><span>平安科技：</span></span><span><span>平安科技这个是他们那个智能引擎部的</span></span><span><span>1.依然讲项目</span></span><span><span>2.问了word2vec原理</span></span><span><span>3.问了几个Linux命令</span></span><span><span>4.写了旋转数组的查找</span></span><p>  其余的不记得了，这个面试没什么印象 </p><p>  滴滴： </p><p>  1.问项目 </p><p>  2.数组中查找中位数（有两种方式，堆或者借用快排中的partition的思想) </p><p>  3.二叉树的前序遍历，非递归 </p><p>  4.问了几个sql </p><p>  啊，其余的我又不记得了，哈哈哈，原谅lz的记忆力差3</p><span></span><span></span><span></span><span>60 提前批：</span><span>1.问项目</span><span>2.代码题是链表相乘，还有一个是类似于剑指offer上那个 min stack一样的，思想是一样</span><span>3.讲一下优化算法</span><span>4.讲word2vec</span><span>5.讲知道的优化算法</span><p>  这是lz第一次视频面，面试官小哥哥超级羞涩的，竟然全程不看我，就偶尔抬头看一下我，然后我就不知道他在那低头看啥了，搞得我都不知道眼睛往哪放了</p><span></span><span></span><span>腾讯：</span><p>  1.讲项目，小哥哥问的很细，在项目中比较关注我为什么要这么做，这么做提升的地方在哪 </p><p>  2.问了LSTM为什么可以解决梯度弥散的问题 </p><p>  3.因为我的项目是做文本匹配的，所以根据业务场景进行了一些提问 </p><p>  4.问了transformer </p><p>  5.前面就聊了快一个小时了，然后面试官小哥哥说了句，嗯，不错，挺好的，很好，哈哈哈，然后，就给了我个链接让我写了一个题，是很简单得dp，当时写的时候太紧张，代码有点问题，小哥哥说，没事，我知道你要表达得意思，这个不要 </p><p>  6.虽然已经快一个小时了，但小哥哥还是详细得给我说了他们组的业务，挂了电话后他又微信补充了一点他们组的业务，嗯，面试官小哥哥简直太好了，疯狂打call</p><span></span><span></span><span>星星眼<span></span><span></span><span>（后来其他人帮我看了面试记录，这个小哥哥给的面试评价特别好，嘻嘻嘻，还是很开心的)</span></span><span>一面很好，但是二面得时候，那个主管，大概就是气场不合吧<span>问的问题莫名其妙，在讲项目得时候他问了对于bad case是怎么处理得，说了后他问怎么做数据增强，我又说了一些常见办法后那个人又说，如果现在我的文本数据是加密得看不到具体内容要怎么做数据增强，what，我一脸懵逼，你都看不到内容我怎么给你做数据增强，然后我就知道大概他在无理取闹了吧，然后后面也没有写代码匆匆结束了，结束后我就知道凉凉了，然后当了一周备胎凉了</span></span><span><span>商汤：</span></span><span><span>1.讲项目，面试官说，你要我说出在项目中的创新点，他要听到不一样的地方</span></span><span><span>2.讲了word2vec</span></span><span><span>3.讲了语言模型的发展历史</span></span><span><span>4.问了平常使用tf所踩的坑，<span></span><span></span><span>面试官说他想找点欢乐，看看大家都踩了哪些坑</span></span></span><p>  还有其他的一些问题，但没什么印象了 </p><span><span><span>蘑菇街：</span></span></span><span><span><span>1.讲项目</span></span></span><span><span><span>2.代码题是写编辑距离，二面写的是大数相加</span></span></span><span><span><span>3.问优化算法，问word2vec，问XGBOOST，问BN，问Dropout</span></span></span><span><span><span>4.问Transformer</span></span></span><span><span><span>阿里：</span></span></span><span><span><span>我阿里的面试有一个项目扣的特别特别细，因为那是一个天池的比赛，面试官非常关注细节，问为什么要这样做，为什么要这样设计特征，这样做的好处在哪，大概每次跟面试官讲这个项目就讲了20多分钟，除了这个项目就还具体讲了另一个项目，当然都只是简单说了一下</span></span></span><span><span><span>1.代码上撕了一个好像是将二叉树转成链表的题</span></span></span><span><span><span>2.基础问了欠拟合和过拟合，从方差和偏差角度比较bagging和boosting</span></span></span><span><span><span>3.LSTM为什么可以缓解梯度消失</span></span></span><span><span><span>4.结构风险，经验风险</span></span></span><span><span><span>5.哈希表的原理</span></span></span><span><span><span>我明明记得阿里有次我面了一个半小时，结果怎么只记得这些问题了，我记得好像在我讲项目的过程中提了很多问题<span></span><span></span><span>然后阿里现在一直是面试中，应该是我优先级不够再加上面试官特别忙，所以结果应该就是淹死在备胎池里面了<span></span><span></span></span></span></span></span><p>  这些面试隔了很久，我每次面试完也没有做笔记什么的，现在能想起来得就只有这些了，大家参考参考就好，大佬们笑笑就好~ </p><p>  怎么说，说点自己的感想吧，从去年入算法坑到现在，真的是既有运气又有汗水，入坑以来每天都在学习，狂补知识，因为知道我已经落后一大截了，所以只有更加努力，就今年过年我在家总共呆的时间不到一周就滚回学校学习了，家人送我去车站本来我妈要下车把我送进去，我怕自己忍不住哭了赶紧把我妈赶上了车，不让送我，然后自己坐在那候车的时候眼泪就掉了下来，真的是当时超级心酸，觉得特别愧疚，感觉自己陪家人的时间太少了，以后一定会多陪陪他们</p><span></span><span></span><p>虽然今年算法爆掉了，各路神仙都有，像我这种渣渣自然是没有什么竞争力的，但是呢，自己还是不后悔入了这个坑，自己选的路除了笑着走下去，还能怎么办呢</p><span></span><span></span><span>对于春招，我可能真的是运气好，因为貌似我并没有遇到特别多特别奇葩的的问题，问题都比较常见，真的是很感谢各位面试官爸爸~</span><span>对于找工作呢，我觉得实力和运气各占一半吧，面挂了每个人都会特别难受特别是自己在意的公司，但是呢，路还是要走下去的，生活还是要继续的，笑一笑还可以继续下去，爱笑的人运气不会太差！（哈哈哈，其实腾讯挂了我也很难受，大概难过了两天吧<span></span><span></span><span>后来调整了，我也希望我也可以越来越淡然，有的时候结果并没有那么重要，努力的过程是最重要的<span></span><span></span><span>要是不好好调整心态，秋招我可能真的要被虐自闭了）为什么面挂了大家会难受呢，有时候就是一种执念，哈哈哈，大家都放过自己，<span>每天开心最重要啦~~~要这样告诉自己，</span>失去这一个offer可能是因为老天想给你另外一个更好的offer哦~<span></span><span></span><span></span></span></span></span><span><span><span>另外，我mentor今天跟我说，他招人从来不看paper，他说他觉得未来两三年内，对于算法岗位，肯定是经验比paper重要，因为越来越多的学校开始开设AI的课程，现在发顶会的越来越多，也越来越不值钱了，而AI最后始终是要落地的，所以还是工程能力最重要~~~嘿嘿嘿，感觉为没有paper在算法坑里看不到光明的算法宝宝点燃了希望，当然他的话仅供参考，毕竟BAT大厂很多面试官还是看paper的，我这种mentor毕竟是少数~~~</span></span></span><p>  祝大家都可以拿到想要的offer啦~~~大家都加油！ </p><p><br></p>','2019-05-13 21:04:21',32,0,NULL),
(24,'JQuery 控制超出内容显示省略号',4,'<p>\n长度超出规定长度，显示省略号</p><p>\n设置class为displayPart，</p><p>\n设置自定义属，displayLength可显示长度（不包含...），双字节字符，长度 *2，</p><ol><li>\n&lt;script&nbsp;type=\"text/javascript\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;$.fn.extend({&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;displayPart:function&nbsp;()&nbsp;{&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;displayLength&nbsp;=&nbsp;100;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;displayLength&nbsp;=&nbsp;this.attr(\"displayLength\")&nbsp;||&nbsp;displayLength;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;text&nbsp;=&nbsp;this.text();&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!text)&nbsp;return&nbsp;\"\";&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;result&nbsp;=&nbsp;\"\";&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;count&nbsp;=&nbsp;0;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(var&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;displayLength;&nbsp;i++)&nbsp;{&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;_char&nbsp;=&nbsp;text.charAt(i);&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(count&nbsp;&gt;=&nbsp;displayLength)&nbsp;&nbsp;break;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(/[^x00-xff]/.test(_char))&nbsp;&nbsp;count++;&nbsp;&nbsp;//双字节字符，//[u4e00-u9fa5]中文&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;+=&nbsp;_char;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(result.length&nbsp;&lt;&nbsp;text.length)&nbsp;{&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;+=&nbsp;\"...\";&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this.text(result);&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;});&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;$(function&nbsp;()&nbsp;{&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(\".displayPart\").displayPart();&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;});&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;/script&gt; &nbsp;</li></ol><br><ol><li>\n&lt;!DOCTYPE&nbsp;HTML&nbsp;PUBLIC&nbsp;\"-//W3C//DTD&nbsp;HTML&nbsp;4.01&nbsp;Transitional//EN\"&nbsp;\"http://www.w3.org/TR/html4/loose.dtd\"&gt;&nbsp;&nbsp;</li><li>\n&lt;html&gt;&nbsp;&nbsp;</li><li>\n&lt;head&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;title&gt;&nbsp;New&nbsp;Document&nbsp;&lt;/title&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;name=\"Generator\"&nbsp;content=\"EditPlus\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;name=\"Author\"&nbsp;content=\"\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;name=\"Keywords\"&nbsp;content=\"\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;name=\"Description\"&nbsp;content=\"\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=\"text/javascript\"&nbsp;src=\"http://code.jquery.com/jquery-1.9.1.min.js\"&gt;&lt;/script&gt;&nbsp;&nbsp;</li><li>\n&lt;/head&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;body&gt;&nbsp;&nbsp;</li><li>\n&lt;h2&gt;hello\n world&lt;/h2&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;div&nbsp;style=\"width:500px;\"&gt;&nbsp;&nbsp;</li><li>\n&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;hello\n worldhello worldhello worldhello\n worldhello worldhello worldhello\n worldhello worldhello worldhello\n worldhello worldhello world!!!</li><li>\n&lt;/div&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;hr&gt;&nbsp;&nbsp;</li><li>\n&lt;h2&gt;hello&lt;/h2&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;div&nbsp;class=\"displayPart\"&nbsp;displayLength=\"40\"&gt;\nhello worldhello worldhello worldhello\n worldhello worldhello worldhello\n worldhello worldhelloworldhello\n worldhello worldhello worldhello\n worldhello worldhello world</li><li>\n&nbsp;</li><li>\n&lt;/div&gt;&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&nbsp;&nbsp;</li><li>\n&lt;/body&gt;&nbsp;&nbsp;</li><li>\n&lt;/html&gt;&nbsp;&nbsp;</li></ol><p><br></p>','2019-05-14 15:10:11',13,1,NULL),
(28,'我很好啊',4,'<p>安顿好骄傲的看见<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/0b/tootha_thumb.gif\"></p><p>；打卡代码<br></p><p><br></p>','2019-05-14 17:38:34',45,1,NULL),
(30,'我很好',4,'<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/6a/laugh.gif\">你怎么样</p><p><br></p>','2019-05-20 15:17:08',39,1,NULL),
(33,'简述jq的实现原理',4,'<h4>1. 沙箱：</h4><ul><li>jq利用自执行函数，将所有的实现细节封装在自执行函数内，对外仅仅暴露jQuery和$符号</li></ul><h4>2. 无new化</h4><ul><li>在jq中我们使用选择器，是直接使用$(selector)的，但是其实他返回的是一个jq对象，其中挂载了很多jq方法。</li></ul><p>当我们传入一个选择器时，会返回new jQuery.fn.init(selector, \ncontext);而当我们传入空选择器时，在init中会显示返回this，此时this是指带init，而init的prototype被赋值为jQuery.fn，因此就相当于jQuery的实例。</p><p><br></p>','2019-05-14 17:17:27',29,1,NULL),
(36,'ajax的使用问题',7,'<pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\">$.ajax({\n         type: <span class=\"hljs-string\">\'GET\'</span>,\n         url: <span class=\"hljs-string\">\"/showCompanyMsg\"</span>,\n		 data: {<span class=\"hljs-string\">\"page\"</span>: num}, <span class=\"hljs-comment\">//传输的数据</span>\n         contentType: <span class=\"hljs-string\">\"application/json;cherset=utf-8\"</span>,\n         dataType: <span class=\"hljs-string\">\"json\"</span>,\n         success: <span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> (<span class=\"hljs-params\">data</span>)</span>{\n					$(<span class=\"hljs-string\">\".prePage\"</span>).hide();\n				}\n				<span class=\"hljs-keyword\">if</span>(data.pageNum == data.pages){<span class=\"hljs-comment\">//判断下一页按钮</span>\n					$(<span class=\"hljs-string\">\".nextPage\"</span>).hide();\n				}\n			}, \n			error: <span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span>(<span class=\"hljs-params\"></span>) </span>{   <span class=\"hljs-comment\">//失败的回调函数</span>\n				 <span class=\"hljs-built_in\">console</span>.log(<span class=\"hljs-string\">\"error\"</span>);\n			} \n		}) 	 \n	}\n	</code></pre><p><br></p>','2019-05-21 23:27:19',4,0,NULL),
(38,'你好',4,'<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/ca/fahongbao_thumb.gif\"></p><p><br></p>','2019-05-14 17:29:54',43,0,NULL),
(42,'人生如梦',7,'<p>jQuery是一个快速、简洁的JavaScript框架，是继Prototype之后又一个优秀的JavaScript代码库（</p><i>或JavaScript框架</i><p>）。jQuery设计的宗旨是“write Less，Do More”，即倡导写更少的代码，做更多的事情。它封装JavaScript常用的功能代码，提供一种简便的JavaScript设计模式，优化HTML文档操作、事件处理、动画设计和Ajax交互。</p><p>jQuery的核心特性可以总结为：具有独特的链式语法和短小清晰的多功能接口；具有高效灵活的css选择器，并且可对CSS选择器进行扩展；拥有便捷的插件扩展机制和丰富的插件。jQuery兼容各种主流浏览器，如IE\n 6.0+、FF 1.5+、Safari 2.0+、Opera 9.0+等。</p><p><br></p>','2019-05-22 00:03:32',9,1,NULL);

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) DEFAULT NULL,
  `replier_id` int(11) DEFAULT NULL,
  `reply_content` text,
  `reply_time` datetime DEFAULT NULL,
  `reply_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

/*Table structure for table `skill` */

DROP TABLE IF EXISTS `skill`;

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_title` varchar(255) DEFAULT NULL,
  `skill_content` text,
  `skill_time` datetime DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `skill` */

insert  into `skill`(`skill_id`,`skill_title`,`skill_content`,`skill_time`) values 
(2,'7个面试技巧，送给正在找工作的你',' <p>1、仪容仪表</p><p>首先，最不容忽视的一点就是仪容仪表了。在EHL被奉为“宝典”的一句经典“校训”便是：“You will never have a second chance to make the first impression.”中文意思是“你永远没有第二次给别人留下第一印象的机会。”</p><p>因此，在面试中，根据面试内容和环境，注意发型和衣着，会是给面试官留下一个好印象的第一步。</p><p>2、肢体语言</p><p>在采访这位资深HR的时候，她告诉小编，一个面试者的肢体语言是非常重要的。他是否自信，就看他是否眼神坚决、步伐坚定。他对这个职位是否感兴趣，不需要看他怎么说，只需要看他谈论时的神情、动作。</p><p>“我们的面试其实从面试者一进门，我们看到他的第一眼就已经开始了。”这位HR这样告诉小编。</p><p><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3973644055,4194036251&fm=173&amp;app=25&amp;f=JPEG?w=560&amp;h=339&amp;s=CAE232665A209C5D4299349D010080C0\"></p><p>3、语言表达</p><p>除了肢体语言之外，语言表达也是非常重要的。面试的时候，应该多与面试官进行眼神交流，注意观察。如果面试官表现出对你的话题不感兴趣（如开始看向其他地方），应及时调整话题内容或结束话题。</p><p>如果面试者的陈述过于繁琐或是过于简单，在大型面试中，都容易让面试官失去兴趣，最后得到不如意的结果。</p><p>4、态度积极</p><p>在参加面试之前，你是否有准备充分？对面试的公司做足了“功课”？要知道，如果你对面试公司或学校一无所知，无法回答基本提问时，可是会给面试官留下非常不好的印象呢。</p><p>相反，如果你能表现出你相当重视这次面试，并且对面试单位或学校充分了解，就能大大提高录取几率！</p><p><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=231194293,757427844&amp;fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=598&amp;s=20B07532CAF04E983C5B2C560300E0F0\"></p><p>5、个人简历</p><p>当你递上个人简历的时候，是否想过面试官究竟想从中寻找什么？其实，个人简历不需要华丽，但是必须真实。最重要的简洁明了并且能够突出重点。</p><p>6、了解面试需求</p><p>除了对面试的公司或学校要有所了解，面试者还需要了解公司和学校想要招聘或录取什么样的人。“面试时不要过多重复简历上的内容，因为我们在面试前已经看过你的简历了。”资深HR如是说。</p><p>另外，在EHL的面试中，面试官是不允许知道面试者成绩的。这么做的目的就是为了让面试评价更加客观，所以才用标准成绩和面试成绩分开评估。</p><p>由此可见，面试其实就是想要通过面对面沟通的方式发掘面试者不同的方面。所以面试时应该突出一些个人色彩以及一些简历里无法表达的内容（如个人性格等）。</p><p><img src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=308720204,2312240300&amp;fm=173&amp;app=25&amp;f=JPEG?w=600&amp;h=356&amp;s=DE8B72234C60709816CC88CF0100C0B3\"></p><p>7、避免不切实际的要求</p><p>在职场面试中，讨论薪酬是面试的重要环节之一。那么说起薪酬，究竟要注意些什么？其实，如果面试者对于福利和薪酬过于斤斤计较，容易给应聘单位不务实的感觉。</p><p>比起一味地要求薪资，更专注于谈论你能给公司创造的价值会更有帮助。毕竟如果你能创造超于他人的价值，那么薪酬自然随之而来了～</p><p>总结</p><p>其实，无论是学校面试还是工作面试，虽然不能说千篇一律，但是其实万变不离其宗。如果能用上这七条小贴士，把自己准备的面试材料重新梳理，并且配上自己的个人实力，相信你在申请季毕业季校招季一定都能稳稳地拿下心仪的offer和工作哦～</p><p><br></p>','2019-05-22 17:56:48'),
(3,'面试技巧和注意事项：你应该知道的八大面试问题','<p>在上一份工作中，什么使你最有成就感?</p><p>面试官可以通过这个问题了解你的长处。仅仅说“我提高了社交媒体参与度”并不会让面试官了解到你做成了什么事。而是要告诉他们你是如何为公司提高社交媒体参与度的，为什么你的帮助是有价值的。</p><p>谦虚地自夸非常重要，掌握这门艺术可以给人留下良好的印象。你可以对自己的成就感到骄傲，但喋喋不休自己对前雇主的价值只会给人留下自大的印象。</p><p>你上一任经理会怎样评价你呢?</p><p>为什么会问你这样的问题?通过这个问题，面试官可以推测你觉得你在经理眼中是什么样子的，进而断定你与管理层的关系相处得如何。</p><p>请记住，如果被问及(或你自己准备提及)你的前任经理，面试官是可以去证实你的回答的，因此最好尽可能地诚实。谈谈你对工作的态度、团队合作的能力，和与前任经理工作关系中的积极一面。如果你与前任经理关系不好，不要为此影响你的回答，可以转而谈谈你在前工作团队中扮演的角色。</p><p><br></p>','2019-05-22 20:08:53'),
(4,'面试的技巧和注意事项，13条技巧助你顺利面试',' <p>HR对应聘者最关心的莫过于：你的职业目标是什么?你是否想清楚自己到底能做什么?擅长做什么?你3年以内的规划是什么?到底如何面试才能被HR认可，得到职位呢，小编总结了三个必备面试技巧，一起跟随小编来看看吧~（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>面试技巧一：认定自己的职业目标，对于刚毕业的应届毕业生可以有试错的机会，但是对于已经步入职场工作几年甚至10几年的人，在转行的时候，一定要做出明确的目标定位，这样既方便自己集中精力寻找相关的岗位，也方便企业的筛选，确保你经过面试，会顺利入职，会在岗位上竭尽全力。有了清晰的职业目标，有明确的职业规划，对于应聘者来说，也更方便的筛选企业，看当前的企业能提供什么样的岗位?什么样的发展空间和平台?是否和自己的职业规划阶段性需求相吻合，根据自己的当前需求去做取舍。只有你自己认定了你需要这份工作，你能做好这份工作，HR才能放心的把这份工作交给你。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3298112489,1293162281&fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=EE120F8D5E62569095889CD4030000B1\"></p><p>面试技巧二：针对目标岗位制作简历，很多人认为有实力在，简历只是一个过场，关键是没有这个过场，你也没有面试机会好不好?简历就是一张你的名片，企业以此来进行判断，你是否是他们想找的人?是不是在知识上、技能上和经验上与岗位相匹配。所以，简历好不好，直接决定你是否可以有机会去面试。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>简历写什么?一个最简单的原则，就是以全面展示你和岗位的匹配性为原则。针对目标岗位制作简历是必须的，岗位要求的技能，相关经验，以及素质上的要求，软件，硬件，你要把自己写的跟电器说明书一样，通俗易懂，容易使用，容易上手，最重要的是方便企业了解你的各种“使用功能”。有人会担忧，我什么条件都和人不靠边，属于零基础转行，那么这简历怎么写呢?这时候就需要发挥你的总结和归纳能力，把自己的以往的经历中凡是和目标岗位有点关系的事件，技能，通通列出，以表示，虽然我没吃过猪肉，但是我见过猪跑啊!这样一来，起码你能做个后备的候选人。最后强调，简历格式一定要清晰明了，整洁大方，不要忘记写电话号码，不要有错别字，美颜自拍照就别贴了好吗?跟本人差距太大，容易影响面试官心情。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4064781546,3793582007&amp;fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=2B324D8355BD759EC30085DA03004093\"></p><p>面试技巧三：自我介绍很重要，这个建议一定要提前准备好，中文的，英文的，日文的......根据对方企业而定。自我介绍是在面试的过程中，唯一让你有主动权的表达，这时候，就要充分的“孔雀开屏”，自我展示，根据对方企业的岗位要求，要把自己的优势，特长，和企业的匹配性充分的表达出来。自我介绍环节可以充分的展示你的逻辑思维、表达能力、现场应变能力、心理素质、情绪控制能力、控场能力......\n \n总之，有了充分的准备，和现场的完美发挥，会迅速的在面试官心里留下好印象，第一印象起码占到70%的作用。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1509193747,1141593052&fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=2360DF10431345C0526C41DF03008032\"></p><p>稍微高级一点的，你不至于紧张的说不出话的情况下，在自我介绍中甚至可以往自己有利的方向引导，帮面试官埋个“引子”，让对方感兴趣，不断的追问，不断的通过你的提前设计，朝着自己有利的方向发展。但是这条要慎用，在自己有能力控制的前提下。当然除了自我介绍，和面试官的交流环节也是非常重要的，你的眼神、态度、说话语气、反映快慢、表达方式，都很重要，细节决定成败，面试前对着镜子多练习一下，看看你的微笑真诚吗?你的眼神诚恳吗?最重要的提前一定要针对面试的常见问题有所准备，不至于当时惊慌失措加紧张说错话，网上可以搜到很多面试常见问题哦，有备无患。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>面试是就业无法避免的，而且这里面也大有学问，你是否能得到这一份工作，面试可是很重要的，那么面试的技巧和注意事项有哪些呢？小编收集了十三点，希望能帮到面试的朋友们，下面跟随小编一起来看看吧~面试的技巧和注意事项：1.让一切都井然有序(Be\n \norganized)当你开始着手找工作时，你可以先将用来面试的正装集中归纳在衣柜的一隅，或者提前印好足够的简历。这样一来，等到最终真的要去面试的时候，你就不至于因为要准备太多东西而担心不已，你所面对的压力也会由此大大降低。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2647452000,2153521960&fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=FD2285574C304288174035E703006031\"></p><p>2.拒绝冰水(Say\n no to ice \nwater)：面试前若对方请你喝水，出于礼貌你应该接受并道谢，但请千万记得，别让他们给你冰水。因为这样你才不至于会因为玻璃杯外的冷凝水而一时手滑摔掉水杯，而且如果你很紧张以至于手都在颤抖，那么杯子里也不会有晃荡的冰块导致对方一眼就看出了你的不安。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>3.口袋里放张纸巾(A\n napkin in your \npocket)走进面试房间之前，记得用餐巾纸迅速擦一下手，这样面试官在和你握手的时候才不至于握到一只湿冷的手。4.高跟鞋里放张护垫(Panty \nliners in your \nheels)如果天气实在太热，以至于你脚底经常打滑或者直接粘在了高跟鞋里，不妨整齐地塞张护垫进去——它们可以吸汗而且也没人会看到。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3057118320,4088201187&fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=09E1E11707637315066C51DF0300C032\"></p><p>5.面试尽量约早上(Appoint\n in the \nmorning)这样，你可以一早就完成面试——而且你不至于在漫长的等待时间里逐渐失去信心。如果可以的话，你可以试试和面试官约在周二早上10：30。6.遵循“3秒”规则(Follow\n a 3-second \nrule)在回答问题之前，你应该等上3秒。这么做不仅可以让你消化一下问题，还可以让你显得不是那么急躁(且又紧张)。这条规则在接受电话面试的时候尤其适用。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>7.用STAR法组织答案(Streamline\n your \nanswer)把你的答案拆分成四个部分——S(Situation)情境;T(Task)任务;A(Action)行为;以及R(Result)结果——用这种方法做出的回答可以涵括各个基础面向。8.做运动(Exercise)如果时间允许的话，在面试前花10-15分钟做一下有氧运动——这样做不仅不可以帮助你促进血液流动，还可以让你释放掉部分焦虑情绪。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2011080628,3641201936&fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=913079334F5147D051F915C70300E0B2\"></p><p>9.电话面试：站立+微笑(Stand\n and smile)站立的姿势可以提高你的声音质量，让你听上去显得既自信，又似乎已对求职一事了解得通透而全面了。10.听筒对准下巴(Phone\n near your \nchin)把听筒对准下巴，而不要直接对着嘴。相信我，你绝对不会希望面试官一边讲话一边听到你那令人毛骨悚然的紧张呼吸声。11.咖啡就算了吧(Skip\n the \ncoffee)很多人都喜欢喝咖啡，但是在面试前却还是不喝为妙。要知道，咖啡因会进一步刺激你的神经，而且在你紧张到胃打结的情况下，它也不好消化。所以，面试前咖啡就算了吧，相反，你或许可以喝些茶，茶可以帮助你集中注意力。（最有用的职场知识与技能，抓紧收藏起来吧，看完记得转发哟，建议请留言）</p><p>12.更多蛋白质(Eat\n more \nprotein)面试前的早餐，你可以试着吃一些富含蛋白质的事物，如鸡蛋或者花生酱。不要吃太多碳水化合物，因为一旦摄入过多碳水化合物，你会不由昏昏欲睡，而蛋白质却可以让你的大脑更加清醒高效。13.别卖弄雕虫小技(Don\'t\n sweat the \nsmall)你面前这位未来雇主或许早就知道你会做某件事情了，因此如果你想给他留下一个绝佳的第一印象，就不要把再每一个你会的相关琐碎技能都详细描述一遍了(比如：我会使用Word，会储存文件，包括储存成XX格式等)。实际上，你最好落眼于更大的宏观图纸，这样你才可能与面试官有一次精彩的对话。最后信心满满地走进面试房间，再昂首挺胸地走出来吧~</p><p><br></p>','2019-05-22 20:25:01');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`createTime`) values 
(4,'lq','202cb962ac59075b964b07152d234b70','2141416828@qq.com','2019-04-24 13:59:36');

/*Table structure for table `write_exercise` */

DROP TABLE IF EXISTS `write_exercise`;

CREATE TABLE `write_exercise` (
  `exercise_id` int(50) NOT NULL AUTO_INCREMENT,
  `exercise_name` text,
  `exercise_answer` text,
  `choice1` text,
  `choice2` text,
  `choice3` text,
  `choice4` text,
  `et_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

/*Data for the table `write_exercise` */

insert  into `write_exercise`(`exercise_id`,`exercise_name`,`exercise_answer`,`choice1`,`choice2`,`choice3`,`choice4`,`et_id`) values 
(94,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',35),
(95,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',35),
(96,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',35),
(97,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',35),
(98,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',35),
(99,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',35),
(100,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',35),
(101,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',35),
(102,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',35),
(103,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',35),
(104,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',35),
(106,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',35),
(107,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',35),
(108,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',35),
(109,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',35),
(111,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',35),
(112,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',35),
(113,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',35),
(114,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',35),
(115,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',35),
(116,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',35),
(117,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',35),
(118,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',35),
(119,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',36),
(120,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',36),
(121,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',36),
(122,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',36),
(123,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',36),
(124,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',36),
(125,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',36),
(126,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',36),
(127,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',36),
(128,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',36),
(129,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',36),
(130,'如何使成员变量m 被函数fun()直接访问','将private int m 改为 static int m ','将private int m 改为protected int m ','将private int m 改为 public int m ','将private int m 改为 static int m ','将private int m 改为 int m',36),
(131,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',36),
(132,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',36),
(133,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',36),
(134,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',36),
(135,'在XML中用于注释的符号是','hello','nihao','hi','good','.net',36),
(136,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',36),
(137,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',36),
(138,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',36),
(139,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',36),
(140,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',36),
(141,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',36),
(142,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',36),
(143,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',36),
(144,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',37),
(145,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',37),
(146,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',37),
(147,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',37),
(148,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',37),
(149,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',37),
(150,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',37),
(151,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',37),
(152,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',37),
(153,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',37),
(154,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',37),
(155,'如何使成员变量m 被函数fun()直接访问','将private int m 改为 static int m ','将private int m 改为protected int m ','将private int m 改为 public int m ','将private int m 改为 static int m ','将private int m 改为 int m',37),
(156,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',37),
(157,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',37),
(158,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',37),
(159,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',37),
(160,'在XML中用于注释的符号是','hello','nihao','hi','good','.net',37),
(161,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',37),
(162,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',37),
(163,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',37),
(164,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',37),
(165,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',37),
(166,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',37),
(167,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',37),
(168,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',37),
(169,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',38),
(170,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',38),
(171,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',38),
(172,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',38),
(173,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',38),
(174,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',38),
(175,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',38),
(176,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',38),
(177,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',38),
(178,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',38),
(179,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',38),
(180,'如何使成员变量m 被函数fun()直接访问','将private int m 改为 static int m ','将private int m 改为protected int m ','将private int m 改为 public int m ','将private int m 改为 static int m ','将private int m 改为 int m',38),
(181,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',38),
(182,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',38),
(183,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',38),
(184,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',38),
(185,'在XML中用于注释的符号是','hello','nihao','hi','good','.net',38),
(186,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',38),
(187,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',38),
(188,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',38),
(189,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',38),
(190,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',38),
(191,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',38),
(192,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',38),
(193,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',38),
(194,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',39),
(195,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',39),
(196,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',39),
(197,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',39),
(198,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',39),
(199,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',39),
(200,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',39),
(201,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',39),
(202,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',39),
(203,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',39),
(204,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',39),
(205,'如何使成员变量m 被函数fun()直接访问','将private int m 改为 static int m ','将private int m 改为protected int m ','将private int m 改为 public int m ','将private int m 改为 static int m ','将private int m 改为 int m',39),
(206,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',39),
(207,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',39),
(208,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',39),
(209,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',39),
(210,'在XML中用于注释的符号是','hello','nihao','hi','good','.net',39),
(211,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',39),
(212,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',39),
(213,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',39),
(214,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',39),
(215,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',39),
(216,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',39),
(217,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',39),
(218,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',39),
(219,'下面关于java.lang.Exception类的说法正确的是（）','继承自Throwable','继承自Throwable','Serialable','小王','我',40),
(220,'无状态会话Bean、有状态会话Bean、CMP与BMP中，哪一种Bean不需要自己书写连接数据库的代码？','CMP','BMP','CMP','有状态会话Bean','无状态会话Bean',40),
(221,'假设web应用的文档根目录为MyApp，那么可以从哪里找到database.jar文件？','MyApp\\WEB-INF\\lib目录下','MyApp\\WEB-INF目录下','MyApp\\images目录下','MyApp目录下','MyApp\\WEB-INF\\lib目录下',40),
(222,'从以下哪一个选项中可以获得Servlet的初始化参数？','ServletConfig','Servlet','ServletContext','ServletConfig','GenericServlet',40),
(223,'哪一个对象可以用于获得浏览器发送的请求？','HttpServletRequest','HttpServletRequest','HttpServletResponse','HttpServlet','Http',40),
(224,'运行jsp需要安装_______Web服务器？','tomcat、WebLogic','tomcat、WebLogic','tomcat','WebLogic','Apache',40),
(225,'如何取得数据源','JNDI','通过Http','通过ftp','JNDI','通过Connection对象',40),
(226,'下列哪一个接口定义了用于查找、创建和删除EJB实例','Home','Home','Remote','Local','Message',40),
(227,'下列哪个为JSP的隐含对象','page','env','page','jspinfo','context',40),
(228,'下面的那一个不属于MVC模式中的对象','Collection','Model','View','Collection','Controller',40),
(229,'哪一个不是EL定义的隐式对象？','attributes','cookie','pageContext','attributes','initParam',40),
(230,'如何使成员变量m 被函数fun()直接访问','将private int m 改为 static int m ','将private int m 改为protected int m ','将private int m 改为 public int m ','将private int m 改为 static int m ','将private int m 改为 int m',40),
(231,'Struts框架可以支持以下哪种程序开发语言？','Java','C','C++','Java','C#',40),
(232,'在Servlet处理请求的方式为','以线程的方式','以进程的方式','以程序的方式','以线程的方式','以响应的方式',40),
(233,'javax.Servlet的包中，属于类的是','GenericServlet','Servlet','GenericServlet','ServletRequest','ServletContext',40),
(234,'Http缺省的请求方法是','GET','PUT','GET','POST','TRACE',40),
(235,'在XML中用于注释的符号是','hello','nihao','hi','good','.net',40),
(236,'JDBC中，用于表示数据库连接的对象是','Connection','Statement','Connection','DriverManager','PreparedStatement',40),
(237,'用于调用存储过程的对象是','CallableStatemet','ResultSet','DriverManager','CallableStatemet','PreparedStatement',40),
(238,'实现现下列哪一种接口的对象，并不需要在web.xml文件内进行额外的设定，Servlet容器就能够回应该对象加入HTTP会话所发生的事件','HttpSessionBindingListener','ServletContextListener','HttpSessionListener','HttpSessionAttributeListener','HttpSessionBindingListener',40),
(239,'对于每一个网站访问用户都要访问的变量，应该将它设为________变量','Application','Session','Reques','Response','Application',40),
(240,'在MVC设计模式中，JavaBean的作用是','Model','Controller','Model','业务数据的封装','View',40),
(241,'在J2EE中属于Web层的组件有','JSP','HTML','EJB','Applet','JSP',40),
(242,'单元测试是在软件开发过程中的哪个阶段完成的？','实现','可行性研究和计划','概要设计','实现','使用和维护',40),
(243,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',40);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
