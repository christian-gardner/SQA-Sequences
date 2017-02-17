DROP TABLE SQA_ICC_QC_REVIEW_DETAIL CASCADE CONSTRAINTS;

CREATE TABLE SQA_ICC_QC_REVIEW_DETAIL
(
  PID             NUMBER,
  LOAN_NBR        VARCHAR2(40 BYTE),
  CLIENT_CODE     VARCHAR2(40 BYTE),
  REVIEW_ORIGIN   VARCHAR2(60 BYTE),
  REVIEWED_BY     VARCHAR2(60 BYTE),
  DATE_UPLOADED   DATE,
  DATE_TO_REVIEW  DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


GRANT DELETE, SELECT, UPDATE ON SQA_ICC_QC_REVIEW_DETAIL TO IPP$LIBRARIAN;