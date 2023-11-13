--------------------------------------------------------
--  Constraints for Table CONTRACTORS_VEHICLES
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."CONTRACTORS_VEHICLES" ADD CONSTRAINT "PK_NIT_LICENSE_PLATE" PRIMARY KEY ("NIT", "LICENSE_PLATE") USING INDEX  ENABLE;
