DROP TABLE SQA_HIRISK_DATA CASCADE CONSTRAINTS;

CREATE TABLE SQA_HIRISK_DATA
(
  HIRISK_REP        VARCHAR2(255 BYTE),
  HIRISK_DT         DATE,
  REO_NBR           VARCHAR2(255 BYTE),
  FNMA_LN_NBR       VARCHAR2(255 BYTE),
  CITY              VARCHAR2(255 BYTE),
  ST                VARCHAR2(255 BYTE),
  POSTAL_CODE       VARCHAR2(255 BYTE),
  TASK_STATUS_DESC  VARCHAR2(255 BYTE),
  VENDOR_ID         VARCHAR2(255 BYTE),
  VENDOR_NAME       VARCHAR2(255 BYTE),
  KEY_MTH           DATE,
  CLOSE_DT          DATE,
  ADDR_1            VARCHAR2(255 BYTE),
  FILE_UPLOAD_DT    DATE                        DEFAULT SYSDATE,
  WORKING           VARCHAR2(255 BYTE),
  COMPLETED         VARCHAR2(255 BYTE),
  SAVED             VARCHAR2(255 BYTE),
  LAST_UPDATE_DT    DATE,
  HIRISK_TYPE       VARCHAR2(255 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


GRANT SELECT ON SQA_HIRISK_DATA TO RDM_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON SQA_HIRISK_DATA TO RDM_RW;
