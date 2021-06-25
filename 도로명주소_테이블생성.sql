/*-----------------------------------------------------------------
-- 전체분 테이블 생성
-----------------------------------------------------------------*/
/*
[주소DB]
JS_RNCODE
JS_JUSO
JS_JIBUN
JS_ADDINFO
*/

/* 주소DB 도로명코드 */
CREATE TABLE JS_RNCODE (
ROAD_NEW_CD     VARCHAR(12)  NOT NULL,   /* 도로명코드      */
RN              VARCHAR(80)  NULL,       /* 도로명          */
RN_ENG          VARCHAR(80)  NULL,       /* 도로명 로마자   */
EMD_NO          VARCHAR(2)   NOT NULL,   /* 읍면동일련번호  */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* 시도명          */
CTP_ENG_NM      VARCHAR(40)  NULL,       /* 시도명 로마자   */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* 시군구명        */
SIG_ENG_NM      VARCHAR(40)  NULL,       /* 시군구명 로마자 */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* 읍면동명        */
EMD_ENG_NM      VARCHAR(40)  NULL,       /* 읍면동명 로마자 */
EMD_SE          VARCHAR(1)   NULL,       /* 읍면동구분      */
EMD_CD          VARCHAR(3)   NULL,       /* 읍면동코드      */
USE_YN          VARCHAR(1)   NULL,       /* 사용여부        */
MVM_RES_CD      VARCHAR(1)   NULL,       /* 변경사유        */
AFTCH_INFO      VARCHAR(14)  NULL,       /* 변경이력정보    */
NTFC_DE         VARCHAR(8)   NULL,       /* 고시일자        */
ERSR_DE         VARCHAR(8)   NULL        /* 말소일자        */
);
ALTER TABLE JS_RNCODE ADD CONSTRAINT PK_JS_RNCODE PRIMARY KEY (ROAD_NEW_CD, EMD_NO);
CREATE INDEX JS_RNCODE_IDX01 ON JS_RNCODE (CTP_KOR_NM, SIG_KOR_NM, RN, ROAD_NEW_CD);
COMMENT ON COLUMN noise.js_rncode.road_new_cd IS '도로명코드';
COMMENT ON COLUMN noise.js_rncode.rn IS '도로명';
COMMENT ON COLUMN noise.js_rncode.rn_eng IS '도로명 로마자';
COMMENT ON COLUMN noise.js_rncode.emd_no IS '읍면동일련번호';
COMMENT ON COLUMN noise.js_rncode.ctp_kor_nm IS '시도명';
COMMENT ON COLUMN noise.js_rncode.ctp_eng_nm IS '시도명 로마자';
COMMENT ON COLUMN noise.js_rncode.sig_kor_nm IS '시군구명';
COMMENT ON COLUMN noise.js_rncode.sig_eng_nm IS '시군구명 로마자';
COMMENT ON COLUMN noise.js_rncode.emd_kor_nm IS '읍면동명';
COMMENT ON COLUMN noise.js_rncode.emd_eng_nm IS '읍면동명 로마자';
COMMENT ON COLUMN noise.js_rncode.emd_se IS '읍면동구분';
COMMENT ON COLUMN noise.js_rncode.emd_cd IS '읍면동코드';
COMMENT ON COLUMN noise.js_rncode.use_yn IS '사용여부';
COMMENT ON COLUMN noise.js_rncode.mvm_res_cd IS '변경사유';
COMMENT ON COLUMN noise.js_rncode.aftch_info IS '변경이력정보';
COMMENT ON COLUMN noise.js_rncode.ntfc_de IS '고시일자';
COMMENT ON COLUMN noise.js_rncode.ersr_de IS '말소일자';

/* 주소DB 주소 */
CREATE TABLE JS_JUSO (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호          */ 
ROAD_NEW_CD     VARCHAR(12)  NULL,       /* 도로명코드        */
EMD_NO          VARCHAR(2)   NULL,       /* 읍면동일련번호    */
BULD_SE_CD      VARCHAR(1)   NULL,       /* 지하여부          */
BULD_MNNM       INT          NULL,       /* 건물본번          */
BULD_SLNO       INT          NULL,       /* 건물부번          */
BSI_ZON_NO      VARCHAR(5)   NULL,       /* 기초구역번호      */
MVM_RES_CD      VARCHAR(2)   NULL,       /* 변경사유코드      */
NTFC_DE         VARCHAR(8)   NULL,       /* 고시일자          */
BF_JUSO         VARCHAR(25)  NULL,       /* 변경전 도로명주소 */
ADRDC_YN        VARCHAR(1)   NULL        /* 상세주소 부여여부 */
);
ALTER TABLE JS_JUSO ADD CONSTRAINT PK_JS_JUSO PRIMARY KEY (BD_MGT_SN);
CREATE INDEX JS_JUSO_IDX01 ON JS_JUSO (ROAD_NEW_CD, BULD_MNNM, BULD_SLNO);
COMMENT ON COLUMN noise.js_juso.bd_mgt_sn IS '관리번호';
COMMENT ON COLUMN noise.js_juso.road_new_cd IS '도로명코드';
COMMENT ON COLUMN noise.js_juso.emd_no IS '읍면동일련번호';
COMMENT ON COLUMN noise.js_juso.buld_se_cd IS '지하여부';
COMMENT ON COLUMN noise.js_juso.buld_mnnm IS '건물본번';
COMMENT ON COLUMN noise.js_juso.buld_slno IS '건물부번';
COMMENT ON COLUMN noise.js_juso.bsi_zon_no IS '기초구역번호';
COMMENT ON COLUMN noise.js_juso.mvm_res_cd IS '변경사유코드';
COMMENT ON COLUMN noise.js_juso.ntfc_de IS '고시일자';
COMMENT ON COLUMN noise.js_juso.bf_juso IS '변경전도로명주소';
COMMENT ON COLUMN noise.js_juso.adrdc_yn IS '상세주소부여 여부';


/* 주소DB 지번 */
CREATE TABLE JS_JIBUN (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호       */
BD_SEQ          VARCHAR(3)   NOT NULL,   /* 일련번호       */
ADM_CD          VARCHAR(10)  NULL,       /* 법정동코드     */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* 시도명         */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* 시군구명       */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* 법정읍면동명   */
LI_KOR_NM       VARCHAR(20)  NULL,       /* 법정리명       */
MNTN_YN         VARCHAR(1)   NULL,       /* 산여부         */
LNBR_MNNM       INT          NULL,       /* 지번본번(번지) */
LNBR_SLNO       INT          NULL,       /* 지번부번(호)   */
JIBERN_GB       VARCHAR(1)   NULL        /* 대표여부       */
);
ALTER TABLE JS_JIBUN ADD CONSTRAINT PK_JS_JIBUN PRIMARY KEY (BD_MGT_SN, BD_SEQ);
CREATE INDEX JS_JIBUN_IDX01 ON JS_JIBUN (CTP_KOR_NM, SIG_KOR_NM, EMD_KOR_NM, LNBR_MNNM, LNBR_SLNO, JIBERN_GB);
COMMENT ON COLUMN noise.js_jibun.bd_mgt_sn IS '관리번호';
COMMENT ON COLUMN noise.js_jibun.bd_seq IS '일련번호';
COMMENT ON COLUMN noise.js_jibun.adm_cd IS '법정동코드';
COMMENT ON COLUMN noise.js_jibun.ctp_kor_nm IS '시도명';
COMMENT ON COLUMN noise.js_jibun.sig_kor_nm IS '시군구명';
COMMENT ON COLUMN noise.js_jibun.emd_kor_nm IS '법정읍면동명';
COMMENT ON COLUMN noise.js_jibun.li_kor_nm IS '법정리명';
COMMENT ON COLUMN noise.js_jibun.mntn_yn IS '산여부';
COMMENT ON COLUMN noise.js_jibun.lnbr_mnnm IS '지번본번(번지)';
COMMENT ON COLUMN noise.js_jibun.lnbr_slno IS '지번부번(호)';
COMMENT ON COLUMN noise.js_jibun.jibern_gb IS '대표여부';


/* 주소DB 부가정보 */
CREATE TABLE JS_ADDINFO (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호          */
HEMD_CD         VARCHAR(10)  NULL,       /* 행정동코드        */
HEMD_NM         VARCHAR(20)  NULL,       /* 행정동명          */
ZIP             VARCHAR(5)   NULL,       /* 우편번호          */
ZIP_NO          VARCHAR(3)   NULL,       /* 우편번호 일련번호 */
ZIP_NM          VARCHAR(40)  NULL,       /* 다량배달처명      */
BULD_NM         VARCHAR(40)  NULL,       /* 건축물대장 건물명 */
POS_BUL_NM      VARCHAR(200) NULL,       /* 시군구 건물명     */
BDTYP_CD        VARCHAR(1)   NULL        /* 공동주택여부      */
);
ALTER TABLE JS_ADDINFO ADD CONSTRAINT PK_JS_ADDINFO PRIMARY KEY (BD_MGT_SN);
COMMENT ON COLUMN noise.js_addinfo.bd_mgt_sn IS '관리번호';
COMMENT ON COLUMN noise.js_addinfo.hemd_cd IS '행정동 코드';
COMMENT ON COLUMN noise.js_addinfo.hemd_nm IS '행정동명';
COMMENT ON COLUMN noise.js_addinfo.zip IS '우편번호';
COMMENT ON COLUMN noise.js_addinfo.zip_no IS '우편번호일련번호';
COMMENT ON COLUMN noise.js_addinfo.zip_nm IS '다량배달처명';
COMMENT ON COLUMN noise.js_addinfo.buld_nm IS '건축물대장 건물명';
COMMENT ON COLUMN noise.js_addinfo.pos_bul_nm IS '시군구 건물명';
COMMENT ON COLUMN noise.js_addinfo.bdtyp_cd IS '공동주택여부';



/*-----------------------------------------------------------------
  변동분 현행화용 임시테이블 생성
  주소DB와 LAYOUT 동일
  일변동 1일치의 데이터만 입력 후 현행화, 삭제하는 개념으로 생성함.
  별도 인덱스 없음  
-----------------------------------------------------------------*/

/*
JS_RNCODE_TEMP
JS_JUSO_TEMP
JS_JIBUN_TEMP
JS_ADDINFO_TEMP
*/

CREATE TABLE JS_RNCODE_TEMP (
ROAD_NEW_CD     VARCHAR(12)  NOT NULL,   /* 도로명코드      */
RN              VARCHAR(80)  NULL,       /* 도로명          */
RN_ENG          VARCHAR(80)  NULL,       /* 도로명 로마자   */
EMD_NO          VARCHAR(2)   NOT NULL,   /* 읍면동일련번호  */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* 시도명          */
CTP_ENG_NM      VARCHAR(40)  NULL,       /* 시도명 로마자   */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* 시군구명        */
SIG_ENG_NM      VARCHAR(40)  NULL,       /* 시군구명 로마자 */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* 읍면동명        */
EMD_ENG_NM      VARCHAR(40)  NULL,       /* 읍면동명 로마자 */
EMD_SE          VARCHAR(1)   NULL,       /* 읍면동구분      */
EMD_CD          VARCHAR(3)   NULL,       /* 읍면동코드      */
USE_YN          VARCHAR(1)   NULL,       /* 사용여부        */
MVM_RES_CD      VARCHAR(1)   NULL,       /* 변경사유        */
AFTCH_INFO      VARCHAR(14)  NULL,       /* 변경이력정보    */
NTFC_DE         VARCHAR(8)   NULL,       /* 고시일자        */
ERSR_DE         VARCHAR(8)   NULL        /* 말소일자        */
);
ALTER TABLE JS_RNCODE_TEMP ADD CONSTRAINT PK_JS_RNCODE_TEMP PRIMARY KEY (ROAD_NEW_CD, EMD_NO);

CREATE TABLE JS_JUSO_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호          */
ROAD_NEW_CD     VARCHAR(12)  NULL,       /* 도로명코드        */
EMD_NO          VARCHAR(2)   NULL,       /* 읍면동일련번호    */
BULD_SE_CD      VARCHAR(1)   NULL,       /* 지하여부          */
BULD_MNNM       INT          NULL,       /* 건물본번          */
BULD_SLNO       INT          NULL,       /* 건물부번          */
BSI_ZON_NO      VARCHAR(5)   NULL,       /* 기초구역번호      */
MVM_RES_CD      VARCHAR(2)   NULL,       /* 변경사유코드      */
NTFC_DE         VARCHAR(8)   NULL,       /* 고시일자          */
BF_JUSO         VARCHAR(25)  NULL,       /* 변경전 도로명주소 */
ADRDC_YN        VARCHAR(1)   NULL        /* 상세주소 부여여부 */
);
ALTER TABLE JS_JUSO_TEMP ADD CONSTRAINT PK_JS_JUSO_TEMP PRIMARY KEY (BD_MGT_SN);

CREATE TABLE JS_JIBUN_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호       */
BD_SEQ          VARCHAR(3)   NOT NULL,   /* 일련번호       */
ADM_CD          VARCHAR(10)  NULL,       /* 법정동코드     */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* 시도명         */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* 시군구명       */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* 법정읍면동명   */
LI_KOR_NM       VARCHAR(20)  NULL,       /* 법정리명       */
MNTN_YN         VARCHAR(1)   NULL,       /* 산여부         */
LNBR_MNNM       INT          NULL,       /* 지번본번(번지) */
LNBR_SLNO       INT          NULL,       /* 지번부번(호)   */
JIBERN_GB       VARCHAR(1)   NULL,       /* 대표여부       */
MVM_RES_CD      VARCHAR(2)   NULL        /* 변경사유코드   */
);
ALTER TABLE JS_JIBUN_TEMP ADD CONSTRAINT PK_JS_JIBUN_TEMP PRIMARY KEY (BD_MGT_SN, BD_SEQ);

CREATE TABLE JS_ADDINFO_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* 관리번호          */
HEMD_CD         VARCHAR(10)  NULL,       /* 행정동코드        */
HEMD_NM         VARCHAR(20)  NULL,       /* 행정동명          */
ZIP             VARCHAR(5)   NULL,       /* 우편번호          */
ZIP_NO          VARCHAR(3)   NULL,       /* 우편번호 일련번호 */
ZIP_NM          VARCHAR(40)  NULL,       /* 다량배달처명      */
BULD_NM         VARCHAR(40)  NULL,       /* 건축물대장 건물명 */
POS_BUL_NM      VARCHAR(200) NULL,       /* 시군구 건물명     */
BDTYP_CD        VARCHAR(1)   NULL,       /* 공동주택여부      */
MVM_RES_CD      VARCHAR(2)   NULL        /* 변경사유코드      */
);
ALTER TABLE JS_ADDINFO_TEMP ADD CONSTRAINT PK_JS_ADDINFO_TEMP PRIMARY KEY (BD_MGT_SN);

