CREATE TABLE IF NOT EXISTS `wp_forms` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
`title`  varchar(255) NOT NULL  COMMENT '标题',
`cTime`  int(10) UNSIGNED NULL  COMMENT '发布时间',
`token`  varchar(255) NULL  COMMENT 'Token',
`password`  varchar(255) NULL  COMMENT '表单密码',
`keyword_type`  tinyint(2) NOT NULL  DEFAULT 0 COMMENT '关键词类型',
`jump_url`  varchar(255) NULL  COMMENT '提交后跳转的地址',
`content`  text NULL  COMMENT '详细介绍',
`finish_tip`  text NULL  COMMENT '用户提交后提示内容',
`can_edit`  tinyint(2) NULL  DEFAULT 0 COMMENT '是否允许编辑',
`intro`  text NULL  COMMENT '封面简介',
`mTime`  int(10) NULL  COMMENT '修改时间',
`cover`  int(10) UNSIGNED NULL  COMMENT '封面图片',
`keyword`  varchar(100) NOT NULL  COMMENT '关键词',
`template`  varchar(255) NULL  DEFAULT 'default' COMMENT '模板',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci CHECKSUM=0 ROW_FORMAT=DYNAMIC DELAY_KEY_WRITE=0;
INSERT INTO `wp_model` (`name`,`title`,`extend`,`relation`,`need_pk`,`field_sort`,`field_group`,`attribute_list`,`template_list`,`template_add`,`template_edit`,`list_grid`,`list_row`,`search_key`,`search_list`,`create_time`,`update_time`,`status`,`engine_type`,`addon`) VALUES ('forms','通用表单','0','','1','["keyword","keyword_type","title","intro","cover","can_edit","finish_tip","jump_url","content","template"]','1:基础','','','','','id:通用表单ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncTime|time_format:发布时间\r\nids:操作:[EDIT]|编辑,[DELETE]|删除,forms_attribute&id=[id]|字段管理,forms_value&id=[id]|数据管理,preview&id=[id]|预览','20','title','','1396061373','1437450012','1','MyISAM','Forms');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('title','标题','varchar(255) NOT NULL','string','','','1','','0','forms','1','1','1396624461','1396061859','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('cTime','发布时间','int(10) UNSIGNED NULL','datetime','','','0','','0','forms','0','1','1396624612','1396075102','','3','','regex','time','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('token','Token','varchar(255) NULL','string','','','0','','0','forms','0','1','1396602871','1396602859','','3','','regex','get_token','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('password','表单密码','varchar(255) NULL','string','','如要用户输入密码才能进入表单，则填写此项。否则留空，用户可直接进入表单','0','','0','forms','0','1','1396871497','1396672643','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('keyword_type','关键词类型','tinyint(2) NOT NULL','select','0','','1','0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配','0','forms','1','1','1396624426','1396061765','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('jump_url','提交后跳转的地址','varchar(255) NULL','string','','要以http://开头的完整地址，为空时不跳转','1','','0','forms','0','1','1402458121','1399800276','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('content','详细介绍','text NULL','editor','','可不填','1','','0','forms','0','1','1396865295','1396865295','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('finish_tip','用户提交后提示内容','text NULL','string','','为空默认为：提交成功，谢谢参与','1','','0','forms','0','1','1447497102','1396673689','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('can_edit','是否允许编辑','tinyint(2) NULL','bool','0','用户提交表单是否可以再编辑','1','0:不允许\r\n1:允许','0','forms','0','1','1396688624','1396688624','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('intro','封面简介','text NULL','textarea','','','1','','0','forms','1','1','1439371986','1396061947','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('mTime','修改时间','int(10) NULL','datetime','','','0','','0','forms','0','1','1396624664','1396624664','','3','','regex','time','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('cover','封面图片','int(10) UNSIGNED NULL','picture','','','1','','0','forms','1','1','1439372018','1396062093','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('keyword','关键词','varchar(100) NOT NULL','string','','','1','','0','forms','1','1','1465895484','1396061575','keyword_unique','3','该关键词已经存在','function','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('template','模板','varchar(255) NULL','string','default','','1','','0','forms','0','1','1431661124','1431661124','','3','','regex','','3','function');
UPDATE `wp_attribute` a, wp_model m SET a.model_id = m.id WHERE a.model_name=m.`name`;


CREATE TABLE IF NOT EXISTS `wp_forms_attribute` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
`is_show`  tinyint(2) NULL  DEFAULT 1 COMMENT '是否显示',
`forms_id`  int(10) UNSIGNED NULL  COMMENT '表单ID',
`error_info`  varchar(255) NULL  COMMENT '出错提示',
`sort`  int(10) UNSIGNED NULL  DEFAULT 0 COMMENT '排序号',
`validate_rule`  varchar(255) NULL  COMMENT '正则验证',
`is_must`  tinyint(2) NULL  COMMENT '是否必填',
`remark`  varchar(255) NULL  COMMENT '字段备注',
`name`  varchar(100) NULL  COMMENT '字段名',
`token`  varchar(255) NULL  COMMENT 'Token',
`value`  varchar(255) NULL  COMMENT '默认值',
`title`  varchar(255) NOT NULL  COMMENT '字段标题',
`mTime`  int(10) NULL  COMMENT '修改时间',
`extra`  text NULL  COMMENT '参数',
`type`  char(50) NOT NULL  DEFAULT 'string' COMMENT '字段类型',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci CHECKSUM=0 ROW_FORMAT=DYNAMIC DELAY_KEY_WRITE=0;
INSERT INTO `wp_model` (`name`,`title`,`extend`,`relation`,`need_pk`,`field_sort`,`field_group`,`attribute_list`,`template_list`,`template_add`,`template_edit`,`list_grid`,`list_row`,`search_key`,`search_list`,`create_time`,`update_time`,`status`,`engine_type`,`addon`) VALUES ('forms_attribute','表单字段','0','','1','["name","title","type","extra","value","remark","is_must","validate_rule","error_info","sort"]','1:基础','','','','','title:字段标题\r\nname:字段名\r\ntype|get_name_by_status:字段类型\r\nids:操作:[EDIT]&forms_id=[forms_id]|编辑,[DELETE]|删除','20','title','','1396061373','1396710959','1','MyISAM','Forms');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('is_show','是否显示','tinyint(2) NULL','select','1','是否显示在表单中','1','1:显示\r\n0:不显示','0','forms_attribute','0','1','1396848437','1396848437','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('forms_id','表单ID','int(10) UNSIGNED NULL','num','','','4','','0','forms_attribute','0','1','1396710040','1396690613','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('error_info','出错提示','varchar(255) NULL','string','','验证不通过时的提示语','1','','0','forms_attribute','0','1','1396685920','1396685920','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('sort','排序号','int(10) UNSIGNED NULL','num','0','值越小越靠前','1','','0','forms_attribute','0','1','1396685825','1396685825','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('validate_rule','正则验证','varchar(255) NULL','string','','为空表示不作验证','1','','0','forms_attribute','0','1','1396685776','1396685776','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('is_must','是否必填','tinyint(2) NULL','bool','','用于自动验证','1','0:否\r\n1:是','0','forms_attribute','0','1','1396685579','1396685579','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('remark','字段备注','varchar(255) NULL','string','','用于表单中的提示','1','','0','forms_attribute','0','1','1396685482','1396685482','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('name','字段名','varchar(100) NULL','string','','请输入字段名 英文字母开头，长度不超过30','1','','0','forms_attribute','1','1','1447638080','1396676792','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('token','Token','varchar(255) NULL','string','','','0','','0','forms_attribute','0','1','1396602871','1396602859','','3','','regex','get_token','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('value','默认值','varchar(255) NULL','string','','字段的默认值','1','','0','forms_attribute','0','1','1396685291','1396685291','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('title','字段标题','varchar(255) NOT NULL','string','','请输入字段标题，用于表单显示','1','','0','forms_attribute','1','1','1396676830','1396676830','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('mTime','修改时间','int(10) NULL','datetime','','','0','','0','forms_attribute','0','1','1396624664','1396624664','','3','','regex','time','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('extra','参数','text NULL','textarea','','字段类型为单选、多选、下拉选择和级联选择时的定义数据，其它字段类型为空','1','','0','forms_attribute','0','1','1396835020','1396685105','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('type','字段类型','char(50) NOT NULL','select','string','用于表单中的展示方式','1','string:单行输入\r\ntextarea:多行输入\r\nradio:单选\r\ncheckbox:多选\r\nselect:下拉选择\r\ndatetime:时间\r\npicture:上传图片','0','forms_attribute','1','1','1396871262','1396683600','','3','','regex','','3','function');
UPDATE `wp_attribute` a, wp_model m SET a.model_id = m.id WHERE a.model_name=m.`name`;


CREATE TABLE IF NOT EXISTS `wp_forms_value` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
`forms_id`  int(10) UNSIGNED NULL  COMMENT '表单ID',
`value`  text NULL  COMMENT '表单值',
`cTime`  int(10) NULL  COMMENT '增加时间',
`openid`  varchar(255) NULL  COMMENT 'OpenId',
`uid`  int(10) NULL  COMMENT '用户ID',
`token`  varchar(255) NULL  COMMENT 'Token',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci CHECKSUM=0 ROW_FORMAT=DYNAMIC DELAY_KEY_WRITE=0;
INSERT INTO `wp_model` (`name`,`title`,`extend`,`relation`,`need_pk`,`field_sort`,`field_group`,`attribute_list`,`template_list`,`template_add`,`template_edit`,`list_grid`,`list_row`,`search_key`,`search_list`,`create_time`,`update_time`,`status`,`engine_type`,`addon`) VALUES ('forms_value','通用表单数据','0','','1','','1:基础','','','','','','20','','','1396687959','1396687959','1','MyISAM','Forms');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('forms_id','表单ID','int(10) UNSIGNED NULL','num','','','4','','0','forms_value','0','1','1396710064','1396688308','','3','','regex','','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('value','表单值','text NULL','textarea','','','0','','0','forms_value','0','1','1396688355','1396688355','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('cTime','增加时间','int(10) NULL','datetime','','','0','','0','forms_value','0','1','1396688434','1396688434','','3','','regex','time','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('openid','OpenId','varchar(255) NULL','string','','','0','','0','forms_value','0','1','1396688187','1396688187','','3','','regex','get_openid','1','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('uid','用户ID','int(10) NULL','num','','','0','','0','forms_value','0','1','1396688042','1396688042','','3','','regex','','3','function');
INSERT INTO `wp_attribute` (`name`,`title`,`field`,`type`,`value`,`remark`,`is_show`,`extra`,`model_id`,`model_name`,`is_must`,`status`,`update_time`,`create_time`,`validate_rule`,`validate_time`,`error_info`,`validate_type`,`auto_rule`,`auto_time`,`auto_type`) VALUES ('token','Token','varchar(255) NULL','string','','','0','','0','forms_value','0','1','1396690911','1396690911','','3','','regex','get_token','1','function');
UPDATE `wp_attribute` a, wp_model m SET a.model_id = m.id WHERE a.model_name=m.`name`;


