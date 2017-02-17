DROP TABLE SQA_TD_EMAIL_FORM CASCADE CONSTRAINTS;

CREATE TABLE SQA_TD_EMAIL_FORM
(
  FORM_ID                   NUMBER,
  REVIEW_ID                 NUMBER,
  VENDOR_ID                 NUMBER,
  VENDOR                    VARCHAR2(100 BYTE),
  CLIENT                    VARCHAR2(100 BYTE),
  REPORT_SEGMENT            VARCHAR2(100 BYTE),
  REVIEW_DATE               VARCHAR2(20 BYTE),
  FOLLOW_UP_DATE            VARCHAR2(20 BYTE),
  REVIEW_SCORE              VARCHAR2(10 BYTE),
  ENTRY_DATE                DATE,
  SENT_DATE                 DATE,
  EMAIL_TO                  VARCHAR2(200 BYTE),
  EMAIL_CC                  VARCHAR2(200 BYTE),
  EMAIL_FROM                VARCHAR2(200 BYTE),
  EMAIL_SUBJECT             VARCHAR2(1000 BYTE),
  EMAIL_BODY                CLOB,
  EMAIL_HTML                CLOB,
  EMAIL_ATTACHMENT          BLOB,
  FILENAME                  VARCHAR2(300 BYTE),
  MIMETYPE                  VARCHAR2(300 BYTE),
  LAST_UPDATE               DATE,
  EMAIL_ATTACHMENT_DETAILS  BLOB,
  DETAILS_FILENAME          VARCHAR2(300 BYTE),
  DETAILS_MIMETYPE          VARCHAR2(300 BYTE),
  DETAILS_LAST_UPDATE       DATE
)
LOB (EMAIL_ATTACHMENT_DETAILS) STORE AS (
  TABLESPACE RDM_DATA01
  ENABLE       STORAGE IN ROW
  CHUNK       16384
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          80K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                  FLASH_CACHE      DEFAULT
                  CELL_FLASH_CACHE DEFAULT
                 ))
LOB (EMAIL_ATTACHMENT) STORE AS (
  TABLESPACE RDM_DATA01
  ENABLE       STORAGE IN ROW
  CHUNK       16384
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          80K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                  FLASH_CACHE      DEFAULT
                  CELL_FLASH_CACHE DEFAULT
                 ))
LOB (EMAIL_HTML) STORE AS (
  TABLESPACE RDM_DATA01
  ENABLE       STORAGE IN ROW
  CHUNK       16384
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          80K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                  FLASH_CACHE      DEFAULT
                  CELL_FLASH_CACHE DEFAULT
                 ))
LOB (EMAIL_BODY) STORE AS (
  TABLESPACE RDM_DATA01
  ENABLE       STORAGE IN ROW
  CHUNK       16384
  RETENTION
  NOCACHE
  LOGGING
      STORAGE    (
                  INITIAL          80K
                  NEXT             1M
                  MINEXTENTS       1
                  MAXEXTENTS       UNLIMITED
                  PCTINCREASE      0
                  BUFFER_POOL      DEFAULT
                  FLASH_CACHE      DEFAULT
                  CELL_FLASH_CACHE DEFAULT
                 ))
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
