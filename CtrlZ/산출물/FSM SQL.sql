--------------------------------------------------------------------------------- 
/*�Խñ� ���̺� ����*/ 
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

/*�Խñ� PK*/ 
ALTER TABLE bulletin 
  ADD CONSTRAINT bulletin_num_pk PRIMARY KEY(bulletin_num); 

/*�Խñ� ������ ���*/ 
CREATE SEQUENCE bulletin_num_seq 
  START WITH 1 
  INCREMENT BY 1
  NOCYCLE; 

DROP SEQUENCE bulletin_num_seq; 

/* �Խñ� Ÿ�� ���̺� ����*/ 
CREATE TABLE bulletintype 
  ( 
     bulletintype_num  NUMBER(2) NOT NULL, 
     bulletintype_name VARCHAR2(30) NOT NULL 
  ); 

DROP TABLE bulletintype; 

/* �Խñ� Ÿ�� PK*/ 
ALTER TABLE bulletintype 
  ADD CONSTRAINT bulletintype_num_pk PRIMARY KEY(bulletintype_num); 

/*�Խñ� Ÿ�� ������ ���*/ 
CREATE SEQUENCE bulletintype_num_seq; 

DROP SEQUENCE bulletintype_num_seq; 

/* �Խñ� Ÿ�� Unique*/ 
ALTER TABLE bulletintype 
  ADD UNIQUE (bulletintype_name); 

COMMIT; 

-------------------------------------------------------------------  
/* �Խñ� FK*/ 
ALTER TABLE bulletin 
  ADD CONSTRAINT bulletintype_num FOREIGN KEY (bulletintype_num) REFERENCES bulletintype(bulletintype_num); 


---------------------------------------------------------------------------------     
-- ȸ�� ���� ������ ���� ���̺� 
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

-- �߰��� �÷� : ����, ���Գ�¥ 
-- ���̺� ������� �߰� 
ALTER TABLE member 
  ADD ( CONSTRAINT member_num PRIMARY KEY(member_num), CONSTRAINT 
  member_id_uk UNIQUE(member_id) ); 


-- ������ ���̺� ���� 
CREATE TABLE position 
  ( 
     position_num  NUMBER(2) NOT NULL, 
     position_name VARCHAR2(20) NOT NULL 
  ); 

--������ ���̺� ������� �߰� (�ش� ���̺�PK) 
ALTER TABLE position
  ADD CONSTRAINT POSITION_NUM PRIMARY KEY(position_num); 

-- ������ ���̺� ������� �߰� ( UNIQUE ) 
ALTER TABLE position 
  ADD CONSTRAINT position_name_uk UNIQUE(position_name); 


COMMIT; 

-- ������ �⺻Ű ������ ���� 
CREATE SEQUENCE position_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE;

/*�ܷ�Ű����*/
ALTER TABLE member
ADD CONSTRAINT MEMBER_MAINPOSITION FOREIGN KEY(member_mainposition)
REFERENCES POSITION(position_num);

ALTER TABLE member
ADD CONSTRAINT MEMBER_SUBPOSITION FOREIGN KEY(member_subposition)
REFERENCES POSITION(position_num);

 -- 0 or 1�� �Է��ϴ� check ��������
ALTER TABLE member ADD CONSTRAINT member_sex_check check( member_sex in (0,1));
ALTER TABLE member ADD CONSTRAINT member_foot_check check( member_foot in (0,1,2));

CREATE SEQUENCE member_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

-- Ȯ�� -FM Ű�� �������߾��~ 
COMMIT; 

SELECT * 
FROM   member; 


ALTER TABLE bulletin 
  ADD CONSTRAINT bulletin_member_num FOREIGN KEY (member_num) REFERENCES member (member_num); 

COMMIT; 
















--------------------------------------------------------------------- 
/* ������̺� */ 
DROP TABLE reply; 

CREATE TABLE reply 
  ( 
     reply_num     NUMBER(11) NOT NULL, 
     bulletin_num  NUMBER(11) NOT NULL, 
     member_num    NUMBER(20) NOT NULL, 
     reply_content VARCHAR2(200) NULL, 
     reply_date    DATE DEFAULT SYSDATE 
  ); 

-------------------------������--------------------------  
CREATE SEQUENCE reply_num_seq; 

DROP SEQUENCE reply_num_seq; 

-------------------------PK ����-------------------------  
ALTER TABLE reply 
  ADD CONSTRAINT reply_num_pk PRIMARY KEY(reply_num); 

-------------------------fk ����-------------------------  
ALTER TABLE reply 
  ADD CONSTRAINT bulletin_num FOREIGN KEY (bulletin_num) REFERENCES bulletin (bulletin_num); 

ALTER TABLE reply 
  ADD CONSTRAINT reply_member_num FOREIGN KEY (member_num) REFERENCES member (member_num); 















---------------------------------------------------------------------------------    
-- �����̼� ���̺� ���� 
CREATE TABLE formation 
  ( 
     formation_num  NUMBER(2) NOT NULL, 
     formation_name VARCHAR2(20) NOT NULL, 
     formation_path VARCHAR2(30) 
  ); 

-- �����̼� ���̺� ������� �߰� (�ش� ���̺�PK) 
ALTER TABLE formation 
  ADD CONSTRAINT formation_num PRIMARY KEY(formation_num); 

-- �����̼� ���̺� ������� �߰� ( UNIQUE ) 
ALTER TABLE formation 
  ADD CONSTRAINT formation_name_uk UNIQUE(formation_name); 

COMMIT; 

-- �����̼� �⺻Ű ������ ���� 
CREATE SEQUENCE formation_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

COMMIT; 

-- ���� ���̺� ���� 
CREATE TABLE tactics 
  ( 
     tactics_num   NUMBER(11) NOT NULL, 
     schedule_num  NUMBER(11) NOT NULL, 
     formation_num NUMBER(2) NOT NULL, 
     tactics_half  NUMBER(1) 
  ); 

-- ���� ���̺� ������� �߰� (�ش� ���̺�PK) 
ALTER TABLE tactics 
  ADD CONSTRAINT tactics_num PRIMARY KEY(tactics_num); 


---------------------------------------------------------------------------------     
/*���� ���̺�*/ 
/*���̺� ����*/ 
DROP TABLE schedule; 

/*���̺� ����*/ 
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

/*�⺻Ű ����*/ 
ALTER TABLE schedule 
  ADD CONSTRAINT schedule_num PRIMARY KEY(schedule_num); 

/*������ ����*/ 
CREATE SEQUENCE schedule_num_seq 
  START WITH 1
  INCREMENT BY 1 
  NOCYCLE; 

-- ���� ���̺� ������� �߰� (FK) 
ALTER TABLE tactics 
  ADD ( CONSTRAINT schedule_num_fk FOREIGN KEY(schedule_num) REFERENCES schedule 
  (schedule_num), CONSTRAINT formation_num_fk FOREIGN KEY(formation_num) 
  REFERENCES formation(formation_num) ); 

-- 0 or 1�� �Է��ϴ� check ��������
ALTER TABLE tactics ADD CONSTRAINT tactics_half check( tactics_half in (0,1));

-- ���� ���̺� �⺻Ű ������ ���� 
CREATE SEQUENCE tactics_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

COMMIT; 

-- ���� ���� ���̺� ���� 
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

--���� ���� ���̺� ������� �߰� (FK) 
ALTER TABLE regularstarter 
  ADD ( CONSTRAINT tactics_num_fk FOREIGN KEY(tactics_num) REFERENCES tactics( 
  tactics_num), CONSTRAINT regularstarter_member_num FOREIGN KEY(member_num) REFERENCES 
  member(member_num), CONSTRAINT position_num_fk FOREIGN KEY(position_num) 
  REFERENCES position(position_num) ); 

-- 0 or 1�� �Է��ϴ� check ��������
ALTER TABLE regularstarter ADD CONSTRAINT regularstarter_half check( regularstarter_half in (0,1));

COMMIT; 

ROLLBACK; 















  
  
  
  
  
  
  
  
  
  
  
  
  


















---------------------------------------------------------------------------------   
/*��ǥ���̺�*/ 
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

-- ������ �߰� 
CREATE SEQUENCE vote_num_seq 
  START WITH 1 
  INCREMENT BY 1 
  NOCYCLE; 

-- ���̺� ������� �߰� 
ALTER TABLE vote 
  ADD ( CONSTRAINT vote_num_pk PRIMARY KEY(vote_num) ); 

-- �ɹ� FK   
ALTER TABLE vote 
  ADD CONSTRAINT vote_member_num FOREIGN KEY (member_num) REFERENCES member(member_num); 

-- TACTICS FK  
ALTER TABLE vote 
  ADD CONSTRAINT vote_tactics_num FOREIGN KEY (tactics_num) REFERENCES tactics(tactics_num); 
  
  -- 0 or 1�� �Է��ϴ� check ��������
ALTER TABLE vote ADD CONSTRAINT vote_half check( vote_half in (0,1));