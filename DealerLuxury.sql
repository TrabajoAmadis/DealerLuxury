create database DealerLuxury

go
use DealerLuxury

create table cliente(
cedula int primary key not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
celular varchar(15) unique,
telefono_casa varchar(15),
calle varchar(50),
sector varchar(50),
correo varchar(100) unique,
ciudad varchar(100)
)

create table proveedor(
id_proveedor int IDENTITY(1,1) PRIMARY KEY,
nombre varchar(100) not null unique,
ciudad varchar(100),
calle varchar(50),
sector varchar(100),
telefono varchar(15) not null,
correo varchar(100) not null unique,
sitio_web varchar(100)
)

create table marcas(
id_marca int IDENTITY(1,1) PRIMARY KEY,
nombre varchar(50) unique
)

insert into marcas values('Toyota')
insert into marcas values('Honda')
select * from marcas

create table categoria(
id_categoria int identity(1,1) primary key,
nombre varchar(50) unique
)
insert into categoria values('4x4')
insert into categoria values('Familiar')

create table autos(
serie_chasis varchar(50) primary key,
id_marca int,
id_categoria int,
combustible varchar(30),
transmision varchar(30),
traccion varchar(10),
color_interior varchar(15),
color_exterior varchar(15),
fila_acientos varchar(10),
precio_compra decimal(10,2),
precio_venta decimal(10,2),
foto varchar(100),
stock int default 1,
descripcion varchar(300),
foreign key(id_marca) references marcas(id_marca),
foreign key(id_categoria) references categoria(id_categoria)
)

create table facturacion(
id_factura int identity(1,1) primary key,
cedula int,
fecha date,
pago_total decimal(10,2)
foreign key(cedula) references cliente(cedula)
)

create table detalle_factura(
id_detalle int identity(1,1) primary key,
id_factura int,
cantidad int,
total decimal(10,2)
foreign key(id_factura) references facturacion(id_factura)
)

create table usuario(
id_usuario int identity(1,1) primary key,
usuario nvarchar(50) unique,
contrasena nvarchar(50),
tipo nvarchar(10)
)

select * from categoria