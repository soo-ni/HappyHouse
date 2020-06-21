CREATE TABLE `areainfo` (
	`dong`	varchar(50)	NOT NULL,
	`citycode`	varchar(50)	NULL,
	`city`	varchar(50)	NULL,
	`gucode`	varchar(50)	NULL,
	`gu`	varchar(50)	NULL,
	`dongcode`	varchar(50)	NULL
);

CREATE TABLE `board` (
	`BOARD_ID`	int	NOT NULL,
	`USER_SEQ`	varchar(50)	NOT NULL,
	`TITLE`	varchar(500)	NULL,
	`CONTENT`	text	NULL,
	`REG_DT`	datetime	NULL,
	`READ_COUNT`	int	NULL	DEFAULT '0'
);

CREATE TABLE `dongcode` (
	`num`	int	NOT NULL,
	`city`	varchar(45)	NULL,
	`code`	varchar(45)	NULL,
	`dongcode`	varchar(45)	NULL,
	`gugun`	varchar(45)	NULL,
	`dong`	varchar(45)	NULL,
	`lat`	varchar(45)	NULL,
	`lng`	varchar(45)	NULL
);

CREATE TABLE `envinfo` (
	`gu`	varchar(45)	NOT NULL,
	`perarea`	varchar(45)	NULL,
	`perpark`	varchar(45)	NULL,
	`finedust`	varchar(45)	NULL
);

CREATE TABLE `guguncode` (
	`gugun_code`	varchar(10)	NOT NULL,
	`gugun_name`	varchar(30)	NULL
);

CREATE TABLE `housedeal` (
	`no`	int	NOT NULL,
	`dong`	varchar(30)	NOT NULL,
	`AptName`	varchar(50)	NOT NULL,
	`code`	varchar(30)	NOT NULL,
	`dealAmount`	varchar(50)	NOT NULL,
	`buildYear`	varchar(30)	NULL,
	`dealYear`	varchar(30)	NULL,
	`dealMonth`	varchar(30)	NULL,
	`dealDay`	varchar(30)	NULL,
	`area`	varchar(30)	NULL,
	`floor`	varchar(30)	NULL,
	`jibun`	varchar(30)	NULL,
	`type`	varchar(30)	NULL,
	`rentMoney`	varchar(30)	NULL
);

CREATE TABLE `houseinfo` (
	`no`	int	NOT NULL,
	`dong`	varchar(30)	NOT NULL,
	`AptName`	varchar(50)	NOT NULL,
	`code`	varchar(30)	NOT NULL,
	`buildYear`	varchar(30)	NULL,
	`jibun`	varchar(30)	NULL,
	`lat`	varchar(30)	NULL,
	`lng`	varchar(30)	NULL,
	`img`	varchar(50)	NULL
);

CREATE TABLE `interestarea` (
	`uid`	varchar(50)	NULL,
	`dong`	varchar(45)	NULL
);

CREATE TABLE `manager` (
	`no`	int	NOT NULL,
	`uid`	varchar(50)	NULL,
	`count`	int	NULL,
	`lastdate`	datetime	NULL
);

CREATE TABLE `qna_board` (
	`qna_no`	int	NOT NULL	COMMENT '질문번호',
	`qna_title`	varchar(300)	NOT NULL	COMMENT '질문제목',
	`qna_content`	varchar(4000)	NOT NULL	COMMENT '질문내용',
	`qna_userid`	varchar(20)	NOT NULL	COMMENT '질문자아이디',
	`qna_datetime`	timestamp	NULL	DEFAULT CURRENT_TIMESTAMP	COMMENT '질문일시',
	`reply_content`	varchar(4000)	NULL	DEFAULT NULL	COMMENT '답변내용',
	`reply_datetime`	timestamp	NULL	DEFAULT NULL	COMMENT '답변일시',
	`reply_userid`	varchar(20)	NULL	DEFAULT NULL	COMMENT '답변자아이디'
);

CREATE TABLE `sidocode` (
	`sido_code`	varchar(10)	NOT NULL,
	`sido_name`	varchar(30)	NULL
);

CREATE TABLE `storeinfo` (
	`no`	int	NOT NULL,
	`shopname`	varchar(30)	NOT NULL,
	`localname`	varchar(30)	NOT NULL,
	`code1`	varchar(30)	NOT NULL,
	`codename1`	varchar(30)	NOT NULL,
	`code2`	varchar(30)	NOT NULL,
	`codename2`	varchar(30)	NOT NULL,
	`code3`	varchar(30)	NOT NULL,
	`codename3`	varchar(30)	NOT NULL,
	`code4`	varchar(30)	NOT NULL,
	`codename4`	varchar(30)	NOT NULL,
	`citycode`	varchar(30)	NOT NULL,
	`city`	varchar(30)	NOT NULL,
	`gucode`	varchar(30)	NOT NULL,
	`gu`	varchar(30)	NOT NULL,
	`dongcode`	varchar(30)	NOT NULL,
	`dong`	varchar(30)	NOT NULL,
	`jibuaddress`	varchar(30)	NOT NULL,
	`address`	varchar(30)	NOT NULL,
	`oldpostcode`	varchar(30)	NOT NULL,
	`postcode`	varchar(30)	NOT NULL,
	`lng`	varchar(30)	NOT NULL,
	`lat`	varchar(30)	NOT NULL
);

CREATE TABLE `user` (
	`uid`	varchar(50)	NOT NULL,
	`uname`	varchar(50)	NULL,
	`uaddress`	varchar(100)	NULL,
	`uphone`	varchar(50)	NULL,
	`upassword`	varchar(100)	NULL,
	`uquestion`	varchar(45)	NULL,
	`uanswer`	varchar(45)	NULL
);

CREATE TABLE `interesthousedeal` (
	`uid`	varchar(50)	NULL,
	`no`	int	NOT NULL
);

ALTER TABLE `areainfo` ADD CONSTRAINT `PK_AREAINFO` PRIMARY KEY (
	`dong`
);

ALTER TABLE `board` ADD CONSTRAINT `PK_BOARD` PRIMARY KEY (
	`BOARD_ID`
);

ALTER TABLE `dongcode` ADD CONSTRAINT `PK_DONGCODE` PRIMARY KEY (
	`num`
);

ALTER TABLE `envinfo` ADD CONSTRAINT `PK_ENVINFO` PRIMARY KEY (
	`gu`
);

ALTER TABLE `guguncode` ADD CONSTRAINT `PK_GUGUNCODE` PRIMARY KEY (
	`gugun_code`
);

ALTER TABLE `housedeal` ADD CONSTRAINT `PK_HOUSEDEAL` PRIMARY KEY (
	`no`
);

ALTER TABLE `houseinfo` ADD CONSTRAINT `PK_HOUSEINFO` PRIMARY KEY (
	`no`
);

ALTER TABLE `manager` ADD CONSTRAINT `PK_MANAGER` PRIMARY KEY (
	`no`
);

ALTER TABLE `qna_board` ADD CONSTRAINT `PK_QNA_BOARD` PRIMARY KEY (
	`qna_no`
);

ALTER TABLE `sidocode` ADD CONSTRAINT `PK_SIDOCODE` PRIMARY KEY (
	`sido_code`
);

ALTER TABLE `storeinfo` ADD CONSTRAINT `PK_STOREINFO` PRIMARY KEY (
	`no`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`uid`
);

