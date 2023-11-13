--------------------------------------------------------
-- Archivo creado  - lunes-noviembre-13-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure CALCULATE_PAYMENT_AND_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "APP_GEST_PAQU"."CALCULATE_PAYMENT_AND_INSERT" (
    p_trip_status IN VARCHAR2
) IS
BEGIN
    FOR rec IN (SELECT DISTINCT co.COMPANY_NAME, co.NIT
                FROM CONTRACTORS co 
                JOIN COMMISSIONS cm ON cm.ID = co.ID_COMMISSION
                JOIN CONTRACTORS_VEHIClES cv ON cv.NIT = co.NIT
                JOIN VEHICLES_TRIPS vt ON vt.LICENSE_PLATE = cv.LICENSE_PLATE
                JOIN TRIPS t ON t.ID = vt.ID_TRIP
                WHERE t.STATUS = p_trip_status)
    LOOP
        DECLARE           
            v_total_trips NUMBER;
            v_total_deliveries NUMBER;
            v_id_commission NUMBER;
            v_payment NUMBER;
            v_id_trip NUMBER;
        BEGIN
            -- Calcular el total de viajes para la empresa, el estado del viaje y el conductor dado
            SELECT COUNT(DISTINCT t.ID)
            INTO v_total_trips
            FROM TRIPS t
            JOIN VEHICLES_TRIPS vt ON t.ID = vt.ID_TRIP
            JOIN VEHICLES v ON vt.LICENSE_PLATE = v.LICENSE_PLATE
            JOIN CONTRACTORS_VEHICLES cv ON v.LICENSE_PLATE = cv.LICENSE_PLATE
            WHERE cv.NIT = rec.NIT
            AND t.STATUS = p_trip_status;

            -- Calcular el total de entregas para la empresa, el estado del viaje y el conductor dado
            SELECT COUNT(DISTINCT p.ID)
            INTO v_total_deliveries
            FROM PACKAGES p
            JOIN VEHICLES_TRIPS vt ON p.ID_TRIP = vt.ID_TRIP
            JOIN VEHICLES v ON vt.LICENSE_PLATE = v.LICENSE_PLATE
            JOIN CONTRACTORS_VEHICLES cv ON v.LICENSE_PLATE = cv.LICENSE_PLATE
            JOIN TRIPS t ON t.id = p.ID_TRIP
            WHERE cv.NIT = rec.NIT
            AND t.STATUS = p_trip_status;

            -- Calcular ID_COMMISSION
            SELECT cm.id
            INTO v_id_commission
            FROM COMMISSIONS cm
            JOIN CONTRACTORS c ON c.ID_COMMISSION = cm.ID
            WHERE c.NIT = rec.NIT;

            -- Calcular el valor a pagar
            SELECT cm.per_delivery_commission * v_total_deliveries + cm.per_trip_commission * v_total_trips
            INTO v_payment
            FROM COMMISSIONS cm
            JOIN CONTRACTORS c ON c.ID_COMMISSION = cm.ID
            WHERE c.NIT = rec.NIT;            

            -- Insertar el resultado en la tabla LIQUIDATIONS            

            -- Utilizar el cursor con el parámetro rec.NIT
            FOR cur_rec IN (SELECT t.ID
                            FROM TRIPS t
                            JOIN VEHICLES_TRIPS vt ON t.ID = vt.ID_TRIP
                            JOIN CONTRACTORS_VEHICLES cv ON cv.NIT = rec.NIT
                            WHERE vt.LICENSE_PLATE = cv.LICENSE_PLATE
                            AND t.STATUS = p_trip_status)
            LOOP
                v_id_trip := cur_rec.ID;
                DBMS_OUTPUT.PUT_LINE('Trip ID: ' || v_id_trip);
                -- Actualizar TRIP
                UPDATE TRIPS t SET t.status = 'LIQUIDADO' WHERE t.ID = v_id_trip;
            END LOOP;
            --Insertar a la tabla Liquidations
            INSERT INTO LIQUIDATIONS (TRIPS, DELIVERIES, DATE_LIQUIDATION, ID_COMMISSION, TOTAL_VALUE)
            VALUES (v_total_trips, v_total_deliveries, SYSDATE, v_id_commission, v_payment);
            DBMS_OUTPUT.PUT_LINE('Valor a Pagar: ' || v_payment);
        END;
    END LOOP;
END CALCULATE_PAYMENT_AND_INSERT;
