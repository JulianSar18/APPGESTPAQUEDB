--------------------------------------------------------
--  Constraints for Table VEHICLES_TRIPS
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."VEHICLES_TRIPS" ADD CONSTRAINT "PK_LICENSE_PLATE_ID_TRIP" PRIMARY KEY ("LICENSE_PLATE", "ID_TRIP") USING INDEX  ENABLE;
