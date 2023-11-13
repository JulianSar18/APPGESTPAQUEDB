--------------------------------------------------------
--  Ref Constraints for Table PACKAGES
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."PACKAGES" ADD CONSTRAINT "FK_ID_ZONE_PACKAGES" FOREIGN KEY ("ID_ZONE") REFERENCES "APP_GEST_PAQU"."ZONES" ("ID") ENABLE;
  ALTER TABLE "APP_GEST_PAQU"."PACKAGES" ADD CONSTRAINT "FK_ID_TRIP_PACKAGES" FOREIGN KEY ("ID_TRIP") REFERENCES "APP_GEST_PAQU"."TRIPS" ("ID") ENABLE;
