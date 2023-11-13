--------------------------------------------------------
--  Constraints for Table PACKAGES
--------------------------------------------------------

  ALTER TABLE "APP_GEST_PAQU"."PACKAGES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "APP_GEST_PAQU"."PACKAGES" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "APP_GEST_PAQU"."PACKAGES" ADD CONSTRAINT "PK_PACKAGES_ID" PRIMARY KEY ("ID") USING INDEX  ENABLE;
