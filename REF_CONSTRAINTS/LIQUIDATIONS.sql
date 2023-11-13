--------------------------------------------------------
--  Ref Constraints for Table LIQUIDATIONS
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."LIQUIDATIONS" ADD CONSTRAINT "FK_LIQUIDATIONS_ID_COMMISSION" FOREIGN KEY ("ID_COMMISSION") REFERENCES "APP_GEST_PAQU"."COMMISSIONS" ("ID") ENABLE;
