BEGIN
    FOR i IN 1..1000
    LOOP
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
            '00000001',
            i,
            1,
            100000,
            'ABCDEFABCDEFABCEF',
            100001,
            1000,
            1,
            22542353
        );
        commit;
    END LOOP;
END;
/
 
BEGIN
    FOR i IN 1..1000
    LOOP
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
            '00000002',
            i,
            1,
            100000,
            'ABCDEFABCDEFABCEF',
            100001,
            1000,
            1,
            22542353
        );
        commit;
    END LOOP;
END;
/
