SET NAMES UTF8;
DROP DATABASE IF EXISTS music;
CREATE DATABASE music CHARSET=UTF8;
USE music;

/**用户信息**/
DROP TABLE IF EXISTS `music_user`;
CREATE TABLE `music_user`(
  `uim` INT PRIMARY KEY AUTO_INCREMENT,
  `uname` VARCHAR(32),
  `upwd` VARCHAR(32),
  `email` VARCHAR(64),
  `phone` VARCHAR(16),
  `avatar` VARCHAR(128),        
  `user_name` VARCHAR(32),      
  `gender` INT                  
);
INSERT INTO  `music_user` (`uim`,`uname`,`upwd`,`email`,`phone`,`avatar`,`user_name`,`gender`) VALUES
(1, '小花卷', '84822482', '937112374@qq.com', '13501234567', 'img/avatar/default.png', '张', '1');
(1, '22', '84822482', '937112374@qq.com', '13501234567', 'img/avatar/default.png', '张', '1');

--
-- 轮播表的结构 `music_index_carousel`
--

DROP TABLE IF EXISTS `articleinfo`;
CREATE TABLE `articleinfo` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '论文id',
  `atitle` varchar(255) DEFAULT NULL COMMENT '论文标题',
  `aauthor` varchar(255) DEFAULT NULL COMMENT '论文作者',
  `aaffiliation` tinytext COMMENT '论文单位',
  `asource` text COMMENT '论文期刊',
  `ayear` varchar(255) DEFAULT NULL COMMENT '论文年度',
  `aabstract` text COMMENT '论文摘要',
  `atask` varchar(255) DEFAULT NULL COMMENT '论文任务',
  `adatabase` varchar(255) DEFAULT NULL COMMENT '论文数据库',
  `admertics` varchar(255) DEFAULT NULL COMMENT '论文指标',
  `adscore` varchar(255) DEFAULT NULL COMMENT '论文指标值',
  `apdfsource` varchar(255) DEFAULT NULL COMMENT '论文的下载地址',
  `axmlfiles` varchar(255) DEFAULT NULL COMMENT '论文的结构目录文件',
  `atableJason` varchar(255) DEFAULT NULL COMMENT '论文的表格文件',
  `apicfiles` varchar(255) DEFAULT NULL COMMENT '论文的图片文件',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论文信息表';

-- ----------------------------
-- Records of articleinfo
-- ----------------------------
INSERT INTO `articleinfo` VALUES ('5', 'A review of citation recommendation: from textual content to enriched context', 'Shutian Ma ;Chengzhi Zhang ;· Xiaozhong Liu ', ' Department of Information Management Nanjing University of Science and Technology', 'Akadémiai Kiadó', '2020', 'Citation recommendation systems play an important role to alleviate the dilemma that scholar users spend a lot of time and experiences for literature survey. With the burgeoning computational models and open data movement, scientific repository can provide more evidence in support of recommendation. On the one hand, recommenders are applying better algorithms to understand the text of user queries and candidate citations. On the other hand, more types of data such as citation network and co-author relationship are aggregated to enrich the citation contextual information. The available data used for recommendation has been extended from textual content to enriched context. This review is conducted to identify the information and methods used for recommendations recently. We begin by introducing definitions of the task, recommending factors along with the corresponding problems and some application platforms. Then, we classify existing recommenders according to user query types and review representative methods for each type. We also elaborate on different strategies applied in three main stages of citation recommendation. Finally, a few open issues for future investigations are proposed.', ' citation recommendation', '', '', '', 'data/pdfFile/test_zcz/2020 - A review of citation recommendation - from textual content to enriched context.pdf', 'data/pdfFile_xml/test_zcz/2020 - A review of citation recommendation - from textual content to enriched context.tei.xml', 'data/pdfFile_table/test_zcz/2020 - A review of citation recommendation - from textual content to enriched context.json', 'data/pdfFile_xml/test_zcz/2020 - A review of citation recommendation - from textual content to enriched context_assets/2020 - A review of citation recommendation - from textual content to enriched context.zip');
INSERT INTO `articleinfo` VALUES ('6', 'Assessing books\' depth and breadth via multi-level mining on tables of contents', 'Chengzhi Zhang ;Qingqing Zhou ', 'Department of Information Management Nanjing University of Science and Technology ;Department of Information Management Nanjing University of Science and Technology Department of Network and New Media Nanjing Normal University ', 'Journal of Informetrics', '2020', 'Compared with journal articles, books can provide broader, deeper and more comprehensive information, and often have higher expertise and academic depth. However, most researches on book assessment focus on measuring academic value of books (e.g. citations analysis) or identifying attitudes of readers (e.g. book review mining), depth and breadth reflected by book contents is neglected. Therefore, in this paper, we measure books\' depth and breadth by mining books\' tables of contents, so as to enrich resources and methods for book assessment research, help users understand book contents quickly and improve efficiency of book selection. Specifically, we measured books\' depth and breadth based on books\' tables of contents via two levels: topic level and feature level. Firstly, we obtained topic-level metrics by identifying topics expressed in tables of contents and calculating topic distributions. Then, we got feature-level results via feature extraction and feature distribution calculation. Finally, we compared depth and breadth metrics and other book assessment metrics. Experimental results reveal that, books\' depth and breadth at two levels are different, and substantial differences between disciplines and book types are obvious. In addition, books\' depth and breadth can provide alternative and supplementary information for assessing multi-dimensional values of books.', 'multi-level mining;Assessing books\' depth and breadth', '', '', '', 'data/pdfFile/test_zcz/2020 - Assessing books depth and breadth via multi-level mining on tables of contents.pdf', 'data/pdfFile_xml/test_zcz/2020 - Assessing books depth and breadth via multi-level mining on tables of contents.tei.xml', 'data/pdfFile_table/test_zcz/2020 - Assessing books depth and breadth via multi-level mining on tables of contents.json', 'data/pdfFile_xml/test_zcz/2020 - Assessing books depth and breadth via multi-level mining on tables of contents_assets/2020 - Assessing books depth and breadth via multi-level mining on tables of contents.zip');
INSERT INTO `articleinfo` VALUES ('7', 'Teaching Machines to Read and Comprehend', 'Karl Moritz ;Hermann ;Tomáš Koiský ;Edward Grefenstette ;Lasse Espeholt ;Will Kay ;Mustafa Suleyman ;Phil Blunsom ;Google Deepmind ', 'University of Oxford ', 'Fourth International Conference on Recent Trends in Computer Science & Engineering', '2016', 'Teaching machines to read natural language documents remains an elusive challenge. Machine reading systems can be tested on their ability to answer questions posed on the contents of documents that they have seen, but until now large scale training and test datasets have been missing for this type of evaluation. In this work we define anew methodology that resolves this bottleneck and provides large scale supervised reading comprehension data. This allows us to develop a class of attention based deep neural networks that learn to read real documents and answer complex questions with minimal prior knowledge of language structure.', 'Machines Read and Comprehend', '', '', '', 'data/pdfFile/upload_20200317172320517/1506.03340.pdf', 'data/pdfFile_xml/upload_20200317172320517/1506.03340.tei.xml', 'data/pdfFile_table/upload_20200317172320517/1506.03340.json', 'data/pdfFile_xml/upload_20200317172320517/1506.03340_assets/1506.03340.zip');
INSERT INTO `articleinfo` VALUES ('8', 'THE VARIATIONAL FAIR AUTOENCODER', 'Christos Louizos ;Kevin Swersky ;Yujia Li ;× ;Max Welling ;† ‡ ;Richard Zemel ;', 'Canadian Institute for Advanced Research (CIFAR) University of California ;Department of Computer Science Machine Learning Group University of Amsterdam University of Toronto ', 'ICLR 2016', '2016', 'We investigate the problem of learning representations that are invariant to certain nuisance or sensitive factors of variation in the data while retaining as much of the remaining information as possible. Our model is based on a variational autoencoding architecture Rezende et al., 2014) with priors that encourage independence between sensitive and latent factors of variation. Any subsequent processing, such as classification, can then be performed on this purged latent representation. To remove any remaining dependencies we incorporate an additional penalty term based on the \"Maximum Mean Discrepancy\" (MMD) (Gretton et al., 2006) measure. We discuss how these architectures can be efficiently trained on data and show in experiments that this method is more effective than previous work in removing unwanted sources of variation while maintaining informative latent representations.', 'autoencoder', '', '', '', 'data/pdfFile/upload_20200317172320517/1511.00830.pdf', 'data/pdfFile_xml/upload_20200317172320517/1511.00830.tei.xml', 'data/pdfFile_table/upload_20200317172320517/1511.00830.json', 'data/pdfFile_xml/upload_20200317172320517/1511.00830_assets/1511.00830.zip');
INSERT INTO `articleinfo` VALUES ('9', 'Improved Relation Classification by Deep Recurrent Neural Networks with Data Augmentation', 'Yan Xu ;Ran Jia ;Lili Mou ;Ge Li ;Yunchuan Chen ;Yangyang Lu ;Zhi Jin ', 'Ministry of Education Institute of Software Key Laboratory of High Confidence Software Technologies (Peking University) Peking University ;University of Chinese Academy of Sciences ', '', '', 'Nowadays, neural networks play an important role in the task of relation classification. By designing different neural architectures, researchers have improved the performance to a large extent in comparison with traditional methods. However, existing neural networks for relation classification are usually of shallow architectures (e.g., one-layer convolutional neural networks or recurrent networks). They may fail to explore the potential representation space in different abstraction levels. In this paper, we propose deep recurrent neural networks (DRNNs) for relation classification to tackle this challenge. Further, we propose a data augmentation method by leveraging the directionality of relations. We evaluated our DRNNs on the SemEval-2010 Task 8, and achieve an F 1 -score of 86.1%, outperforming previous state-of-the-art recorded results.', '', '', '', '', 'data/pdfFile/upload_20200317172320517/1601.03651.pdf', 'data/pdfFile_xml/upload_20200317172320517/1601.03651.tei.xml', 'data/pdfFile_table/upload_20200317172320517/1601.03651.json', 'data/pdfFile_xml/upload_20200317172320517/1601.03651_assets/1601.03651.zip');
INSERT INTO `articleinfo` VALUES ('10', 'A Review of Sentimental Analysis on Social Media Application', 'Akankasha ;Bhavna Arora ', '', '', '', 'Social media locales (akin Twitter, Facebook, microblogs etc.) area global platform to share interesting ideas or news, comments, and reviews. However, feedbacks via sharing of thoughts, feelings, and comments about various products and services become key characteristics on which business in the contemporary world rely on. These are called as sentiments on social media. An attitude, believe, or acumen driven by feeling collectively called sentiment. Sentiment analysis otherwise called as opinion mining studies individuals\' sentiments pointing certain elements. Web is a resourceful place for sentiment information. Difficulty arises when the phrases containing homographs are encountered. In this paper, a brief review of work done on sentiment analysis on social media applications along with various phases and levels of sentiment analysis has been discussed.', '', '', '', '', 'data/pdfFile/senti20200320zip_20200320210752712/A Review of Sentimental Analysis on Social Media Application.pdf', 'data/pdfFile_xml/senti20200320zip_20200320210752712/A Review of Sentimental Analysis on Social Media Application.tei.xml', 'data/pdfFile_table/senti20200320zip_20200320210752712/A Review of Sentimental Analysis on Social Media Application.json', 'data/pdfFile_xml/senti20200320zip_20200320210752712/A Review of Sentimental Analysis on Social Media Application_assets/A Review of Sentimental Analysis on Social Media Application.zip');
INSERT INTO `articleinfo` VALUES ('11', 'Review of Various Sentiment Analysis Techniques of Twitter Data', 'Bipin Gupta ', 'International Journal of Computer Science and Mobile Computing A Monthly Journal of Computer Science and Information Technology RIMT University Gobindgarh ', '77 Available Online at www.ijcsmc.com RIMT University Gobindgarh Mr. Ankur Gupta Assistant Professor ankurgupta@rimt.ac.i', 'August 2019', 'A sentiment is known as an attitude or judgments towards any particular event or person. Opinion mining is known as the extraction of these sentiments or opinions from given data. This technique also helps in analyzing the kinds of sentiments that people have towards specific objects or services. The best source available to collect the sentiments is internet. Twitter is known as asocial networking platform that is accessed by users for posting their views online. Due to the unique properties of Tweets, there is an increase in new challenges. Higher analysis studies are needed in case of sentiments as compared to other domain applications due to their complexities. Analyzing the sentiments of product reviews for Amazon is the focus of this research. Classification as well as feature extraction is applied such that sentiment analysis can be performed.', 'Sentiment Analysis', '', '', '', 'data/pdfFile/senti20200320zip_20200320210752712/Review_of_Various_Sentiment_Analysis_Tec-2019.08.pdf', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Review_of_Various_Sentiment_Analysis_Tec-2019.08.tei.xml', 'data/pdfFile_table/senti20200320zip_20200320210752712/Review_of_Various_Sentiment_Analysis_Tec-2019.08.json', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Review_of_Various_Sentiment_Analysis_Tec-2019.08_assets/Review_of_Various_Sentiment_Analysis_Tec-2019.08.zip');
INSERT INTO `articleinfo` VALUES ('12', 'SENTIMENT ANALYSIS ON TWITTER USING STREAMING API', 'M Trupthi ;Suresh Pabboju ;G Narasimha ;;;', 'Computer Science Department Information Technology Department, CBIT JNTUH Telangana State ;Computer ScienceDepartment JNTUH, Jagital Telangana State ', '', '', 'In general, opinion mining has been used to knowabout what people think and feel about their products and services in social media platforms. Millions of users share opinions on different aspects of life everyday. Spurred by that growth, companies and media organizations are increasingly seeking way to mine information. It requires efficient techniques to collect a large amount of social media data and extract meaningful information from them. This paper aims to provide an interactive automatic system which predicts the sentiment of the review/tweets of the people posted in social media using hadoop, which can process the huge amount of data.Till now, there are few different problems predominating in this research community, namely, sentiment classification, feature based classification and handling negations. A precise method is used for predicting sentiment polarity, which helps to improve marketing strategies. This paper deals with the challenges that appear in the process of Sentiment Analysis, real time tweets areconsidered as they are rich sources of data for opinion mining and sentiment analysis. This paper focus on Sentiment analysis,Feature based Sentiment classification and Opinion Summarization.\nThe main objective of this paper is to perform real time sentimental analysis on the tweets that are extracted from the twitter and provide time based analytics to the user.', '', '', '', '', 'data/pdfFile/senti20200320zip_20200320210752712/SENTIMENT ANALYSIS ON TWITTER USING STREAMING API.pdf', 'data/pdfFile_xml/senti20200320zip_20200320210752712/SENTIMENT ANALYSIS ON TWITTER USING STREAMING API.tei.xml', 'data/pdfFile_table/senti20200320zip_20200320210752712/SENTIMENT ANALYSIS ON TWITTER USING STREAMING API.json', 'data/pdfFile_xml/senti20200320zip_20200320210752712/SENTIMENT ANALYSIS ON TWITTER USING STREAMING API_assets/SENTIMENT ANALYSIS ON TWITTER USING STREAMING API.zip');
INSERT INTO `articleinfo` VALUES ('13', 'Sentiment Analysis:A Comparative Study On Different Approaches', 'Devika M D ;Sunitha C ;Amal Ganesh ', 'Department of CSE Vidya Academy of Science and Technology ', 'Fourth International Conference on Recent Trends in Computer Science & Engineering', '2016', 'Sentiment analysis (SA) is an intellectual process of extricating user\'s feelings and emotions. It is one of the pursued field of Natural Language Processing (NLP). The evolution of Internet based applications has steered massive amount of personalized reviews for various related information on the Web. These reviews exist in different forms like social Medias, blogs, Wiki or forum websites. Both travelers and customers find the information in these reviews to be beneficial for their understanding and planning processes. The boom of search engines like Yahoo and Google has flooded users with copious amount of relevant reviews about specific destinations, which is still beyond human comprehension. Sentiment Analysis poses as a powerful tool for users to extract the needful information, as well as to aggregate the collective sentiments of the reviews. Several methods have come to the limelight in recent years for accomplishing this task. In this paper we compare the various techniques used for Sentiment Analysis by analyzing various methodologies.', 'Sentiment Analysis', '', '', '', 'data/pdfFile/senti20200320zip_20200320210752712/Sentiment Analysis-A Comparative Study On Different Approaches.pdf', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Sentiment Analysis-A Comparative Study On Different Approaches.tei.xml', 'data/pdfFile_table/senti20200320zip_20200320210752712/Sentiment Analysis-A Comparative Study On Different Approaches.json', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Sentiment Analysis-A Comparative Study On Different Approaches_assets/Sentiment Analysis-A Comparative Study On Different Approaches.zip');
INSERT INTO `articleinfo` VALUES ('14', 'Twitter Sentiment Analysis using Deep Learning Methods', 'Adyan Marendra Ramadhani ;Hong Soon Goo ', 'Department of Management Information Systems Dong-A University Department of Management Information Systems Dong-A University ', '', '', 'The social media has immense and popularity among all the services today. Data from SNS (Social Network Service) can be used fora lot of objectives such as prediction or sentiment analysis. Twitter is a SNS that has a huge data with user posting, with this significant amount of data, it has the potential of research related to text mining and could be subjected to sentiment analysis. But handling such a huge amount of unstructured data is a difficult task, machine learning is needed for handling such huge of data. Deep learning is of the machine learning method that use the deep feed forward neural network with many hidden layers in the term of neural network with the result of the experiment about 75%', '', '', '', '', 'data/pdfFile/senti20200320zip_20200320210752712/Twitter Sentiment Analysis using Deep Learning Methods.pdf', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Twitter Sentiment Analysis using Deep Learning Methods.tei.xml', 'data/pdfFile_table/senti20200320zip_20200320210752712/Twitter Sentiment Analysis using Deep Learning Methods.json', 'data/pdfFile_xml/senti20200320zip_20200320210752712/Twitter Sentiment Analysis using Deep Learning Methods_assets/Twitter Sentiment Analysis using Deep Learning Methods.zip');



















DROP TABLE IF EXISTS `music_index_carousel`;
CREATE TABLE music_index_carousel (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- 转存表中的数据 `music_index_carousel`
--

INSERT INTO `music_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'img/index/banner1.jpg', '轮播广告商品1', 'music_details.html?lid=28'),
(2, 'img/index/banner2.jpg', '轮播广告商品2', 'music_details.html?lid=19'),
(3, 'img/index/banner3.jpg', '轮播广告商品3', 'lookforward.html'),
(4, 'img/index/banner4.jpg', '轮播广告商品4', 'lookforward.html');

--
-- 每日推荐的表的结构 `music_index_recommend`
--

DROP TABLE IF EXISTS `music_index_recommend`;
CREATE TABLE `music_index_recommend` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `count` decimal(10) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `music_index_recommend`
--

INSERT INTO `music_index_recommend` (`pid`, `title`, `details`, `pic`, `count`, `href`) VALUES
(1, '我本是很黯淡的人，是你给了我满天星光', '愿我爱的人和爱我的人隔山隔水割不断牵念', 'img/index/推荐1.jpg', '112', 'recommend_details.html?lid=1'),
(2, '【乐队参观指南】风吹进了你的梦 ', '突如其来的美梦，是你离去时卷起的泡沫', 'img/index/推荐1.jpg', '22', 'recommend_details.html?lid=2'),
(3, '我本是很黯淡的人，是你给了我满天星光', '愿我爱的人和爱我的人隔山隔水割不断牵念', 'img/index/推荐2.jpg', '53', 'recommend_details.html?lid=3'),
(4, '因为懂得才有共鸣', '民谣是一种诉说，包含了一种朴素的情感', 'img/index/推荐3.jpg', '49', 'recommend_details.html?lid=4'),
(5, '负面情绪的AD', '当你能一个人默默地消化掉负面情绪的时候，你就真的长大了', 'img/index/推荐4.jpg', '62', 'recommend_details.html?lid=5'),
(6, '抽烟的人永远闻不到自己身上的烟味', '我有一壶酒，足以慰风尘', 'img/index/推荐5.jpg', '51', 'recommend_details.html?lid=6'),
(7, ' 住在风里的诗句 ', '民谣是最安静的角落，民谣是一种诉说', 'img/index/推荐6.jpg', '57', 'recommend_details.html?lid=7'),
(8, ' 你说世界很大，没必要总分真假 ', '民谣是最安静的角落，民谣是一种诉说', 'img/index/推荐7.jpg', '57', 'recommend_details.html?lid=8');





-- 详情页备用
-- INSERT INTO `music_index_recommend` (`pid`, `title`, `details`, `pic`, `count`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
-- (1, '我本是很黯淡的人，是你给了我满天星光', '愿我爱的人和爱我的人隔山隔水割不断牵念', 'img/index/recommend1.jpg', '112', 'recommend_details.html?lid=1', 1, 1, 1),
-- (2, '【乐队参观指南】风吹进了你的梦 ', '突如其来的美梦，是你离去时卷起的泡沫', 'img/index/recommend2.jpg', '22', 'recommend_details.html?lid=2', 2, 2, 2),
-- (3, '我本是很黯淡的人，是你给了我满天星光', '愿我爱的人和爱我的人隔山隔水割不断牵念', 'img/index/recommend3.jpg', '53', 'recommend_details.html?lid=3', 3, 3, 3),
-- (4, '因为懂得才有共鸣', '民谣是一种诉说，包含了一种朴素的情感', 'img/index/recommend4.jpg', '4966.00', 'recommend_details.html?lid=4', 4, 4, 4),
-- (5, '负面情绪的AD', '当你能一个人默默地消化掉负面情绪的时候，你就真的长大了', 'img/index/recommend5.jpg', '62', 'recommend_details.html?lid=5', 5, 5, 5),
-- (6, '抽烟的人永远闻不到自己身上的烟味', '我有一壶酒，足以慰风尘', 'img/index/recommend6.jpg', '51', 'recommend_details.html?lid=6', 0, 0, 0),
-- (7, ' 住在风里的诗句 ', '民谣是最安静的角落，民谣是一种诉说', 'img/index/recommend7.jpg', '57', 'recommend_details.html?lid=7', 1, 1, 1);
-- -- (8, ' 住在风里的诗句 ', '民谣是最安静的角落，民谣是一种诉说', 'img/index/recommend7.jpg', '57', 'recommend_details.html?lid=8', 8, 8, 8);
-- -- (8, '爱而不得的都是民谣', '民谣是最安静的角落，民谣是一种诉说', 'img/index/recommend8.jpg', '57', 'recommend_details.html?lid=8', 0, 0, 0);
