CREATE TABLE TblActivo (
    ActivoID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255),
    Tipo VARCHAR(50), -- 'Equipo' o 'Mobiliario'
    Valor DECIMAL(18, 2),
    Estado VARCHAR(50), -- Vigente, Obsoleto, Baja
    FechaAdquisicion DATETIME,
    CodigoInventario VARCHAR(50) UNIQUE
);

CREATE TABLE TblEstado (
    EstadoID INT PRIMARY KEY IDENTITY,
    Descripcion VARCHAR(20),
);

CREATE TABLE TblDepartamento (
    DepartamentoID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100)
);

CREATE TABLE TblUsuario (
    UsuarioID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100),
    DepartamentoID INT FOREIGN KEY REFERENCES TblDepartamento(DepartamentoID)
);

CREATE TABLE TblUbicacion (
    UbicacionID INT PRIMARY KEY IDENTITY,
    Descripcion NVARCHAR(100)
);


CREATE TABLE TblMovimientos (
    MovimientoID INT PRIMARY KEY IDENTITY,
    ActivoID INT,
    FechaMovimiento DATETIME DEFAULT GETDATE(),
    UsuarioID INT NULL,
    DepartamentoID INT NULL,
    UbicacionID INT NULL,
    Observaciones NVARCHAR(255)
);


CREATE TABLE TblTipoMovimiento (
    TipoMovimientoID INT PRIMARY KEY IDENTITY,
    Descripcion VARCHAR(20),
);
