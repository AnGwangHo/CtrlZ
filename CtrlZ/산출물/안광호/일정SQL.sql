/*���̺� ����*/
DROP TABLE SCHEDULE;

/*���̺� ����*/
CREATE TABLE SCHEDULE
(schedule_num NUMBER(11) NOT NULL,
 schedule_title VARCHAR2(100) NOT NULL,
 schedule_content VARCHAR2(1000) NULL,
 schedule_date DATE DEFAULT SYSDATE NULL,
 schedule_location VARCHAR2(100) NULL,
 schedule_deadline DATE DEFAULT SYSDATE NULL,
 schedule_joinname VARCHAR2(200) NULL);
 
/*�⺻Ű ����*/
ALTER TABLE SCHEDULE
ADD PRIMARY KEY(schedule_num);

/*������ ����*/
CREATE SEQUENCE SCHEDULE_NUM_SEQ
START WITH 0
INCREMENT BY 1
NOCYCLE;

commit;

/*����*/
INSERT INTO SCHEDULE(
                schedule_num,
                schedule_title,
                schedule_content,
                schedule_location,
                schedule_joinname)
VALUES (SCHEDULE_NUM_SEQ.NEXTVAL,
        '����vsKOSTA',
        '�˾Ƽ� ������',
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
        '�����³�',
        '�� ���ô�!',
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
                '����',
                '����',
                TO_DATE('2016-11-28','yyyy-mm-dd'),
			           '����ŷ',
			          TO_DATE('2016-11-28','yyyy-mm-dd'),
			           '��׸�'
			           );

/*����*/
UPDATE SCHEDULE
SET schedule_title = '������ �������',
    schedule_location='22.22,99.99',
    schedule_joinname='5,6,7,8'
WHERE schedule_num = 2;

/*����*/
DELETE SCHEDULE
WHERE schedule_num = 3;

/*��ü���*/
SELECT schedule_num,
       schedule_title,
       schedule_date,
       schedule_deadline
FROM SCHEDULE;

/*�� ���*/
SELECT * FROM SCHEDULE
WHERE schedule_num = 1;

/*��ġ x,y��ǥ ���*/
SELECT distinct regexp_substr(A.schedule_location, '[^,]+', 1, LEVEL) MEMBER
FROM (SELECT schedule_location FROM SCHEDULE) A
CONNECT BY LEVEL <= length(regexp_replace(A.schedule_location, '[^,]+',''))+1;

/*�����ο� ���*/
SELECT distinct regexp_substr(A.schedule_joinname, '[^,]+', 1, LEVEL) MEMBER
FROM (SELECT schedule_joinname FROM SCHEDULE) A
CONNECT BY LEVEL <= length(regexp_replace(A.schedule_joinname, '[^,]+',''))+1;