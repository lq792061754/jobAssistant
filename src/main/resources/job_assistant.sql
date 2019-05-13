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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`comment_id`,`post_id`,`commenter_id`,`comment_content`,`comment_time`,`comment_note`,`comment_flag`) values 
(30,23,4,' <p>新评论<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/6d/yx_thumb.gif\"><br></p><p><br></p>','2019-05-13 23:10:24',2,'1');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `exercise_topic` */

insert  into `exercise_topic`(`et_id`,`et_name`,`et_time`,`et_from`,`et_kind`,`et_heat`) values 
(34,'2019百度校招','2019-05-09','百度','JAVA',19),
(35,'2018bilibili校招','2018-11-14','网络','JAVA',2),
(36,'2019417我今天的题','2019-05-02','企业','JAVA',5);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `job_post` */

insert  into `job_post`(`post_id`,`post_title`,`writer_id`,`post_content`,`pub_time`,`post_heat`,`post_comments_num`,`post_note`) values 
(23,'算法菜鸟的春招之路 ',4,'<br><p>不想干活了，就来总结一下这两个月的面试，算是春招告一段落吧，其实就是 hun gong shi。三月四月基本上每天就是那种早7晚12的节奏，拿的offer都没有什么太大的分量，大佬们笑笑就行</p><span>我也知道自己的菜，非常感谢那些知道我菜还给了我offer的面试官，也很感谢挂了我的面试官，感谢他们让我清楚得意识到自己到底有多么菜<span></span></span><p>  首先介绍一下，我本硕都不是科班，只是专业跟cs或多或少有一些关系，本科学过数据结构，计算机网络什么的，Java也学了，但全忘了，现在完全不记得了，研一零零散散有看一些算法的东西，但真正认真学是研二开始的。刷leecode大概是去年11月开始的，当时是一个同学带我刷的，一天两个左右，到一月份好像做了100多个吧，然后寒假把剑指offer刷了一遍，准备面试的这两个月狂刷leecode，现在到300了，后面有空还是偶尔会刷一刷的，怎么说，我觉得刷题还是挺有意思的，国内大厂一般手撕代码不是很难，都比较基础，一般刷剑指offer就够了，但是自己想再提升一下还是得多刷leecode，多总结，刷多了会发现很多都是套路~我面试过程中可能运气好到爆遇到的写代码的题目都比较常见，并没有出现hard难度的，在此感谢各位面试官爸爸们高抬贵手放了我一马~另外，我没有顶会paper，我的水paper都不好意思往简历上写，怕面试官看了直接不面我了</p><span></span><p>  好了，废话不多说了，我前前后面的有爱奇艺，bilibili，oppo北京研究院，华为，平安科技，滴滴，360，腾讯，商汤，蘑菇街，招行卡中心，百度，阿里 </p><p>  招行卡中心和百度做了笔试后没有给面试机会，其实这两个是我最想去的地方</p><span><span></span>希望秋招可以偏爱我一下下</span><p>  腾讯提前批二面挂了，阿里主管一直不面我，我放弃了，是我太菜没有修福报的机会</p><span></span><span>这些面试过去太久了，我已经记不清到底是第几面的问题了，下面我就写在一起吧~~由于我可能废话比较多，每次讲两个项目就大概花了半个小时，所以，哈哈哈，导致后面面试官问的其他东西都不多<span>我也不是故意拖延时间的，只是在讲项目的过程中面试官一延申就一直说下去了~~</span></span><span>爱奇艺：</span><p>  主要是问了项目，但并没有很细，就我把每个项目讲一遍，他们都没有问其他啥的~下面就是基础了： </p><p>  1.解释word2vec（这个我真的是5次有3次都会被问到，我觉得想突出你对它掌握得很好得话得知道层次softmax每次到底是怎么更新参数的，skip gram和cbow的优缺点，负例采样和层次化softmax各自的优缺点，以及word2vec的缺点等等) </p><p>  2.手推LR </p><p>  3.问了SVM的原理，但没有问的很细 </p><p>  3.讲决策树，然后我就巴拉巴拉从（ID3,C4.5到CART，再随机森林，GBDT和XGBOOST，感觉挺尴尬的，我就一个人在那说，面试官就看着我，搞的我都不知道我是不是说太多了） </p><p>  4.问了条件随机场，我说我就只知道一点点，面试官很和善得说，不知道没关系，你简历里面也没有写，他说他就随便问问然后我就把自己理解的那一点跟他说了，讲了下随机条件场的原理，</p><span>对比了下条件随机场和隐马</span><p>  5.知道敏感哈希算法么，太菜了我又只知道一点点，就只说了自己知道的东西，面试官还是笑眯眯的，面试体验还是很好的。 </p><p>  bilibili： </p><p>  1.问项目，问attention机制，手写attention的公式，手推最小二乘 </p><p>  2.有个面试官是主管，偏向业务比较多，所以针对有一个项目问了很多细节的东西，真的超级细，细到我有一个特征是怎么做平滑处理的，还好是我自己做的，哈哈哈，淡定应对 </p><p>  3.写代码，判断平衡二叉树，一个是字符串匹配（用KMP) </p><p>  其余的问题不记得了 </p><p>  Oppo北京研究院： </p><p>  1.问项目，讲了其中两个 </p><p>  2.讲LR，面试官要求LR讲得特别仔细，就那种LR是什么假设，损失函数是怎么回事，怎样更新参数什么的 </p><p>  3.问知道哪些优化算法 </p><p>  4.问了一个斐波那契数列的题，说了两种方法后，面试官问还有没有用线性代数优化的方法，我当时一懵，只知道剑指offer上有最后一种方法，但并没有仔细看，然后在面试官的提示下大概完成了 </p><p>  5.问了哈希表的原理，解决哈希冲突的方式，哈希函数的选择，常用的哈希函数 </p><p>  好像还有其他问题，但也忘了</p><span></span><span>华为：</span><span>1.真的是玄学面试，问了简历中两个项目</span><span>2.问了word2vec原理</span><span>3.代码题是 two sum（我听到这个题的时候，what，怎么这么简单<span>，跳台阶，铺瓷砖</span></span><span><span>然后就是聊人生啦！真是玄学面</span></span><span><span>平安科技：</span></span><span><span>平安科技这个是他们那个智能引擎部的</span></span><span><span>1.依然讲项目</span></span><span><span>2.问了word2vec原理</span></span><span><span>3.问了几个Linux命令</span></span><span><span>4.写了旋转数组的查找</span></span><p>  其余的不记得了，这个面试没什么印象 </p><p>  滴滴： </p><p>  1.问项目 </p><p>  2.数组中查找中位数（有两种方式，堆或者借用快排中的partition的思想) </p><p>  3.二叉树的前序遍历，非递归 </p><p>  4.问了几个sql </p><p>  啊，其余的我又不记得了，哈哈哈，原谅lz的记忆力差3</p><span></span><span></span><span></span><span>60 提前批：</span><span>1.问项目</span><span>2.代码题是链表相乘，还有一个是类似于剑指offer上那个 min stack一样的，思想是一样</span><span>3.讲一下优化算法</span><span>4.讲word2vec</span><span>5.讲知道的优化算法</span><p>  这是lz第一次视频面，面试官小哥哥超级羞涩的，竟然全程不看我，就偶尔抬头看一下我，然后我就不知道他在那低头看啥了，搞得我都不知道眼睛往哪放了</p><span></span><span></span><span>腾讯：</span><p>  1.讲项目，小哥哥问的很细，在项目中比较关注我为什么要这么做，这么做提升的地方在哪 </p><p>  2.问了LSTM为什么可以解决梯度弥散的问题 </p><p>  3.因为我的项目是做文本匹配的，所以根据业务场景进行了一些提问 </p><p>  4.问了transformer </p><p>  5.前面就聊了快一个小时了，然后面试官小哥哥说了句，嗯，不错，挺好的，很好，哈哈哈，然后，就给了我个链接让我写了一个题，是很简单得dp，当时写的时候太紧张，代码有点问题，小哥哥说，没事，我知道你要表达得意思，这个不要 </p><p>  6.虽然已经快一个小时了，但小哥哥还是详细得给我说了他们组的业务，挂了电话后他又微信补充了一点他们组的业务，嗯，面试官小哥哥简直太好了，疯狂打call</p><span></span><span></span><span>星星眼<span></span><span></span><span>（后来其他人帮我看了面试记录，这个小哥哥给的面试评价特别好，嘻嘻嘻，还是很开心的)</span></span><span>一面很好，但是二面得时候，那个主管，大概就是气场不合吧<span>问的问题莫名其妙，在讲项目得时候他问了对于bad case是怎么处理得，说了后他问怎么做数据增强，我又说了一些常见办法后那个人又说，如果现在我的文本数据是加密得看不到具体内容要怎么做数据增强，what，我一脸懵逼，你都看不到内容我怎么给你做数据增强，然后我就知道大概他在无理取闹了吧，然后后面也没有写代码匆匆结束了，结束后我就知道凉凉了，然后当了一周备胎凉了</span></span><span><span>商汤：</span></span><span><span>1.讲项目，面试官说，你要我说出在项目中的创新点，他要听到不一样的地方</span></span><span><span>2.讲了word2vec</span></span><span><span>3.讲了语言模型的发展历史</span></span><span><span>4.问了平常使用tf所踩的坑，<span></span><span></span><span>面试官说他想找点欢乐，看看大家都踩了哪些坑</span></span></span><p>  还有其他的一些问题，但没什么印象了 </p><span><span><span>蘑菇街：</span></span></span><span><span><span>1.讲项目</span></span></span><span><span><span>2.代码题是写编辑距离，二面写的是大数相加</span></span></span><span><span><span>3.问优化算法，问word2vec，问XGBOOST，问BN，问Dropout</span></span></span><span><span><span>4.问Transformer</span></span></span><span><span><span>阿里：</span></span></span><span><span><span>我阿里的面试有一个项目扣的特别特别细，因为那是一个天池的比赛，面试官非常关注细节，问为什么要这样做，为什么要这样设计特征，这样做的好处在哪，大概每次跟面试官讲这个项目就讲了20多分钟，除了这个项目就还具体讲了另一个项目，当然都只是简单说了一下</span></span></span><span><span><span>1.代码上撕了一个好像是将二叉树转成链表的题</span></span></span><span><span><span>2.基础问了欠拟合和过拟合，从方差和偏差角度比较bagging和boosting</span></span></span><span><span><span>3.LSTM为什么可以缓解梯度消失</span></span></span><span><span><span>4.结构风险，经验风险</span></span></span><span><span><span>5.哈希表的原理</span></span></span><span><span><span>我明明记得阿里有次我面了一个半小时，结果怎么只记得这些问题了，我记得好像在我讲项目的过程中提了很多问题<span></span><span></span><span>然后阿里现在一直是面试中，应该是我优先级不够再加上面试官特别忙，所以结果应该就是淹死在备胎池里面了<span></span><span></span></span></span></span></span><p>  这些面试隔了很久，我每次面试完也没有做笔记什么的，现在能想起来得就只有这些了，大家参考参考就好，大佬们笑笑就好~ </p><p>  怎么说，说点自己的感想吧，从去年入算法坑到现在，真的是既有运气又有汗水，入坑以来每天都在学习，狂补知识，因为知道我已经落后一大截了，所以只有更加努力，就今年过年我在家总共呆的时间不到一周就滚回学校学习了，家人送我去车站本来我妈要下车把我送进去，我怕自己忍不住哭了赶紧把我妈赶上了车，不让送我，然后自己坐在那候车的时候眼泪就掉了下来，真的是当时超级心酸，觉得特别愧疚，感觉自己陪家人的时间太少了，以后一定会多陪陪他们</p><span></span><span></span><p>虽然今年算法爆掉了，各路神仙都有，像我这种渣渣自然是没有什么竞争力的，但是呢，自己还是不后悔入了这个坑，自己选的路除了笑着走下去，还能怎么办呢</p><span></span><span></span><span>对于春招，我可能真的是运气好，因为貌似我并没有遇到特别多特别奇葩的的问题，问题都比较常见，真的是很感谢各位面试官爸爸~</span><span>对于找工作呢，我觉得实力和运气各占一半吧，面挂了每个人都会特别难受特别是自己在意的公司，但是呢，路还是要走下去的，生活还是要继续的，笑一笑还可以继续下去，爱笑的人运气不会太差！（哈哈哈，其实腾讯挂了我也很难受，大概难过了两天吧<span></span><span></span><span>后来调整了，我也希望我也可以越来越淡然，有的时候结果并没有那么重要，努力的过程是最重要的<span></span><span></span><span>要是不好好调整心态，秋招我可能真的要被虐自闭了）为什么面挂了大家会难受呢，有时候就是一种执念，哈哈哈，大家都放过自己，<span>每天开心最重要啦~~~要这样告诉自己，</span>失去这一个offer可能是因为老天想给你另外一个更好的offer哦~<span></span><span></span><span></span></span></span></span><span><span><span>另外，我mentor今天跟我说，他招人从来不看paper，他说他觉得未来两三年内，对于算法岗位，肯定是经验比paper重要，因为越来越多的学校开始开设AI的课程，现在发顶会的越来越多，也越来越不值钱了，而AI最后始终是要落地的，所以还是工程能力最重要~~~嘿嘿嘿，感觉为没有paper在算法坑里看不到光明的算法宝宝点燃了希望，当然他的话仅供参考，毕竟BAT大厂很多面试官还是看paper的，我这种mentor毕竟是少数~~~</span></span></span><p>  祝大家都可以拿到想要的offer啦~~~大家都加油！ </p><p><br></p>','2019-05-13 21:04:21',23,2,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `reply` */

insert  into `reply`(`reply_id`,`comment_id`,`replier_id`,`reply_content`,`reply_time`,`reply_note`) values 
(19,29,6,' 7890','2019-05-13 21:20:11',NULL),
(20,30,4,' 是的','2019-05-13 23:22:23',NULL),
(21,30,4,' 哈哈哈','2019-05-13 23:44:34',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`email`,`createTime`) values 
(4,'lq','202cb962ac59075b964b07152d234b70','2141416828@qq.com','2019-04-24 13:59:36'),
(5,'天际','202cb962ac59075b964b07152d234b70','2141416828@qq.com','2019-04-24 14:36:24'),
(6,'刘皇叔','202cb962ac59075b964b07152d234b70','2141416828@qq.com','2019-05-07 20:54:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

/*Data for the table `write_exercise` */

insert  into `write_exercise`(`exercise_id`,`exercise_name`,`exercise_answer`,`choice1`,`choice2`,`choice3`,`choice4`,`et_id`) values 
(88,'你适合什么职业？','我','小明','小红','小王','我',34),
(89,'你好吗？','好','不好','还行','可以','不错',34),
(90,'你饿吗？','不饿','饿','饿死了','额','(⊙o⊙)…',34),
(91,'你贵姓？','刘','找','钱','孙','里',34),
(92,'天气如何？','晴','有雨','有血','有误','油封',34),
(93,'温度如何？','25度','23°','0度','1度','3度',34),
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
(143,'HttpServlet中，用来处理POST请求的方法是','doPost','doHead','doPost','doGet','doPut',36);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
