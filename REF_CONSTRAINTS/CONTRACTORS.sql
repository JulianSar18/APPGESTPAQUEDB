--------------------------------------------------------
--  Ref Constraints for Table CONTRACTORS
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."CONTRACTORS" ADD CONSTRAINT "FK_CONTRACTORS_ID_COMMISSION" FOREIGN KEY ("ID_COMMISSION") REFERENCES "APP_GEST_PAQU"."COMMISSIONS" ("ID") ENABLE;
