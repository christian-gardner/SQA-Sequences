DROP TABLE SQA_TD_FOLLOWUP_STATUS CASCADE CONSTRAINTS;

CREATE TABLE SQA_TD_FOLLOWUP_STATUS
(
  PID                 NUMBER,
  TD_FOLLOWUP_STATUS  VARCHAR2(40 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
