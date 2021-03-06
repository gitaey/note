/*-----------------------------------------------------------------
   주소DB 전체분 데이터 구축
   H2DB로 대량데이터 구축시 AUTO COMMIT을 비활성화 시키고 실행하면 속도가 더 빠릅니다.
-----------------------------------------------------------------*/

/* 주소DB_도로명코드 */
INSERT INTO JS_RNCODE SELECT * FROM CSVREAD('D:\JusoData\Juso\개선_도로명코드_전체분.txt', 'ROAD_NEW_CD|RN|RN_ENG|EMD_NO|CTP_KOR_NM|CTP_ENG_NM|SIG_KOR_NM|SIG_ENG_NM|EMD_KOR_NM|EMD_ENG_NM|EMD_SE|EMD_CD|USE_YN|MVM_RES_CD|AFTCH_INFO|NTFC_DE|ERSR_DE' , 'charset=CP949 fieldSeparator=|');
COMMIT;

/* 주소DB_주소 */
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_강원도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_경기도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_경상남도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_경상북도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_광주광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_대구광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_대전광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_부산광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_서울특별시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_세종특별자치시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_울산광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_인천광역시.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_전라남도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_전라북도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_제주특별자치도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_충청남도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JUSO SELECT * FROM CSVREAD('D:\JusoData\Juso\주소_충청북도.txt', 'BD_MGT_SN|ROAD_NEW_CD|EMD_NO|BULD_SE_CD|BULD_MNNM|BULD_SLNO|BSI_ZON_NO|MVM_RES_CD|NTFC_DE|BF_JUSO|ADRDC_YN' , 'charset=CP949 fieldSeparator=|');
COMMIT;

/* 주소DB_지번 */
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_강원도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_경기도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_경상남도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_경상북도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_광주광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_대구광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_대전광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_부산광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_서울특별시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_세종특별자치시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_울산광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_인천광역시.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_전라남도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_전라북도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_제주특별자치도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_충청남도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_JIBUN SELECT * FROM CSVREAD('D:\JusoData\Juso\지번_충청북도.txt', 'BD_MGT_SN|BD_SEQ|ADM_CD|CTP_KOR_NM|SIG_KOR_NM|EMD_KOR_NM|LI_KOR_NM|MNTN_YN|LNBR_MNNM|LNBR_SLNO|JIBERN_GB' , 'charset=CP949 fieldSeparator=|');
COMMIT;

/* 주소DB_부가정보 */
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_강원도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_경기도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_경상남도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_경상북도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_광주광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_대구광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_대전광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_부산광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_서울특별시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_세종특별자치시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_울산광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_인천광역시.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_전라남도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_전라북도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_제주특별자치도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_충청남도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
INSERT INTO JS_ADDINFO SELECT * FROM CSVREAD('D:\JusoData\Juso\부가정보_충청북도.txt', 'BD_MGT_SN|HEMD_CD|HEMD_NM|ZIP|ZIP_NO|ZIP_NM|BULD_NM|POS_BUL_NM|BDTYP_CD' , 'charset=CP949 fieldSeparator=|');
COMMIT;
