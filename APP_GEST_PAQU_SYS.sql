-- TC_28
-- By: Julian Sarmiento
-- Date: Noviembre 
-- Description: creates schema and grants privileges for TC_28

PROMPT APP_GEST_PAQU_SYS.sql;

ALTER SESSION SET CURRENT_SCHEMA=SYSTEM;
/

PROMPT --------------CREATING TABLE SPACE--------------
PROMPT TABLE_SPACE.sql
@C:\Proyecto\TC_GB_28\APP_GEST_PAQU_DB_TC28\SYS\TABLE_SPACE.sql
/

PROMPT --------------CREATING SCHEMA-------------------
PROMPT SCHEMA.sql
@C:\Proyecto\TC_GB_28\APP_GEST_PAQU_DB_TC28\SYS\SCHEMA.sql
/

PROMPT --------------GRANTING PRIVILEGES---------------
PROMPT GRANT_RESOURCE.sql
@C:\Proyecto\TC_GB_28\APP_GEST_PAQU_DB_TC28\SYS\GRANT_RESOURCE.sql
/

PROMPT -----------SCHEMA SUCCESSFULLY CREATED----------


PROMPT ------------------------------------------------
PROMPT END OF APP_GEST_PAQU_SYS.sql
PROMPT ------------------------------------------------
