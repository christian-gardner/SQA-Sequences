DROP TABLE SQA_REOINT_ADDL_ORDER_OPENED CASCADE CONSTRAINTS;

CREATE TABLE SQA_REOINT_ADDL_ORDER_OPENED
(
  PID                    NUMBER,
  DETAIL_ID              NUMBER,
  SQA_ADDL_ORDER_OPENED  VARCHAR2(255 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


GRANT SELECT ON SQA_REOINT_ADDL_ORDER_OPENED TO RDM_RO;

GRANT SELECT ON SQA_REOINT_ADDL_ORDER_OPENED TO RDM_RO_ROLE;

GRANT DELETE, INSERT, SELECT, UPDATE ON SQA_REOINT_ADDL_ORDER_OPENED TO RDM_RW;

GRANT ALTER, DELETE, INSERT, SELECT, UPDATE, ON COMMIT REFRESH, QUERY REWRITE, DEBUG, FLASHBACK ON SQA_REOINT_ADDL_ORDER_OPENED TO TEST_RW_ROLE;
