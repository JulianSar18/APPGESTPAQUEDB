--------------------------------------------------------
--  DDL for Trigger ZONES_ID
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "APP_GEST_PAQU"."ZONES_ID" 
BEFORE INSERT ON APP_GEST_PAQU.ZONES
FOR EACH ROW

BEGIN
  SELECT SEQ_ZONES.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER "APP_GEST_PAQU"."ZONES_ID" ENABLE;
