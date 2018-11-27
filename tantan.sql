-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '登录账号',
  `nick` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `fullname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `isvip` int(3) NOT NULL DEFAULT '0' COMMENT '是否开通会员',
  `sex` varchar(50) NOT NULL DEFAULT '' COMMENT '性别',
  `birthday` varchar(50) NOT NULL DEFAULT '' COMMENT '生日',
  `constellation` varchar(50) NOT NULL DEFAULT '' COMMENT '星座',
  `photourl` varchar(255) DEFAULT '' COMMENT '头像',
  `signname` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `user_type` int(3) NOT NULL DEFAULT '0' COMMENT '行业分类',
  `work_type` int(3) NOT NULL DEFAULT '0' COMMENT '工作领域',
  `company` varchar(255) DEFAULT '' COMMENT '公司名称',
  `areaid` int(3) NOT NULL DEFAULT '0' COMMENT '所在地区',
  `frequent` varchar(255) DEFAULT '' COMMENT '常去地点',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码', 
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `edittime` datetime DEFAULT NULL COMMENT '编辑时间',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录ip',
  `logintime` datetime DEFAULT NULL COMMENT '登录时间',
  `lastlogintime` datetime DEFAULT NULL COMMENT '上次登录时间',
  PRIMARY KEY (`userid`)
 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户表';



-- ----------------------------
-- Table structure for `t_hobby_ques`
-- ----------------------------
DROP TABLE IF EXISTS `t_hobby_ques`;
CREATE TABLE `t_hobby_ques` (
  `itemid` int(10) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `userid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `hobby_id`  varchar(255) NOT NULL DEFAULT '' COMMENT '兴趣分类id:{兴趣内容id}，（如：1:{2,3,4}）',
  `hobby_value`  varchar(255) NOT NULL DEFAULT '' COMMENT '兴趣分类名称:{兴趣内容，兴趣内容}，（如：运动:{跑步,篮球,单车}）',
  `question_id` int(10) NOT NULL DEFAULT '0' COMMENT '问题id',
  `question` varchar(255) DEFAULT '' COMMENT '问题内容',
  `answer` varchar(255) DEFAULT '' COMMENT '答案',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
 
  PRIMARY KEY (`itemid`)
 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='兴趣爱好 问题表';




-- ----------------------------
-- Table structure for `t_photoes`
-- ----------------------------
DROP TABLE IF EXISTS `t_photoes`;
CREATE TABLE `t_photoes` (
  `itemid` int(10) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `userid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `photo_url`  varchar(255) NOT NULL DEFAULT '' COMMENT '图片路径',
  `video_url`  varchar(255) NOT NULL DEFAULT '' COMMENT '视频路径',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
 
  PRIMARY KEY (`itemid`)
 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='相册表';





-- ----------------------------
-- Table structure for `t_mylike`
-- ----------------------------
DROP TABLE IF EXISTS `t_mylike`;
CREATE TABLE `t_mylike` (
  `itemid` int(10) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `userid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `like_userid` int(10) NOT NULL DEFAULT '0'  COMMENT '喜欢的id',
  `like_status` int(10) NOT NULL DEFAULT '0'  COMMENT '状态（喜欢，超级喜欢）',
  `video_url`  varchar(255) NOT NULL DEFAULT '' COMMENT '视频路径',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
 
  PRIMARY KEY (`itemid`)
 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='我喜欢的表';





-- ----------------------------
-- Table structure for `t_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `t_dictionary`;
CREATE TABLE `t_dictionary` (
  `itemid`      int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `dic_name`    varchar(50) NOT NULL COMMENT '名称',
  `parentid`    int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort`      	int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `remark`      varchar(30)   DEFAULT '' COMMENT '备注',

  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=100100 DEFAULT CHARSET=utf8 COMMENT='字典表';

