DROP TABLE SQA_EMP_SECURITY CASCADE CONSTRAINTS;

CREATE TABLE SQA_EMP_SECURITY
(
  LOGIN                    VARCHAR2(100 BYTE),
  DATA_DATE                DATE                 DEFAULT SYSDATE,
  REOINT_SECURITY_LEVEL    NUMBER               DEFAULT 0,
  TOP_DOWN_SECURITY_LEVEL  NUMBER               DEFAULT 0,
  ICC_SECURITY_LEVEL       NUMBER               DEFAULT 0,
  PID                      NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX SQA_EMP_SECURITY_UK01 ON SQA_EMP_SECURITY
(LOGIN, REOINT_SECURITY_LEVEL)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX SQA_EMP_SECURITY_UK02 ON SQA_EMP_SECURITY
(LOGIN, TOP_DOWN_SECURITY_LEVEL)
LOGGING
NOPARALLEL;


CREATE UNIQUE INDEX SQA_EMP_SECURITY_UK03 ON SQA_EMP_SECURITY
(LOGIN, ICC_SECURITY_LEVEL)
LOGGING
NOPARALLEL;


GRANT DELETE, INSERT, SELECT, UPDATE ON SQA_EMP_SECURITY TO RDM_RW;
