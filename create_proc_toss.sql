CREATE OR REPLACE PROCEDURE FIXED_CASE
(V_SESSION_NO IN number, LOOP_COUNT IN number)
IS
BEGIN
    for i in 1..LOOP_COUNT loop
        update ON_TBL_SPOT_ORD
        set CHG_ORD_NO = ORD_NO, CHANGE_YN = 'Y'
        where ORD_DT = '00000001' AND SESSION_NO = V_SESSION_NO AND ORD_NO = 1;
  
        update ON_TBL_SPOT_ORD
        set UPDATED_YN = 'N'
        where ORD_DT = '00000002' AND SESSION_NO = V_SESSION_NO AND ORD_NO = 1;
          
        INSERT INTO ON_TBL_SPOT_ORD (
            ORD_DT,
            SESSION_NO,
            ORD_NO,
            PRNT_ORD_NO,
            ACNT_NO,
            PTFL_NO,
            BSK_NO,
            TRCH_NO,
            ITEM_NO
        ) VALUES (
            '00000003',
            V_SESSION_NO,
            i,
            100000,
            'ABCDEFABCDEFABCEF',
            100001,
            1000,
            1,
            22542353
        );
        commit;
          
        update ON_TBL_SPOT_ORD
        set UPDATED_YN = 'Y', ISU_NO = DBMS_RANDOM.STRING('U', 12), SETT_DT1 = DBMS_RANDOM.STRING('U', 8)
        where ORD_DT = '00000003' AND SESSION_NO = V_SESSION_NO AND ORD_NO = i;
          
        update ON_TBL_SPOT_ORD
        set UPDATED_YN = 'Y'
        where ORD_DT = '00000002' AND SESSION_NO = V_SESSION_NO AND ORD_NO = 1;
        commit;
    END loop;
END;
/
