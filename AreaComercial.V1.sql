CREATE DATABASE areacomercialv1;
USE areacomercialv1;

-- -----------------------------------------------------
-- Table `proveedor`.`areacomercialv1`
-- -----------------------------------------------------
CREATE TABLE proveedor (
  PK_id_proveedor VARCHAR(5),
  nombre_proveedor VARCHAR(45)NOT NULL,
  direccion_proveedor VARCHAR(200) NOT NULL,
  contacto_proveedor VARCHAR(200) NOT NULL,
  telefono_proveedor VARCHAR(200) NOT NULL,
   nit_proveedor VARCHAR(200) NOT NULL,
  email_proveedor  VARCHAR(200) NOT NULL,
   estatus_proveedor TINYINT(2),
  PRIMARY KEY (PK_id_proveedor)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

   -- -----------------------------------------------------
-- Table `compras`.`areacomercialv1`
-- -----------------------------------------------------
CREATE TABLE compras (
  PK_Id_Factura  VARCHAR(5),
 PK_Id_proveedor  VARCHAR(5),
 nombre_proveedor varchar(30) ,
nit_proveedor varchar(30) ,
PK_Id_producto varchar(30),
nombre_producto varchar(30) ,
precio_producto varchar(30) ,
cantidad_producto varchar(30) ,
subtotal_producto varchar(30) ,
total_producto varchar(30) ,
fecha_producto varchar(30),
pago_producto varchar(30),
 PRIMARY KEY (PK_id_factura,PK_Id_proveedor,PK_Id_producto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE  acreedores (
PK_Id_acreedores  VARCHAR(5), 
PK_Acreedores VARCHAR(30),  
Nit VARCHAR(30) , 
Monto VARCHAR(30) , 
Estatus_Acreedor TINYINT(2) , 
telefono VARCHAR(30)  , 
producto VARCHAR(30) ,  
  PRIMARY KEY (PK_Id_acreedores)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE  Cliente (
PK_Id_cliente  VARCHAR(5) , 
cliente VARCHAR(30) ,  
Nit VARCHAR(30) , 
Estatus_Cliente TINYINT(2), 
telefono VARCHAR(30) , 
PRIMARY KEY (PK_Id_cliente)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE  Pedido_Factura (
 PK_Id_factura VARCHAR (5),
 Cliente  VARCHAR (30),
Nit    VARCHAR (30),
telefono  VARCHAR (30),
producto   VARCHAR (30),
Cantidad   VARCHAR (30),
Precio_por_unidad   VARCHAR (30),
Monto   VARCHAR (30),
Total   VARCHAR (30),

 PRIMARY KEY ( PK_Id_factura )
);



