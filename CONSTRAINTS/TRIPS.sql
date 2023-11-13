--------------------------------------------------------
--  Constraints for Table TRIPS
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."TRIPS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "APP_GEST_PAQU"."TRIPS" ADD CONSTRAINT "PK_TRIPS_ID" PRIMARY KEY ("ID") USING INDEX  ENABLE;
