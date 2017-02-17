DROP TABLE SQA_VENDOR_HISTORY CASCADE CONSTRAINTS;

CREATE TABLE SQA_VENDOR_HISTORY
(
  VENDOR_ID                       NUMBER,
  REVIEWED_BY                     VARCHAR2(40 BYTE),
  NBR_REVIEWED                    NUMBER,
  REVIEW_DTE                      DATE,
  POSSIBLE_PTS                    NUMBER,
  POINTS_RECEIVED                 NUMBER,
  REVIEW_SCORE                    NUMBER,
  CALC_CMPT                       NUMBER,
  HISTORY_ID                      NUMBER,
  CONTRACTOR                      VARCHAR2(30 BYTE),
  ADDRESS_PHOTO                   NUMBER,
  AIR_FRESHENERS_DATED            NUMBER,
  BACK_OF_PROPERTY                NUMBER,
  BA_BACK_YARD                    NUMBER,
  BA_FRONT_YARD                   NUMBER,
  BEHIND_BUILDING_GARAGE          NUMBER,
  CHECKLIST                       NUMBER,
  CIRCUIT_BREAKER                 NUMBER,
  CLIPPINGS_LEAVES_REMOVED        NUMBER,
  DRIVE_WALK_FREE_OF_WEEDS        NUMBER,
  EDGED_PAVED_AREAS               NUMBER,
  ENTIRE_BASEMENT                 NUMBER,
  FENCE_FOUNDATION_NO_WEEDS       NUMBER,
  FLOWER_ROCKSCAPE_FREE_OF_WEEDS  NUMBER,
  FOUR_SIDES_OF_HOUSE             NUMBER,
  FRONT_OF_HOUSE                  NUMBER,
  GATE_ALLOWING_ENTRY             NUMBER,
  INSIDE_ALL_CLOSETS              NUMBER,
  INSIDE_ALL_TOILETS              NUMBER,
  INSIDE_OUT_APPLIANCES           NUMBER,
  LOCKBOX                         NUMBER,
  MOPPING                         NUMBER,
  RIGHT_LEFT_SIDE_OF_HOUSE        NUMBER,
  RULER_PHOT0_TWO_INCHES          NUMBER,
  SAFETY_HAZARD_AREA              NUMBER,
  SHOW_ALL_AIR_FRESHENERS         NUMBER,
  SHRUBS_CUT_WHEN_NEEDED          NUMBER,
  SWEEPING                        NUMBER,
  UNDER_PORCH_DECK                NUMBER,
  UP_DOWN_STREET                  NUMBER,
  VACUUMING                       NUMBER,
  VOLT_STICK                      NUMBER,
  WEED_WHACKING                   NUMBER,
  WIPING_SURFACES                 NUMBER,
  COMMENTS                        VARCHAR2(4000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
