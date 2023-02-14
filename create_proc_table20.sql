CREATE OR REPLACE PROCEDURE INSERT_ORDER
(ROW_COUNT IN number,
LOOP_COUNT IN number)
IS
    IDX NUMBER;
BEGIN
    for i in 1..LOOP_COUNT loop
        for j in 1..ROW_COUNT loop
 
            IDX := ORDER_SEQ.NEXTVAL;
 
            INSERT into ORDER1 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER2 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER3 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER4 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER5 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER6 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER7 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER8 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER9 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER10 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER11 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER12 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER13 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER14 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER15 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER16 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER17 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER18 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER19 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
            INSERT into ORDER20 values (
            IDX,
            DBMS_RANDOM.STRING('U',20),
            DBMS_RANDOM.STRING('A',50),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 1000)),
            DBMS_RANDOM.STRING('A',  DBMS_RANDOM.VALUE(100, 4000))
            );
 
        end loop;
        commit;
    end loop;
END;
/
