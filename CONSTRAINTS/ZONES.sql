--------------------------------------------------------
--  Constraints for Table ZONES
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."ZONES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "APP_GEST_PAQU"."ZONES" MODIFY ("ZONE_NAME" NOT NULL ENABLE);
  ALTER TABLE "APP_GEST_PAQU"."ZONES" ADD CONSTRAINT "PK_ZONES_ID" PRIMARY KEY ("ID") USING INDEX  ENABLE;
