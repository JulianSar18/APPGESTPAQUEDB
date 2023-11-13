# APP_GEST_PAQU_BACKEND
## Descripcion
Este proyecto tiene como finalidad gestionar la entrega de paquetes para la empresa de Transporte S.A.S, podra getionar las empresas que contrata, gestionar la entrada de los vehiculos y la entrega de los paquetes; para finalmente calcular el valor que se debe pagar a cada empresa que haya contratado segun su configuracion de comisiones

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://github.com/JulianSar18/APPGESTPAQUEFRONT)

### **BASE DE DATOS**

- Motor de base de datos: Oracle Database 21c Express Edition
- Gestor de base de datos: sqldeveloper-23.1.0.097.1607-x64

#### **INSTALACIÓN BASE DE DATOS**

- Verificar que el nuevo entorno tenga instalada una instancia de base de datos de Oracle 21c
- Asegurar la ruta C:\Proyecto\TC_GB_28\APP_GEST_PAQU_DB_TC28
- Entrar a la carpeta descomprimida
- Utilizar SQL Plus o SQL Developer para ejecutar el script APP_GEST_PAQU_SYS.sql desde el usuario System en la base de datos Oracle
- Utilizar SQL PLus o SQL Developer para ejecutar el script APP_GEST_PAQU_SCHEMA.sql desde el usuario creado en el script anterior
- Verificar que los objetos hayan sido creados correctamente
- En caso de que los scripts fallen o ocurra algun problema se puede ejecutar cada archivo individualmente en orden