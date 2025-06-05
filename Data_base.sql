-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS GestionVentas;
USE GestionVentas;

-- Crear tabla Direccion
CREATE TABLE Direccion (
    Id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    Pais VARCHAR(100),
    Calle_Avenida VARCHAR(100),
    Numero_Exterior VARCHAR(10),
    Numero_Interior VARCHAR(10),
    Canton VARCHAR(100),
    Codigo_Postal VARCHAR(10),
    Ciudad_Municipio VARCHAR(100),
    Departamento VARCHAR(100)
);

-- Crear tabla Cliente
CREATE TABLE Cliente (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Cliente VARCHAR(100),
    Fecha_Nacimiento DATE,
    Numero_Telefono VARCHAR(15),
    Correo_Electronico VARCHAR(100),
    Id_direccion INT,
    FOREIGN KEY (Id_direccion) REFERENCES Direccion(Id_direccion)
);

-- Crear tabla Proveedores
CREATE TABLE Proveedores (
    Id_Empresa INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Empresa VARCHAR(100),
    Id_direccion INT,
    Telefono_Contacto VARCHAR(15),
    Correo_Electronico VARCHAR(100),
    Tipo_Producto VARCHAR(100),
    FOREIGN KEY (Id_direccion) REFERENCES Direccion(Id_direccion)
);

-- Crear tabla Empleados
CREATE TABLE Empleados (
    Id_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Completo VARCHAR(100),
    Fecha_Ingreso DATE,
    Id_direccion INT,
    Estado_Civil VARCHAR(50),
    Telefono VARCHAR(15),
    Correo_Electronico VARCHAR(100),
    FOREIGN KEY (Id_direccion) REFERENCES Direccion(Id_direccion)
);

-- Crear tabla Productos
CREATE TABLE Productos (
    Id_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto VARCHAR(100),
    Descripcion TEXT,
    Talla VARCHAR(20),
    Color VARCHAR(50),
    Precio DECIMAL(10,2),
    Existencia INT
);

-- Crear tabla DetalleVenta
CREATE TABLE DetalleVenta (
    Id_Venta INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Venta DATE,
    Monto_Total DECIMAL(10,2),
    Nombre_Vendedor VARCHAR(100),
    Id_direccion INT,
    FOREIGN KEY (Id_direccion) REFERENCES Direccion(Id_direccion)
);
