DROP TABLE SQA_ICC_IMPEDIMENT_TYPE CASCADE CONSTRAINTS;

CREATE TABLE SQA_ICC_IMPEDIMENT_TYPE
(
  IMPEDIMENT_TYPE  VARCHAR2(255 BYTE),
  IS_CURRENT       NUMBER(10),
  PID              NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX SQA_ICC_IMPEDIMENT_TYPE_UK01 ON SQA_ICC_IMPEDIMENT_TYPE
(IMPEDIMENT_TYPE)
LOGGING
NOPARALLEL;


GRANT DELETE, SELECT, UPDATE ON SQA_ICC_IMPEDIMENT_TYPE TO IPP$LIBRARIAN;
