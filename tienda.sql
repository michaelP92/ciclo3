create database Tienda;
use Tienda;
create table proveedores(
nitproveedor bigint (20) primary key,
ciudad_proveedor varchar(255),
direccion_proveedor varchar(255),
nombre_proveedor varchar(255),
telefono_proveedor varchar(255)
);

create table productos(
codigo_producto bigint(20) primary key not null,
ivacompra DOUBLE,
nitproveedor bigint (20),
foreign key (nitproveedor) references proveedores(nitproveedor),
nombre_producto varchar (255) not null, 
 precio_compra double not null,
 precio_venta double not null
);

create table clientes(
cedula_clientes bigint(20) primary key,
direccion_cliente varchar(255),
email_cliente varchar(255),
nombre_cliente varchar(255),
telefo_cliente varchar(255)
);

create table usuarios(
cedula_usuario bigint(20) primary key,
email_usuario varchar(255),
nombre_usuario varchar(255),
contraseña varchar(255),
usuario varchar(255)
);

create table ventas(
codigo_ventas bigint(20),
cedula_clientes bigint(20),
foreign key(cedula_clientes) references clientes(cedula_clientes), 
cedula_usuarios bigint (20),
foreign key (cedula_usuarios) references usuarios (cedula_usuario),
ivaventa double,
total_venta double,
valor_venta double
);
ALTER TABLE tienda.ventas 
CHANGE COLUMN `codigo_ventas` `codigo_ventas` BIGINT NOT NULL ,
ADD PRIMARY KEY (`codigo_ventas`);
;

create table detalle_ventas(
codigo_detalle_venta BIGINT (20),
cantidad_producto INT(11),
codigo_producto BIGINT(20),
codigo_ventas BIGINT(20),
foreign key (codigo_ventas) references ventas (codigo_ventas),
valor_total DOUBLE,
valor_venta DOUBLE,
valoriva DOUBLE
);