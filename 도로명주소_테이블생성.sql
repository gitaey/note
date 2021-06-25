/*-----------------------------------------------------------------
-- ��ü�� ���̺� ����
-----------------------------------------------------------------*/
/*
[�ּ�DB]
JS_RNCODE
JS_JUSO
JS_JIBUN
JS_ADDINFO
*/

/* �ּ�DB ���θ��ڵ� */
CREATE TABLE JS_RNCODE (
ROAD_NEW_CD     VARCHAR(12)  NOT NULL,   /* ���θ��ڵ�      */
RN              VARCHAR(80)  NULL,       /* ���θ�          */
RN_ENG          VARCHAR(80)  NULL,       /* ���θ� �θ���   */
EMD_NO          VARCHAR(2)   NOT NULL,   /* ���鵿�Ϸù�ȣ  */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* �õ���          */
CTP_ENG_NM      VARCHAR(40)  NULL,       /* �õ��� �θ���   */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* �ñ�����        */
SIG_ENG_NM      VARCHAR(40)  NULL,       /* �ñ����� �θ��� */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* ���鵿��        */
EMD_ENG_NM      VARCHAR(40)  NULL,       /* ���鵿�� �θ��� */
EMD_SE          VARCHAR(1)   NULL,       /* ���鵿����      */
EMD_CD          VARCHAR(3)   NULL,       /* ���鵿�ڵ�      */
USE_YN          VARCHAR(1)   NULL,       /* ��뿩��        */
MVM_RES_CD      VARCHAR(1)   NULL,       /* �������        */
AFTCH_INFO      VARCHAR(14)  NULL,       /* �����̷�����    */
NTFC_DE         VARCHAR(8)   NULL,       /* �������        */
ERSR_DE         VARCHAR(8)   NULL        /* ��������        */
);
ALTER TABLE JS_RNCODE ADD CONSTRAINT PK_JS_RNCODE PRIMARY KEY (ROAD_NEW_CD, EMD_NO);
CREATE INDEX JS_RNCODE_IDX01 ON JS_RNCODE (CTP_KOR_NM, SIG_KOR_NM, RN, ROAD_NEW_CD);
COMMENT ON COLUMN noise.js_rncode.road_new_cd IS '���θ��ڵ�';
COMMENT ON COLUMN noise.js_rncode.rn IS '���θ�';
COMMENT ON COLUMN noise.js_rncode.rn_eng IS '���θ� �θ���';
COMMENT ON COLUMN noise.js_rncode.emd_no IS '���鵿�Ϸù�ȣ';
COMMENT ON COLUMN noise.js_rncode.ctp_kor_nm IS '�õ���';
COMMENT ON COLUMN noise.js_rncode.ctp_eng_nm IS '�õ��� �θ���';
COMMENT ON COLUMN noise.js_rncode.sig_kor_nm IS '�ñ�����';
COMMENT ON COLUMN noise.js_rncode.sig_eng_nm IS '�ñ����� �θ���';
COMMENT ON COLUMN noise.js_rncode.emd_kor_nm IS '���鵿��';
COMMENT ON COLUMN noise.js_rncode.emd_eng_nm IS '���鵿�� �θ���';
COMMENT ON COLUMN noise.js_rncode.emd_se IS '���鵿����';
COMMENT ON COLUMN noise.js_rncode.emd_cd IS '���鵿�ڵ�';
COMMENT ON COLUMN noise.js_rncode.use_yn IS '��뿩��';
COMMENT ON COLUMN noise.js_rncode.mvm_res_cd IS '�������';
COMMENT ON COLUMN noise.js_rncode.aftch_info IS '�����̷�����';
COMMENT ON COLUMN noise.js_rncode.ntfc_de IS '�������';
COMMENT ON COLUMN noise.js_rncode.ersr_de IS '��������';

/* �ּ�DB �ּ� */
CREATE TABLE JS_JUSO (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ          */ 
ROAD_NEW_CD     VARCHAR(12)  NULL,       /* ���θ��ڵ�        */
EMD_NO          VARCHAR(2)   NULL,       /* ���鵿�Ϸù�ȣ    */
BULD_SE_CD      VARCHAR(1)   NULL,       /* ���Ͽ���          */
BULD_MNNM       INT          NULL,       /* �ǹ�����          */
BULD_SLNO       INT          NULL,       /* �ǹ��ι�          */
BSI_ZON_NO      VARCHAR(5)   NULL,       /* ���ʱ�����ȣ      */
MVM_RES_CD      VARCHAR(2)   NULL,       /* ��������ڵ�      */
NTFC_DE         VARCHAR(8)   NULL,       /* �������          */
BF_JUSO         VARCHAR(25)  NULL,       /* ������ ���θ��ּ� */
ADRDC_YN        VARCHAR(1)   NULL        /* ���ּ� �ο����� */
);
ALTER TABLE JS_JUSO ADD CONSTRAINT PK_JS_JUSO PRIMARY KEY (BD_MGT_SN);
CREATE INDEX JS_JUSO_IDX01 ON JS_JUSO (ROAD_NEW_CD, BULD_MNNM, BULD_SLNO);
COMMENT ON COLUMN noise.js_juso.bd_mgt_sn IS '������ȣ';
COMMENT ON COLUMN noise.js_juso.road_new_cd IS '���θ��ڵ�';
COMMENT ON COLUMN noise.js_juso.emd_no IS '���鵿�Ϸù�ȣ';
COMMENT ON COLUMN noise.js_juso.buld_se_cd IS '���Ͽ���';
COMMENT ON COLUMN noise.js_juso.buld_mnnm IS '�ǹ�����';
COMMENT ON COLUMN noise.js_juso.buld_slno IS '�ǹ��ι�';
COMMENT ON COLUMN noise.js_juso.bsi_zon_no IS '���ʱ�����ȣ';
COMMENT ON COLUMN noise.js_juso.mvm_res_cd IS '��������ڵ�';
COMMENT ON COLUMN noise.js_juso.ntfc_de IS '�������';
COMMENT ON COLUMN noise.js_juso.bf_juso IS '���������θ��ּ�';
COMMENT ON COLUMN noise.js_juso.adrdc_yn IS '���ּҺο� ����';


/* �ּ�DB ���� */
CREATE TABLE JS_JIBUN (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ       */
BD_SEQ          VARCHAR(3)   NOT NULL,   /* �Ϸù�ȣ       */
ADM_CD          VARCHAR(10)  NULL,       /* �������ڵ�     */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* �õ���         */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* �ñ�����       */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* �������鵿��   */
LI_KOR_NM       VARCHAR(20)  NULL,       /* ��������       */
MNTN_YN         VARCHAR(1)   NULL,       /* �꿩��         */
LNBR_MNNM       INT          NULL,       /* ��������(����) */
LNBR_SLNO       INT          NULL,       /* �����ι�(ȣ)   */
JIBERN_GB       VARCHAR(1)   NULL        /* ��ǥ����       */
);
ALTER TABLE JS_JIBUN ADD CONSTRAINT PK_JS_JIBUN PRIMARY KEY (BD_MGT_SN, BD_SEQ);
CREATE INDEX JS_JIBUN_IDX01 ON JS_JIBUN (CTP_KOR_NM, SIG_KOR_NM, EMD_KOR_NM, LNBR_MNNM, LNBR_SLNO, JIBERN_GB);
COMMENT ON COLUMN noise.js_jibun.bd_mgt_sn IS '������ȣ';
COMMENT ON COLUMN noise.js_jibun.bd_seq IS '�Ϸù�ȣ';
COMMENT ON COLUMN noise.js_jibun.adm_cd IS '�������ڵ�';
COMMENT ON COLUMN noise.js_jibun.ctp_kor_nm IS '�õ���';
COMMENT ON COLUMN noise.js_jibun.sig_kor_nm IS '�ñ�����';
COMMENT ON COLUMN noise.js_jibun.emd_kor_nm IS '�������鵿��';
COMMENT ON COLUMN noise.js_jibun.li_kor_nm IS '��������';
COMMENT ON COLUMN noise.js_jibun.mntn_yn IS '�꿩��';
COMMENT ON COLUMN noise.js_jibun.lnbr_mnnm IS '��������(����)';
COMMENT ON COLUMN noise.js_jibun.lnbr_slno IS '�����ι�(ȣ)';
COMMENT ON COLUMN noise.js_jibun.jibern_gb IS '��ǥ����';


/* �ּ�DB �ΰ����� */
CREATE TABLE JS_ADDINFO (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ          */
HEMD_CD         VARCHAR(10)  NULL,       /* �������ڵ�        */
HEMD_NM         VARCHAR(20)  NULL,       /* ��������          */
ZIP             VARCHAR(5)   NULL,       /* �����ȣ          */
ZIP_NO          VARCHAR(3)   NULL,       /* �����ȣ �Ϸù�ȣ */
ZIP_NM          VARCHAR(40)  NULL,       /* �ٷ����ó��      */
BULD_NM         VARCHAR(40)  NULL,       /* ���๰���� �ǹ��� */
POS_BUL_NM      VARCHAR(200) NULL,       /* �ñ��� �ǹ���     */
BDTYP_CD        VARCHAR(1)   NULL        /* �������ÿ���      */
);
ALTER TABLE JS_ADDINFO ADD CONSTRAINT PK_JS_ADDINFO PRIMARY KEY (BD_MGT_SN);
COMMENT ON COLUMN noise.js_addinfo.bd_mgt_sn IS '������ȣ';
COMMENT ON COLUMN noise.js_addinfo.hemd_cd IS '������ �ڵ�';
COMMENT ON COLUMN noise.js_addinfo.hemd_nm IS '��������';
COMMENT ON COLUMN noise.js_addinfo.zip IS '�����ȣ';
COMMENT ON COLUMN noise.js_addinfo.zip_no IS '�����ȣ�Ϸù�ȣ';
COMMENT ON COLUMN noise.js_addinfo.zip_nm IS '�ٷ����ó��';
COMMENT ON COLUMN noise.js_addinfo.buld_nm IS '���๰���� �ǹ���';
COMMENT ON COLUMN noise.js_addinfo.pos_bul_nm IS '�ñ��� �ǹ���';
COMMENT ON COLUMN noise.js_addinfo.bdtyp_cd IS '�������ÿ���';



/*-----------------------------------------------------------------
  ������ ����ȭ�� �ӽ����̺� ����
  �ּ�DB�� LAYOUT ����
  �Ϻ��� 1��ġ�� �����͸� �Է� �� ����ȭ, �����ϴ� �������� ������.
  ���� �ε��� ����  
-----------------------------------------------------------------*/

/*
JS_RNCODE_TEMP
JS_JUSO_TEMP
JS_JIBUN_TEMP
JS_ADDINFO_TEMP
*/

CREATE TABLE JS_RNCODE_TEMP (
ROAD_NEW_CD     VARCHAR(12)  NOT NULL,   /* ���θ��ڵ�      */
RN              VARCHAR(80)  NULL,       /* ���θ�          */
RN_ENG          VARCHAR(80)  NULL,       /* ���θ� �θ���   */
EMD_NO          VARCHAR(2)   NOT NULL,   /* ���鵿�Ϸù�ȣ  */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* �õ���          */
CTP_ENG_NM      VARCHAR(40)  NULL,       /* �õ��� �θ���   */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* �ñ�����        */
SIG_ENG_NM      VARCHAR(40)  NULL,       /* �ñ����� �θ��� */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* ���鵿��        */
EMD_ENG_NM      VARCHAR(40)  NULL,       /* ���鵿�� �θ��� */
EMD_SE          VARCHAR(1)   NULL,       /* ���鵿����      */
EMD_CD          VARCHAR(3)   NULL,       /* ���鵿�ڵ�      */
USE_YN          VARCHAR(1)   NULL,       /* ��뿩��        */
MVM_RES_CD      VARCHAR(1)   NULL,       /* �������        */
AFTCH_INFO      VARCHAR(14)  NULL,       /* �����̷�����    */
NTFC_DE         VARCHAR(8)   NULL,       /* �������        */
ERSR_DE         VARCHAR(8)   NULL        /* ��������        */
);
ALTER TABLE JS_RNCODE_TEMP ADD CONSTRAINT PK_JS_RNCODE_TEMP PRIMARY KEY (ROAD_NEW_CD, EMD_NO);

CREATE TABLE JS_JUSO_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ          */
ROAD_NEW_CD     VARCHAR(12)  NULL,       /* ���θ��ڵ�        */
EMD_NO          VARCHAR(2)   NULL,       /* ���鵿�Ϸù�ȣ    */
BULD_SE_CD      VARCHAR(1)   NULL,       /* ���Ͽ���          */
BULD_MNNM       INT          NULL,       /* �ǹ�����          */
BULD_SLNO       INT          NULL,       /* �ǹ��ι�          */
BSI_ZON_NO      VARCHAR(5)   NULL,       /* ���ʱ�����ȣ      */
MVM_RES_CD      VARCHAR(2)   NULL,       /* ��������ڵ�      */
NTFC_DE         VARCHAR(8)   NULL,       /* �������          */
BF_JUSO         VARCHAR(25)  NULL,       /* ������ ���θ��ּ� */
ADRDC_YN        VARCHAR(1)   NULL        /* ���ּ� �ο����� */
);
ALTER TABLE JS_JUSO_TEMP ADD CONSTRAINT PK_JS_JUSO_TEMP PRIMARY KEY (BD_MGT_SN);

CREATE TABLE JS_JIBUN_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ       */
BD_SEQ          VARCHAR(3)   NOT NULL,   /* �Ϸù�ȣ       */
ADM_CD          VARCHAR(10)  NULL,       /* �������ڵ�     */
CTP_KOR_NM      VARCHAR(20)  NULL,       /* �õ���         */
SIG_KOR_NM      VARCHAR(20)  NULL,       /* �ñ�����       */
EMD_KOR_NM      VARCHAR(20)  NULL,       /* �������鵿��   */
LI_KOR_NM       VARCHAR(20)  NULL,       /* ��������       */
MNTN_YN         VARCHAR(1)   NULL,       /* �꿩��         */
LNBR_MNNM       INT          NULL,       /* ��������(����) */
LNBR_SLNO       INT          NULL,       /* �����ι�(ȣ)   */
JIBERN_GB       VARCHAR(1)   NULL,       /* ��ǥ����       */
MVM_RES_CD      VARCHAR(2)   NULL        /* ��������ڵ�   */
);
ALTER TABLE JS_JIBUN_TEMP ADD CONSTRAINT PK_JS_JIBUN_TEMP PRIMARY KEY (BD_MGT_SN, BD_SEQ);

CREATE TABLE JS_ADDINFO_TEMP (
BD_MGT_SN       VARCHAR(25)  NOT NULL,   /* ������ȣ          */
HEMD_CD         VARCHAR(10)  NULL,       /* �������ڵ�        */
HEMD_NM         VARCHAR(20)  NULL,       /* ��������          */
ZIP             VARCHAR(5)   NULL,       /* �����ȣ          */
ZIP_NO          VARCHAR(3)   NULL,       /* �����ȣ �Ϸù�ȣ */
ZIP_NM          VARCHAR(40)  NULL,       /* �ٷ����ó��      */
BULD_NM         VARCHAR(40)  NULL,       /* ���๰���� �ǹ��� */
POS_BUL_NM      VARCHAR(200) NULL,       /* �ñ��� �ǹ���     */
BDTYP_CD        VARCHAR(1)   NULL,       /* �������ÿ���      */
MVM_RES_CD      VARCHAR(2)   NULL        /* ��������ڵ�      */
);
ALTER TABLE JS_ADDINFO_TEMP ADD CONSTRAINT PK_JS_ADDINFO_TEMP PRIMARY KEY (BD_MGT_SN);

