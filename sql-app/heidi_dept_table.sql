CREATE TABLE DEPT (
DEPTNO              integer NOT NULL,
DNAME               varchar(14),
LOC                 varchar(13),
CONSTRAINT DEPT_PRIMARY_KEY PRIMARY KEY (DEPTNO));

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

CREATE TABLE foo (
DEPTNO              integer NOT NULL,
DNAME               varchar(14),
LOC                 varchar(13),
CONSTRAINT DEPT_PRIMARY_KEY PRIMARY KEY (DEPTNO));