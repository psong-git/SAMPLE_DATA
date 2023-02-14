CREATE OR REPLACE PROCEDURE ARK_DEMO_INSERT_ORDER
(ROW_COUNT IN number,
LOOP_COUNT IN number)
IS
    V_IDX NUMBER;
    V_CLN_NM VARCHAR2(20);
    V_PKGNO NUMBER;
    V_PKGNAME VARCHAR2(20);
    V_DATE DATE;
    V_TIMESTAMP TIMESTAMP;
BEGIN
    for i in 1..LOOP_COUNT loop
        for j in 1..ROW_COUNT loop
            SELECT NAME INTO V_CLN_NM FROM CLIENT_NAME WHERE ID = TRUNC(DBMS_RANDOM.VALUE(1, 15));
             
            V_IDX := ARK_DEMO_SEQ.NEXTVAL;
            V_PKGNO := TRUNC(DBMS_RANDOM.VALUE(0, 2));
            V_PKGNAME := DBMS_RANDOM.STRING('L',20);
            V_DATE := SYSDATE;
            V_TIMESTAMP := SYSTIMESTAMP;
             
            INSERT into ARK_DEMO_ORDER values (
            V_IDX,
            'A',
            V_CLN_NM,
            V_DATE,
            TRUNC(DBMS_RANDOM.VALUE(100, 50000)),
            DBMS_RANDOM.STRING('U',20),
            TRUNC(DBMS_RANDOM.VALUE(100, 50000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 500)),
            TO_CHAR(V_DATE, 'YYYYMMDD'),
            V_PKGNO,
            'UNKNOWN',
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('X',20),
            DBMS_RANDOM.STRING('X',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000)),
            V_TIMESTAMP,
            'N',
            V_TIMESTAMP
            );
             
            INSERT into ARK_DEMO_NEW_ORDER values (
            V_IDX,
            V_CLN_NM,
            V_DATE,
            TRUNC(DBMS_RANDOM.VALUE(100, 50000)),
            DBMS_RANDOM.STRING('U',20),
            TRUNC(DBMS_RANDOM.VALUE(100, 50000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 500)),
            TO_CHAR(V_DATE, 'YYYYMMDD'),
            V_PKGNO,
            V_PKGNAME,
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('A',10),
            DBMS_RANDOM.STRING('X',20),
            DBMS_RANDOM.STRING('X',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000)),
            V_TIMESTAMP
            );
             
            INSERT into ARK_DEMO_CHK values (
            V_IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('L',30),
            DBMS_RANDOM.STRING('A',40),
            TO_CHAR(V_DATE, 'YYYYMMDD'),
            V_PKGNO,
            V_TIMESTAMP,
            'N',
            V_TIMESTAMP);
             
            UPDATE ARK_DEMO_ORDER
            SET PKG_NAME=V_PKGNAME, UPD_TIME=SYSTIMESTAMP, UPD_YN = 'Y'
            WHERE ID = V_IDX;          
        end loop;
        commit;
    end loop;
END;
/
 
CREATE OR REPLACE PROCEDURE ARK_DEMO_YESTERDAY_UPDATE
IS
BEGIN
    UPDATE ARK_DEMO_CHK
    SET UPD_TIME=SYSTIMESTAMP, UPD_YN = 'Y'
    WHERE CHK_DT = (select TO_CHAR(SYSDATE-1, 'YYYYMMDD') FROM DUAL);
END;
/
