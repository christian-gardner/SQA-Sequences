ALTER TABLE SQA_ICC_IMPEDIMENTS
 DROP PRIMARY KEY CASCADE;

DROP TABLE SQA_ICC_IMPEDIMENTS CASCADE CONSTRAINTS;

CREATE TABLE SQA_ICC_IMPEDIMENTS
(
  PID            NUMBER,
  LOAN_NUMBER    VARCHAR2(50 BYTE),
  CLIENT_CODE    VARCHAR2(20 BYTE),
  REVIEWED_BY    VARCHAR2(100 BYTE),
  IMPEDIMENT_ID  NUMBER,
  WORK_ORDER     VARCHAR2(50 BYTE),
  COMMENTS       VARCHAR2(4000 BYTE),
  DATE_REVIEWED  DATE,
  MASTER_ID      NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX SQA_ICC_IMPEDIMENTS_PK ON SQA_ICC_IMPEDIMENTS
(PID)
LOGGING
NOPARALLEL;


ALTER TABLE SQA_ICC_IMPEDIMENTS ADD (
  CONSTRAINT SQA_ICC_IMPEDIMENTS_PK
  PRIMARY KEY
  (PID)
  USING INDEX SQA_ICC_IMPEDIMENTS_PK
  ENABLE VALIDATE);

GRANT DELETE, SELECT, UPDATE ON SQA_ICC_IMPEDIMENTS TO IPP$LIBRARIAN;
