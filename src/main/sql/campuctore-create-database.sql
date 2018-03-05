/**
 * database name: campustore
 * character: utf8mb4 (emoji is supported)
 * date: 2018-03-05
 * 
*/

drop database if exists campustore;
create database campustore DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;

use campustore;


-- 用户信息表
drop table if exists t_userInfo;
create table t_userInfo (
	id int auto_increment PRIMARY key not null,		-- id,主键
	nickname VARCHAR(50) not null,		-- 昵称
	account varchar(300) not null,		-- 账号
	phone	varchar(20) not null,	  -- 手机号
	uname varchar(50) not null,		-- 用户真实姓名
	passcode varchar(200) not null,		-- 密码
	registertime varchar(50) not null,		-- 注册时间
	ustatus int not null default '1', 		-- 账号状态,是否可用
	address varchar(1000) , 	-- 详细地址,具体到寝室
	ifonline int not null default '1', 		-- 在线状态
	gender	varchar(2) ,		-- 性别
	age int ,		-- 年龄
	university varchar(200) ,	-- 学校
	college varchar(100) ,		-- 学院
	classes varchar(200)	,		-- 班级
	stuid varchar(50) ,			-- 学号
	qqnum	varchar(20) ,		-- QQ号
	weichat varchar(50), 		-- 微信
	email varchar(100) ,		-- 邮箱	
	headportrait varchar(1000),		-- 头像,这里保存的是路径
	tips varchar(250) 		-- 签名
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 积分表
drop table if exists t_userScore;
create table t_userScore (
	id int auto_increment PRIMARY key not null,		-- id,主键
	uid int not null,
	score int not null default '1'		-- 积分	
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 商品大类
drop table if exists t_category;
create table t_category(
	id int auto_increment PRIMARY key not null,		-- id,主键
	cname varchar(50) not null		-- 大类别名称

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- 商品小类
drop table if exists t_scategory;
create table t_scategory(
	id int auto_increment PRIMARY key not null,		-- id,主键
	cid int not null,			-- 大类别编号
	scname varchar(50) not null		-- 小类别名称

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 店铺信息表
drop table if exists t_store;
create table t_store(
	id int auto_increment PRIMARY key not null,		-- id,主键
	sname varchar(50) not null,		-- 店铺名称
	address varchar(200) not null ,-- 店铺地址
	storelogo varchar(1000) ,		-- 店铺logo
	storephoto varchar(1000),		-- 店铺门面照片
	sstatus int  not null default '1'  ,		-- 店铺状态
	sowner varchar(50) not null,		-- 店铺负责人
	ownertel varchar(20) not null, 		-- 负责人电话
	ownerid varchar(20) not null,		-- 负责人身份证
	owneremail	varchar(100) ,			-- 负责人邮箱
	account varchar(50)  not null,			-- 店铺管理账号
	passcode varchar(50) not null,		-- 店铺管理密码
	storetel varchar(20) not null , 		-- 店铺电话
	registertime varchar(50) not null,		-- 店铺注册时间
	tips varchar(250) 		-- 店铺说明
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 商品信息表
drop table if exists t_commodity;
create table t_commodity(
	id int auto_increment PRIMARY key not null,		-- id,主键
	cid int not null,		-- 商品大类别id,外键
	scid int not null,		-- 商品小类别id,外键
	stoid	int not null,		-- 商铺id,外键
	cname varchar(100) not null,		-- 商品名称
	pricein double(9,3) not null,		-- 进价
	priceout double(9,3) not null,		-- 售价
	stockcount int not null,		-- 库存数量
	cstatus int not null default '1',	-- 上架状态，默认未上架
	prohibit int not null default '1', -- 是否被禁止,默认没有被禁止
	picture1 varchar(1000) not null,	-- 图片1
	picture2 varchar(1000) ,	-- 图片2
	picture3 varchar(1000) ,	-- 图片3
	sales	int not null,		-- 月销量
	details varchar(500) not null,		-- 详情
	brand varchar(200) not null,	-- 品牌
	proplace varchar(100) not null		-- 生产地
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 员工等级/权限表
drop table if exists t_grade;
create table t_grade(
	id int auto_increment PRIMARY key not null,		-- id,主键
	gname  varchar(20) not null		-- 等级名称
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 员工信息表
drop table if exists t_employee;
create table t_employee(
	id int auto_increment PRIMARY key not null,		-- id,主键
	sid int not null,		-- 店铺id,外键
	ename varchar(50) not null,		-- 员工姓名
	phone varchar(20) not null,		-- 员工电话
	idcard varchar(20) not null,		-- 身份证
	passcode varchar(50) default '123456' not null, 		-- 密码,初始值为'123456'
	grade int not null ,		-- 等级
	registertime varchar(50) not null,		-- 注册时间
	lasttime varchar(50) not null,		-- 最后一次登录时间
	email varchar(100) ,		-- 邮箱
	address varchar(200) ,		-- 地址
	sex varchar(2) ,		-- 性别
	age int 		-- 年龄
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 购物车
drop table if exists t_shoppingcar;
create table t_shoppingcar(
	id int auto_increment PRIMARY key not null,		-- id,主键
	uid int not null,		-- 用户id,外键
	cid int not null,		-- 商品id
	ccount int null,		-- 商品数量
	totalamount double(9,3)		-- 总金额
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 订单
drop table if exists t_order;
create table t_order(
	id int auto_increment PRIMARY key not null,		-- id,主键
	uid int not null,		-- 用户id,外键
	cid int not null,		-- 商品id
	stoid int not null ,	-- 店铺id	
	sid int not null default '0',	-- 购物车 id 
	ccount int not null,		-- 商品数量
	totalamount double(9,3),		-- 总金额
	pid int not null,		-- 支付方式id,外键
	ifpay int not null default '1',		-- 是否支付
	remarks varchar(500),		-- 备注信息 
	ostatus int not null default '1', -- 订单提交状态
	sendtime	varchar(50) not null		-- 发货时间
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 支付方式
drop table if exists t_payment;
create table t_payment(
	id int auto_increment PRIMARY key not null,		-- id,主键
	pay varchar(10) not null		-- 支付方式
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 物流状态表
drop table if exists t_logistisInfo;
create table t_logistisInfo(
	id int auto_increment PRIMARY key not null,		-- id,主键
	lstatus varchar(10) not null		-- 物流状态
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 物流信息表
drop table if exists t_logistic;
create table t_logistic(
	id int auto_increment PRIMARY key not null,		-- id,主键
	oid int not null,		-- 订单id,外键
	lsid int not null,		-- 物流状态id,外键
	eid int not null		-- 派送员工id,外键
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 用户浏览与操作记录
drop table if exists t_userlog;
create table t_userlog(
	id int auto_increment PRIMARY key not null,		-- id,主键
	uid int not null ,		-- 用户id,外键
	cid int not null,		-- 商品id,外键
	bcid int not null ,		-- 商品大类id,外键
	scid int not null ,		-- 商品小类id,外键
	updatetime varchar(50) not null , 	-- 更新时间
	operation varchar(200) not null			-- 操作说明
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 员工操作记录表
drop table if exists t_emplog;
create table t_emplog(
	id int auto_increment PRIMARY key not null,		-- id,主键
	eid int not null,			-- 员工id，外键
	operation varchar(200) not null			-- 操作说明
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 添加外键约束
-- 积分表-用户信息表(id)
alter table t_userScore add constraint fk_uid_userscore foreign key (uid) references t_userInfo(id);
-- 商品小类-商品大类(id)
alter table t_scategory add constraint fk_cid_scategory foreign key (cid) references t_category(id);
-- 商品信息表-商品大类(id)-商品小类(id)-店铺(id)
alter table t_commodity add constraint fk_cid_commodity foreign key (cid) references t_category(id);
alter table t_commodity add constraint fk_scid_commodity foreign key (scid) references t_scategory(id);
alter table t_commodity add constraint fk_stoid_commodity foreign key (stoid) REFERENCES t_store(id);
-- 员工信息表-店铺(id)
alter table t_employee add CONSTRAINT fk_sid_employee foreign key (sid) references t_store(id);
-- 购物车-用户信息表(id)-商品信息表(id)
alter table t_shoppingcar add CONSTRAINT fk_uid_shoppingcar foreign key (uid) references t_userinfo(id);
alter table t_shoppingcar add constraint fk_cid_shoppingcar foreign key (cid) references t_commodity(id);
-- 订单表-用户信息表(id)-商品信息表(id)-支付方式(id)
alter table t_order add constraint fk_uid_order foreign key (uid) references t_userinfo(id);
alter table t_order add constraint fk_cid_order FOREIGN key (cid) references t_commodity(id);
alter table t_order add constraint fk_pid_order foreign key (pid) references t_payment(id);
alter table t_order add CONSTRAINT fk_order_stoid_store FOREIGN key (stoid) REFERENCES t_store(id);	

-- 物流信息表-订单表(id)-员工信息表(id)
alter table t_logistic add constraint fk_oid_order foreign key (oid) references t_order(id);
alter table t_logistic add constraint fk_lsid_order foreign key (lsid) references t_logistisinfo(id);
alter table t_logistic add constraint fk_eid_order foreign key (eid) references t_employee(id);
-- 用户浏览与操作记录表-用户信息表(id)-商品信息表(id)-商品大类(id)-商品小类(id)
alter table t_userlog add constraint fk_uid_userlog foreign key (uid) references t_userinfo(id);
alter table t_userlog add constraint fk_cid_userlog foreign key (cid) references t_commodity(id);
alter table t_userlog add constraint fk_bcid_userlog foreign key (bcid) references t_category(id);
alter table t_userlog add constraint fk_scid_userlog foreign key (scid) references t_scategory(id);
-- 员工操作记录-员工信息表(id)
alter table t_emplog add CONSTRAINT fk_eid_emplog FOREIGN key (eid) REFERENCES t_employee(id);



-- 删除外键约束
-- alter table t_commodity drop foreign key fk_scid_scategory;
-- 添加字段
-- alter table t_order add stoid int not null ; 	

-- 数据库修改记录：
-- 将所有的和状态相关的默认数字全部改为大于0(便于后期数据修改判断操作)		-- 20170514










