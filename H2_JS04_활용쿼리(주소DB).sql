/*-----------------------------------------------------------------
   도로명주소 검색
   정렬예시는 개발자센터 Tech&Tips 게시글 참조(주소 검색 시 검색 결과 정렬 예시 (H2 DB))
-----------------------------------------------------------------*/
/* 1. 도로명주소로 조회 */
SELECT DISTINCT A.BSI_ZON_NO, 
       B.CTP_KOR_NM ||' '||
       Decode(IFNULL(B.SIG_KOR_NM, ''),'','',B.SIG_KOR_NM||' ') ||
       CASE WHEN B.EMD_SE = '0' THEN B.EMD_KOR_NM||' ' ELSE '' END||
       B.RN||' '||
       CASE A.BULD_SE_CD WHEN '0' THEN '' WHEN '1' THEN '지하'||' ' WHEN '2' THEN '공중'||' ' END||
       A.BULD_MNNM||
       CASE WHEN A.BULD_SLNO = 0 THEN '' ELSE '-'||TO_CHAR(A.BULD_SLNO) END ||
       CASE WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '0') THEN ''
            WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '1') THEN DECODE(ISNULL(D.POS_BUL_NM, ''), '', '','('||D.POS_BUL_NM||')') 
            WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '0') THEN '('||EMD_KOR_NM||')'
            WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '1') THEN '('||EMD_KOR_NM||DECODE(ISNULL(D.POS_BUL_NM, ''), '', '',', '||D.POS_BUL_NM)||')'
       END AS ADDRESS
   FROM JS_JUSO A, JS_RNCODE B, JS_ADDINFO D
  WHERE B.ROAD_NEW_CD = A.ROAD_NEW_CD
    AND B.EMD_NO = A.EMD_NO
    AND A.BD_MGT_SN = D.BD_MGT_SN
    AND B.CTP_KOR_NM LIKE '서울특별시%'
    AND B.SIG_KOR_NM LIKE '서초구%'
    AND B.RN LIKE '반포대로%'
    AND A.BULD_MNNM = 22
    AND A.BULD_SLNO = 0
  ;

/* 2. 지번으로 조회 */
SELECT DISTINCT A.BSI_ZON_NO, 
       B.CTP_KOR_NM ||' '||
       Decode(IFNULL(B.SIG_KOR_NM, ''),'','',B.SIG_KOR_NM||' ') ||
       CASE WHEN B.EMD_SE = '0' THEN B.EMD_KOR_NM||' ' ELSE '' END||
       B.RN||' '||
       CASE A.BULD_SE_CD WHEN '0' THEN '' WHEN '1' THEN '지하'||' ' WHEN '2' THEN '공중'||' ' END||
       A.BULD_MNNM||
       CASE WHEN A.BULD_SLNO = 0 THEN '' ELSE '-'||TO_CHAR(A.BULD_SLNO) END ||
       CASE WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '0') THEN ''
            WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '1') THEN DECODE(ISNULL(D.POS_BUL_NM, ''), '', '','('||D.POS_BUL_NM||')') 
            WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '0') THEN '('||EMD_KOR_NM||')'
            WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '1') THEN '('||EMD_KOR_NM||DECODE(ISNULL(D.POS_BUL_NM, ''), '', '',', '||D.POS_BUL_NM)||')'
       END AS ADDRESS        
   FROM JS_ADDINFO D, JS_JUSO A, JS_RNCODE B
  WHERE B.ROAD_NEW_CD = A.ROAD_NEW_CD
    AND B.EMD_NO = A.EMD_NO
    AND A.BD_MGT_SN = D.BD_MGT_SN
    AND A.BD_MGT_SN IN 
       (SELECT BD_MGT_SN FROM JS_JIBUN JB 
         WHERE JB.CTP_KOR_NM LIKE '서울특별시%'
           AND JB.SIG_KOR_NM LIKE '서초구%'
           AND JB.EMD_KOR_NM LIKE '서초동%'
           AND JB.LNBR_MNNM = 1451
           AND JB.LNBR_SLNO = 34)
  ;
  
/* 3. 정렬예시 */
SELECT DISTINCT BSI_ZON_NO, ADDRESS, CTP_KOR_NM, SIG_KOR_NM, ORD_1, ORD_2, BULD_MNNM, BULD_SLNO
  FROM (SELECT A.BSI_ZON_NO, 
               B.CTP_KOR_NM ||' '||
               Decode(IFNULL(B.SIG_KOR_NM, ''),'','',B.SIG_KOR_NM||' ') ||
               CASE WHEN B.EMD_SE = '0' THEN B.EMD_KOR_NM||' ' ELSE '' END||
               B.RN||' '||
               CASE A.BULD_SE_CD WHEN '0' THEN '' WHEN '1' THEN '지하'||' ' WHEN '2' THEN '공중'||' ' END||
               A.BULD_MNNM||
               CASE WHEN A.BULD_SLNO = 0 THEN '' ELSE '-'||TO_CHAR(A.BULD_SLNO) END ||
               CASE WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '0') THEN ''
                    WHEN(B.EMD_SE = '0' AND D.BDTYP_CD = '1') THEN DECODE(ISNULL(D.POS_BUL_NM, ''), '', '','('||D.POS_BUL_NM||')') 
                    WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '0') THEN '('||EMD_KOR_NM||')'
                    WHEN(B.EMD_SE = '1' AND D.BDTYP_CD = '1') THEN '('||EMD_KOR_NM||DECODE(ISNULL(D.POS_BUL_NM, ''), '', '',', '||D.POS_BUL_NM)||')'
               END AS ADDRESS,
               REGEXP_REPLACE(RN, '[0-9 ]*', '') AS ORD_1,
               LPAD(REGEXP_REPLACE(REGEXP_REPLACE(RN, '[가-힣 ]', '', 'i'),'[A-Z ]*','','i'),20,'0') AS ORD_2, 
               B.CTP_KOR_NM, B.SIG_KOR_NM, A.BULD_MNNM, A.BULD_SLNO             
          FROM JS_JUSO A, JS_RNCODE B, JS_ADDINFO D
         WHERE B.ROAD_NEW_CD = A.ROAD_NEW_CD
           AND B.EMD_NO = A.EMD_NO
           AND A.BD_MGT_SN = D.BD_MGT_SN
           AND B.CTP_KOR_NM LIKE '서울특별시%'
           AND B.SIG_KOR_NM LIKE '서초구%'
           AND B.RN LIKE '반포대로%'
           AND A.BULD_MNNM = 22
           AND A.BULD_SLNO = 0 ) JS
   ORDER BY CTP_KOR_NM, SIG_KOR_NM, ORD_1, ORD_2, BULD_MNNM, BULD_SLNO
  ;
