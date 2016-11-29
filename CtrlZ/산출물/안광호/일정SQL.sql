/*테이블 삭제*/
DROP TABLE SCHEDULE;

/*테이블 생성*/
CREATE TABLE SCHEDULE
(schedule_num NUMBER(11) NOT NULL,
 schedule_title VARCHAR2(100) NOT NULL,
 schedule_content VARCHAR2(1000) NULL,
 schedule_date DATE DEFAULT SYSDATE NULL,
 schedule_location VARCHAR2(100) NULL,
 schedule_deadline DATE DEFAULT SYSDATE NULL,
 schedule_joinname VARCHAR2(200) NULL);
 
/*기본키 생성*/
ALTER TABLE SCHEDULE
ADD PRIMARY KEY(schedule_num);

/*시퀀스 생성*/
CREATE SEQUENCE SCHEDULE_NUM_SEQ
START WITH 0
INCREMENT BY 1
NOCYCLE;

commit;

/*삽입*/
INSERT INTO SCHEDULE(
                schedule_num,
                schedule_title,
                schedule_content,
                schedule_location,
                schedule_joinname)
VALUES (SCHEDULE_NUM_SEQ.NEXTVAL,
        '독일vsKOSTA',
        '알아서 오세요',
        '123.666,120.999',
        '1,2,3,4');

INSERT INTO SCHEDULE(
                schedule_num,
                schedule_title,
                schedule_content,
                SCHEDULE_DATE,
                schedule_location,
                SCHEDULE_DEADLINE,
                schedule_joinname)
VALUES (SCHEDULE_NUM_SEQ.NEXTVAL,
        '집가는날',
        '집 갑시다!',
        '2016-11-01',
        '123.666,120.999',
        '2016-11-25',
        '1,2,3,4');
        
        INSERT INTO SCHEDULE(schedule_num,
			                 schedule_title,
			                 schedule_content,
			                 schedule_date,
			                 schedule_location,
			                 schedule_deadline,
			                 schedule_writer)
			   VALUES (SCHEDULE_NUM_SEQ.NEXTVAL,
                '제목',
                '내용',
                TO_DATE('2016-11-28','yyyy-mm-dd'),
			           '버거킹',
			          TO_DATE('2016-11-28','yyyy-mm-dd'),
			           '방그리'
			           );

/*수정*/
UPDATE SCHEDULE
SET schedule_title = '수정된 경기일정',
    schedule_location='22.22,99.99',
    schedule_joinname='5,6,7,8'
WHERE schedule_num = 2;

/*삭제*/
DELETE SCHEDULE
WHERE schedule_num = 3;

/*전체출력*/
SELECT schedule_num,
       schedule_title,
       schedule_date,
       schedule_deadline
FROM SCHEDULE;

/*상세 출력*/
SELECT * FROM SCHEDULE
WHERE schedule_num = 1;

/*위치 x,y좌표 출력*/
SELECT distinct regexp_substr(A.schedule_location, '[^,]+', 1, LEVEL) MEMBER
FROM (SELECT schedule_location FROM SCHEDULE) A
CONNECT BY LEVEL <= length(regexp_replace(A.schedule_location, '[^,]+',''))+1;

/*참여인원 출력*/
SELECT distinct regexp_substr(A.schedule_joinname, '[^,]+', 1, LEVEL) MEMBER
FROM (SELECT schedule_joinname FROM SCHEDULE) A
CONNECT BY LEVEL <= length(regexp_replace(A.schedule_joinname, '[^,]+',''))+1;