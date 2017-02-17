ALTER TABLE SQA_TD_DATA
 DROP PRIMARY KEY CASCADE;

DROP TABLE SQA_TD_DATA CASCADE CONSTRAINTS;

CREATE TABLE SQA_TD_DATA
(
  DATA_DT                         DATE          DEFAULT SYSDATE,
  SQA_TD_REP                      VARCHAR2(255 BYTE),
  LOANNUMBER                      VARCHAR2(255 BYTE),
  WORK_CODE                       VARCHAR2(255 BYTE),
  SPIPROPERTYID                   VARCHAR2(255 BYTE),
  ADD_1                           VARCHAR2(255 BYTE),
  ADD_2                           VARCHAR2(255 BYTE),
  CITY                            VARCHAR2(255 BYTE),
  ST                              VARCHAR2(2 BYTE),
  ZIP                             VARCHAR2(15 BYTE),
  CONTRACTOR                      VARCHAR2(255 BYTE),
  CLIENT                          VARCHAR2(6 BYTE),
  LOAN_TYPE                       VARCHAR2(10 BYTE),
  ORDER_DT                        DATE,
  COMPLETED_DT                    DATE,
  ORDER_NUM                       VARCHAR2(255 BYTE),
  VOLT_STICK                      VARCHAR2(5 BYTE),
  FRONT_OF_HOUSE                  VARCHAR2(5 BYTE),
  RIGHT_LEFT_SIDE_OF_HOUSE        VARCHAR2(5 BYTE),
  UP_DOWN_STREET                  VARCHAR2(5 BYTE),
  ADDRESS_PHOTO                   VARCHAR2(5 BYTE),
  LOCKBOX                         VARCHAR2(5 BYTE),
  BACK_OF_PROPERTY                VARCHAR2(5 BYTE),
  GATE_ALLOWING_ENTRY             VARCHAR2(5 BYTE),
  BEHIND_BUILDING_GARAGE          VARCHAR2(5 BYTE),
  SWEEPING                        VARCHAR2(5 BYTE),
  VACUUMING                       VARCHAR2(5 BYTE),
  MOPPING                         VARCHAR2(5 BYTE),
  WIPING_SURFACES                 VARCHAR2(5 BYTE),
  INSIDE_ALL_TOILETS              VARCHAR2(5 BYTE),
  INSIDE_OUT_APPLIANCES           VARCHAR2(5 BYTE),
  SAFETY_HAZARD_AREA              VARCHAR2(5 BYTE),
  INSIDE_ALL_CLOSETS              VARCHAR2(5 BYTE),
  ENTIRE_BASEMENT                 VARCHAR2(5 BYTE),
  CIRCUIT_BREAKER                 VARCHAR2(5 BYTE),
  CHECKLIST                       VARCHAR2(5 BYTE),
  AIR_FRESHENERS_DATED            VARCHAR2(5 BYTE),
  SHOW_ALL_AIR_FRESHENERS         VARCHAR2(5 BYTE),
  FOUR_SIDES_OF_HOUSE             VARCHAR2(5 BYTE),
  BA_FRONT_YARD                   VARCHAR2(5 BYTE),
  BA_BACK_YARD                    VARCHAR2(5 BYTE),
  WEED_WHACKING                   VARCHAR2(5 BYTE),
  EDGED_PAVED_AREAS               VARCHAR2(5 BYTE),
  FENCE_FOUNDATION_NO_WEEDS       VARCHAR2(5 BYTE),
  UNDER_PORCH_DECK                VARCHAR2(5 BYTE),
  SHRUBS_CUT_WHEN_NEEDED          VARCHAR2(5 BYTE),
  RULER_PHOT0_TWO_INCHES          VARCHAR2(5 BYTE),
  DRIVE_WALK_FREE_OF_WEEDS        VARCHAR2(5 BYTE),
  FLOWER_ROCKSCAPE_FREE_OF_WEEDS  VARCHAR2(5 BYTE),
  CLIPPINGS_LEAVES_REMOVED        VARCHAR2(5 BYTE),
  NEED_WORKED                     VARCHAR2(5 BYTE),
  WORKING                         VARCHAR2(5 BYTE),
  COMPLETED                       VARCHAR2(5 BYTE),
  SAVED                           VARCHAR2(5 BYTE),
  PID                             NUMBER,
  COMMENTS                        CLOB,
  TOP_DOWN_DT                     DATE,
  LAST_UPDATE_DT                  DATE,
  NBR_QUESTIONS                   NUMBER,
  NBR_QUESTIONS_YES               NUMBER,
  REPORT_SEGMENT                  VARCHAR2(20 BYTE),
  FRAUD_INDC                      VARCHAR2(5 BYTE),
  REVIEW_ID                       NUMBER,
  QP_INDC                         VARCHAR2(5 BYTE),
  BATCH_NO                        NUMBER
)
LOB (COMMENTS) STORE AS (
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


CREATE INDEX SQA_TD_DATA_BATCH ON SQA_TD_DATA
(COMPLETED_DT, WORKING, SQA_TD_REP, CONTRACTOR, REPORT_SEGMENT)
LOGGING
NOPARALLEL;


CREATE INDEX SQA_TD_DATA_BATCH_NO ON SQA_TD_DATA
(BATCH_NO)
LOGGING
NOPARALLEL;


CREATE INDEX SQA_TD_DATA_CMPT ON SQA_TD_DATA
(COMPLETED_DT)
LOGGING
NOPARALLEL;


CREATE INDEX SQA_TD_DATA_CONTR ON SQA_TD_DATA
(CONTRACTOR)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX SQA_TD_DATA_PK01 ON SQA_TD_DATA
(PID)
LOGGING
NOPARALLEL;


ALTER TABLE SQA_TD_DATA ADD (
  CONSTRAINT SQA_TD_DATA_PK01
  PRIMARY KEY
  (PID)
  USING INDEX SQA_TD_DATA_PK01
  ENABLE VALIDATE);
