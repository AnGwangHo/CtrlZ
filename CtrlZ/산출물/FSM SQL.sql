--------------------------------------------------------------------------------- 
/*게시글 테이블 생성*/ 
CREATE TABLE bulletin 
  ( 
     bulletin_num          NUMBER(11) NOT NULL, 
     bulletintype_num      NUMBER(2) NOT NULL, 
     member_num            NUMBER(11) NOT NULL, 
     bulletin_title        VARCHAR2(100) NOT NULL, 
     bulletin_content      VARCHAR2(2000) NULL, 
     bulletin_date         DATE DEFAULT SYSDATE, 
     bulletin_attachment   VARCHAR2(100), 
     bulletin_hitcount     NUMBER(11) DEFAULT 0, 
     bulletin_commentcount NUMBER(11) 
  ); 

DROP TABLE bulletin; 

/*게시글 PK*/ 
ALTER TABLE bulletin 
  ADD CONSTRAINT bulletin_num_pk PRIMARY KEY(bulletin_num); 

/*게시글 시퀀스 등록*/ 
CREATE SEQUENCE bulletin_num_seq 
  START WITH 1 
  INCREMENT BY 1
  NOCYCLE; 

DROP SEQUENCE bulletin_num_seq; 

/* 게시글 타입 테이블 생성*/ 
CREATE TABLE bulletintype 
  ( 
     bulletintype_num  NUMBER(2) NOT NULL, 
     bulletintype_name VARCHAR2(30) NOT NULL 
  ); 

DROP TABLE bulletintype; 

/* 게시글 타입 PK*/ 
ALTER TABLE bulletintype 
  ADD CONSTRAINT bulletintype_num_pk PRIMARY KEY(bulletintype_num); 

/*게시글 타입 시퀀스 등록*/ 
CREATE SEQUENCE bulletintype_num_seq; 

DROP SEQUENCE bulletintype_num_seq; 

/* 게시글 타입 Unique*/ 
ALTER TABLE bulletintype 
  ADD UNIQUE (bulletintype_name); 

COMMIT; 

-------------------------------------------------------------------  
/* 게시글 FK*/ 
ALTER TABLE bulletin 
  ADD CONSTRAINT bulletintype_num FOREIGN KEY (bulletintype_num) REFERENCES bulletintype(bulletintype_num); 


---------------------------------------------------------------------------------     
-- 회원 정보 저장을 위한 테이블 
CREATE TABLE member 
  ( 
     member_num           NUMBER(11) NOT NULL, 
     member_mainposition  NUMBER(2) NOT NULL, 
     member_subposition   NUMBER(2) NOT NULL, 
     member_id            VARCHAR2(40) NOT NULL, 
     member_passwd        VARCHAR2(60) NOT NULL, 
     member_name          VARCHAR2(20) NOT NULL, 
     member_profile_image VARCHAR2(100), 
     member_age           NUMBER(3) NOT NULL, 
     member_sex           NUMBER(1) NOT NULL, 
     member_height        NUMBER(3) NOT NULL, 
     member_weight        NUMBER(3) NOT NULL, 
     member_foot          NUMBER(1) NOT NULL, 
     member_phone         VARCHAR2(11) NOT NULL, 
     member_email         VARCHAR2(100) NOT NULL, 
     member_addr          VARCHAR2(200) NOT NULL, 
     member_detailaddr    VARCHAR2(200) NOT NULL, 
     member_comment       VARCHAR2(200), 
     member_matchcount    NUMBER(5), 
     member_regdate       DATE DEFAULT SYSDATE 
  ); 

-- 추가된 컬럼 : 사진, 가입날짜 
-- 테이블에 제약사항 추가 
ALTER TABLE member 
  ADD ( CONSTRAINT member_num PRIMARY KEY(member_num), CONSTRAINT 
  member_id_uk UNIQUE(member_id) ); 


-- 포지션 테이블 생성 
CREATE TABLE position 
  ( 
     position_num  NUMBER(2) NOT NULL, 
     position_name VARCHAR2(20) NOT NULL 
  ); 

--포지션 테이블 제약사항 추가 (해당 테이블PK) 
ALTER TABLE position
  ADD CONSTRAINT POSITION_NUM PRIMARY KEY(position_num); 

-- 포지션 테이블 제약사항 추가 ( UNIQUE ) 
ALTER TABLE position 
  ADD CONSTRAINT position_name_uk UNIQUE(position_name); 


COMMIT; 

-- 포지션 기본키 시퀀스 생성 
CREATE SEQUENCE position_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE;

/*외래키설정*/
ALTER TABLE member
ADD CONSTRAINT MEMBER_MAINPOSITION FOREIGN KEY(member_mainposition)
REFERENCES POSITION(position_num);

ALTER TABLE member
ADD CONSTRAINT MEMBER_SUBPOSITION FOREIGN KEY(member_subposition)
REFERENCES POSITION(position_num);

 -- 0 or 1만 입력하는 check 제약조건
ALTER TABLE member ADD CONSTRAINT member_sex_check check( member_sex in (0,1));
ALTER TABLE member ADD CONSTRAINT member_foot_check check( member_foot in (0,1,2));

CREATE SEQUENCE member_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

-- 확인 -FM 키는 지정안했어요~ 
COMMIT; 

SELECT * 
FROM   member; 


ALTER TABLE bulletin 
  ADD CONSTRAINT bulletin_member_num FOREIGN KEY (member_num) REFERENCES member (member_num); 

COMMIT; 
















--------------------------------------------------------------------- 
/* 댓글테이블 */ 
DROP TABLE reply; 

CREATE TABLE reply 
  ( 
     reply_num     NUMBER(11) NOT NULL, 
     bulletin_num  NUMBER(11) NOT NULL, 
     member_num    NUMBER(20) NOT NULL, 
     reply_content VARCHAR2(200) NULL, 
     reply_date    DATE DEFAULT SYSDATE 
  ); 

-------------------------시퀀스--------------------------  
CREATE SEQUENCE reply_num_seq; 

DROP SEQUENCE reply_num_seq; 

-------------------------PK 설정-------------------------  
ALTER TABLE reply 
  ADD CONSTRAINT reply_num_pk PRIMARY KEY(reply_num); 

-------------------------fk 설정-------------------------  
ALTER TABLE reply 
  ADD CONSTRAINT bulletin_num FOREIGN KEY (bulletin_num) REFERENCES bulletin (bulletin_num); 

ALTER TABLE reply 
  ADD CONSTRAINT reply_member_num FOREIGN KEY (member_num) REFERENCES member (member_num); 















---------------------------------------------------------------------------------    
-- 포메이션 테이블 생성 
CREATE TABLE formation 
  ( 
     formation_num  NUMBER(2) NOT NULL, 
     formation_name VARCHAR2(20) NOT NULL, 
     formation_path VARCHAR2(30) 
  ); 

-- 포메이션 테이블 제약사항 추가 (해당 테이블PK) 
ALTER TABLE formation 
  ADD CONSTRAINT formation_num PRIMARY KEY(formation_num); 

-- 포메이션 테이블 제약사항 추가 ( UNIQUE ) 
ALTER TABLE formation 
  ADD CONSTRAINT formation_name_uk UNIQUE(formation_name); 

COMMIT; 

-- 포메이션 기본키 시퀀스 생성 
CREATE SEQUENCE formation_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

COMMIT; 

-- 전술 테이블 생성 
CREATE TABLE tactics 
  ( 
     tactics_num   NUMBER(11) NOT NULL, 
     schedule_num  NUMBER(11) NOT NULL, 
     formation_num NUMBER(2) NOT NULL, 
     tactics_half  NUMBER(1) 
  ); 

-- 전술 테이블 제약사항 추가 (해당 테이블PK) 
ALTER TABLE tactics 
  ADD CONSTRAINT tactics_num PRIMARY KEY(tactics_num); 


---------------------------------------------------------------------------------     
/*일정 테이블*/ 
/*테이블 삭제*/ 
DROP TABLE schedule; 

/*테이블 생성*/ 
CREATE TABLE schedule 
  ( 
     schedule_num      NUMBER(11) NOT NULL, 
     schedule_title    VARCHAR2(100) NOT NULL, 
     schedule_content  VARCHAR2(1000) NULL, 
     schedule_writer   VARCHAR2(20) NOT NULL,
     schedule_date     DATE DEFAULT SYSDATE NULL, 
     schedule_location VARCHAR2(100) NULL, 
     schedule_deadline DATE DEFAULT SYSDATE NULL, 
     schedule_joinname VARCHAR2(200) NULL 
  ); 

/*기본키 생성*/ 
ALTER TABLE schedule 
  ADD CONSTRAINT schedule_num PRIMARY KEY(schedule_num); 

/*시퀀스 생성*/ 
CREATE SEQUENCE schedule_num_seq 
  START WITH 1
  INCREMENT BY 1 
  NOCYCLE; 

-- 전술 테이블 제약사항 추가 (FK) 
ALTER TABLE tactics 
  ADD ( CONSTRAINT schedule_num_fk FOREIGN KEY(schedule_num) REFERENCES schedule 
  (schedule_num), CONSTRAINT formation_num_fk FOREIGN KEY(formation_num) 
  REFERENCES formation(formation_num) ); 

-- 0 or 1만 입력하는 check 제약조건
ALTER TABLE tactics ADD CONSTRAINT tactics_half check( tactics_half in (0,1));

-- 전술 테이블 기본키 시퀀스 생성 
CREATE SEQUENCE tactics_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

COMMIT; 

-- 선발 선수 테이블 생성 
CREATE TABLE regularstarter 
  ( 
     tactics_num             NUMBER(11) NOT NULL, 
     member_num              NUMBER(11) NOT NULL, 
     position_num            NUMBER(2) NOT NULL, 
     regularstarter_grade    NUMBER(1, 1), 
     regularstarter_comment  VARCHAR2(200), 
     regularstarter_half     NUMBER(1) NOT NULL, 
     regularstarter_location VARCHAR2(10), 
     regularstarter_change   NUMBER(1) 
  ); 

--선발 선수 테이블 제약사항 추가 (FK) 
ALTER TABLE regularstarter 
  ADD ( CONSTRAINT tactics_num_fk FOREIGN KEY(tactics_num) REFERENCES tactics( 
  tactics_num), CONSTRAINT regularstarter_member_num FOREIGN KEY(member_num) REFERENCES 
  member(member_num), CONSTRAINT position_num_fk FOREIGN KEY(position_num) 
  REFERENCES position(position_num) ); 

-- 0 or 1만 입력하는 check 제약조건
ALTER TABLE regularstarter ADD CONSTRAINT regularstarter_half check( regularstarter_half in (0,1));

COMMIT; 

ROLLBACK; 















  
  
  
  
  
  
  
  
  
  
  
  
  


















---------------------------------------------------------------------------------   
/*투표테이블*/ 
DROP TABLE vote; 

CREATE TABLE vote 
  ( 
     vote_num    NUMBER(11) NOT NULL, 
     member_num  NUMBER(11) NOT NULL, 
     tactics_num NUMBER(11) NOT NULL, 
     vote_month  NUMBER(2) NOT NULL, 
     vote_half   NUMBER(1) NOT NULL, 
     vote_count  NUMBER(11) 
  ); 

-- 시퀀스 추가 
CREATE SEQUENCE vote_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

-- 테이블에 제약사항 추가 
ALTER TABLE vote 
  ADD ( CONSTRAINT vote_num_pk PRIMARY KEY(vote_num) ); 

-- 맴버 FK   
ALTER TABLE vote 
  ADD CONSTRAINT vote_member_num FOREIGN KEY (member_num) REFERENCES member(member_num); 

-- TACTICS FK  
ALTER TABLE vote 
  ADD CONSTRAINT vote_tactics_num FOREIGN KEY (tactics_num) REFERENCES tactics(tactics_num); 
  
  -- 0 or 1만 입력하는 check 제약조건
ALTER TABLE vote ADD CONSTRAINT vote_half check( vote_half in (0,1));