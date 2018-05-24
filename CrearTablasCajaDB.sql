-- by Martin

AUTOCOMMIT OFF;

-- \************************ CAJA ************************************\

CREATE TABLE TBL_CAJA (ID_MOV_CAJA INT PRIMARY KEY, M_INGRESO_MOV_CAJA TIMESTAMP,
	 F_EFECT_MOV_CAJA DATE, CTA_CTE_CAJA VARCHAR(11), REFERENCIA_CAJA INT,
	 DETALLE_MOV_CAJA VARCHAR (100), IMPORTE_CAJA INT, COD_OBRA_CAJA INT, COD_TIPO_MOV_CAJA INT,
	 BORRADO_CAJA BOOLEAN);

-- \************************ PERSONAS ************************************\

CREATE TABLE TBL_PERSONAS (CUIT_CUIL VARCHAR(11) PRIMARY KEY, PERSONA VARCHAR(100), TIPO_PERSONA CHAR(5), BORRADO BOOLEAN);

-- \************************ REFERENCIAS_CAJA ************************************\

CREATE TABLE TBL_REFERENCIAS_CAJA (NRO_REF INT PRIMARY KEY, CUIT_CUIL VARCHAR(11), REFERENCIA VARCHAR(50));

-- \************************ TIPOS_MOVIMIENTOS_CAJA ************************************\

CREATE TABLE TBL_TIPOS_MOVIMIENTOS_CAJA (COD_TIPO_MOV_CAJA INT PRIMARY KEY, MOVIMIENTO_CAJA VARCHAR(50));

-- \************************ OBRAS ************************************\

CREATE TABLE TBL_OBRAS (COD_OBRA INT PRIMARY KEY, APODO_OBRA VARCHAR(50), DIRECCION_OBRA VARCHAR(50),
	 COD_CIUDAD_OBRA INT, COMITENTE_OBRA VARCHAR(11), F_ESTIM_INICIO_OBRA DATE, F_ESTIM_FIN_OBRA DATE,
	 F_EFECT_INICIO_OBRA DATE, F_EFECT_FIN_OBRA DATE, LATITUD_OBRA INT, LONGITUD_OBRA INT,
	 COD_TIPO_OBRA INT);

-- \************************ TIPO_OBRA ************************************\

CREATE TABLE TBL_TIPO_OBRA (COD_TIPO_OBRA INT PRIMARY KEY, TIPO_OBRA VARCHAR(50));

-- \************************ CIUDADES ************************************\

CREATE TABLE TBL_CIUDADES (COD_CIUDAD INT PRIMARY KEY, CIUDAD VARCHAR(100), COD_POSTAL VARCHAR(10),
	 COD_PCIA_CIUDAD INT, COD_PAIS_CIUDAD INT);

-- \************************ PCIAS ************************************\

CREATE TABLE TBL_PCIAS (COD_PCIA INT PRIMARY KEY, PCIA VARCHAR(100), COD_PAIS_PCIA INT);

-- \************************ PAISES ************************************\

CREATE TABLE TBL_PAISES (COD_PAIS INT PRIMARY KEY, PAIS VARCHAR(100), COD_MONEDA VARCHAR(3));

-- \************************ DEFINICION CLAVES EXTERNAS ************************************\

ALTER TABLE TBL_CAJA 
   ADD CONSTRAINT FK1_CTA_CAJA Foreign Key (
      CTA_CTE_CAJA)
   REFERENCES TBL_PERSONAS (CUIT_CUIL);


COMMIT;

