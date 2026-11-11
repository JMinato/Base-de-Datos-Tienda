USE Tienda; 
GO

CREATE TABLE PROVEEDORES ( 
	ID_Proveedor	INTEGER IDENTITY(1,1), 
	Nombre_Compania	VARCHAR(100),
	Nombre_Contacto VARCHAR(50),
	Cargo_Contacto	VARCHAR(50),
	Direccion		VARCHAR(255),
	Ciudad			VARCHAR(50),
	Region			VARCHAR(50),
	Codigo_Postal	VARCHAR(20),
	Pais			VARCHAR(50),
	Telefono		VARCHAR(30),
	Fax				VARCHAR(30), 
	Pagina_Web		VARCHAR(255),
	CONSTRAINT PK_Proveedores PRIMARY KEY (ID_Proveedor)
);

CREATE TABLE CATEGORIAS(
	ID_Categoria	INTEGER IDENTITY(1,1),
	Nombre_Categoria	VARCHAR(50),
	Descripcion	VARCHAR(255),
	CONSTRAINT PK_Categorias PRIMARY KEY(ID_Categoria)
);

CREATE TABLE PRODUCTOS(
	ID_Producto	INTEGER IDENTITY(1,1),
	Nombre_Producto	VARCHAR(100),
	ID_Proveedor	INTEGER NOT NULL,
	ID_Categoria	INTEGER NOT NULL,
	Cantidad_Unidad	VARCHAR(50),
	Precio_Unitario NUMERIC(10,2),
	Unidades_Stock	INT,
	Unidades_Pedido	INT,
	Nivel_Reorden	INT,
	Descontinuado	BIT,
	CONSTRAINT PK_Producto PRIMARY KEY (ID_Producto),
	CONSTRAINT FK_ProveedorP FOREIGN KEY (ID_Proveedor) REFERENCES PROVEEDORES(ID_Proveedor),
	CONSTRAINT FK_CategoriaP FOREIGN KEY (ID_Categoria) REFERENCES CATEGORIAS(ID_Categoria)
);

CREATE TABLE CLIENTES(
	ID_Cliente	INTEGER IDENTITY(1,1),
	Nombre_Compania	VARCHAR(100),
	Nombre_Contacto	VARCHAR(100),
	Cargo_Contacto	VARCHAR(50),
	Direccion	VARCHAR(255),
	Ciudad	VARCHAR(50),
	Region	VARCHAR(50),
	Codigo_Postal VARCHAR(20),
	Pais	VARCHAR(50),
	Telefono	VARCHAR(30),
	Fax	VARCHAR(30),
	CONSTRAINT PK_Clientes PRIMARY KEY (ID_Cliente)
);

CREATE TABLE EMPLEADOS(
	ID_Empleado	INT IDENTITY(1,1),
	Primer_Apellido_Empleado	VARCHAR(50),
	Segundo_Apellido_Empleado	VARCHAR(50),
	Nombre_Empleado	VARCHAR(50),
	Cargo	VARCHAR(50),
	Fecha_Nacimiento	DATE,
	Fecha_Contratacion	DATE,
	Direccion	VARCHAR(255),
	Ciudad	VARCHAR(50),
	Region	VARCHAR(50),
	Codigo_Postal	VARCHAR(20),
	Pais	VARCHAR(50),
	TelefonoCasa	VARCHAR(30),
	Notas	VARCHAR(MAX),
	Reporta_A	INTEGER,
	CONSTRAINT PK_Empleados PRIMARY KEY (ID_Empleado),
	CONSTRAINT FK_EmpleadosE FOREIGN KEY (Reporta_A) REFERENCES EMPLEADOS(ID_Empleado)
);

CREATE TABLE TRANSPORTISTAS(
	ID_Transportista	INTEGER IDENTITY(1,1),
	Nombre_Compania		VARCHAR(100),
	Telefono	VARCHAR(30),
	CONSTRAINT PK_Transportista PRIMARY KEY (ID_Transportista)
);

CREATE TABLE PEDIDOS(
	ID_Pedido INTEGER IDENTITY(1,1),
	ID_Cliente	INTEGER NOT NULL,
	ID_Empleado	INTEGER NOT NULL,
	Fecha_Pedido	DATE,
	Fecha_Requerida	DATE,
	Fecha_Envio	DATE,
	ID_Transportista	INTEGER NOT NULL,
	Costo_Flete	NUMERIC(10,2),
	Nombre_Envio	VARCHAR(100),
	Direccion_Envio	VARCHAR(255),
	Ciudad_Envio	VARCHAR(50),
	Region_Envio	VARCHAR(50),
	Codigo_Postal_Envio	VARCHAR(20),
	Pais_Envio	VARCHAR(50),
	CONSTRAINT PK_Pedidos PRIMARY KEY (ID_Pedido),
	CONSTRAINT FK_ClientePe FOREIGN KEY (ID_Cliente) REFERENCES CLIENTES(ID_Cliente),
	CONSTRAINT FK_EmpleadoPe FOREIGN KEY (ID_Empleado) REFERENCES EMPLEADOS(ID_Empleado),
	CONSTRAINT FK_TransportistaPe FOREIGN KEY (ID_Transportista) REFERENCES TRANSPORTISTAS(ID_Transportista) 
);

CREATE TABLE DETALLES_PEDIDOS(
	ID_Pedido INTEGER NOT NULL,
	ID_Producto INTEGER NOT NULL,
	Precio_Unitario	NUMERIC(10,2),
	Cantidad	INT,
	Descuento	NUMERIC(4,2),
	CONSTRAINT FK_PedidoDe FOREIGN KEY (ID_Pedido) REFERENCES PEDIDOS(ID_Pedido),
	CONSTRAINT FK_ProductoDe FOREIGN KEY (ID_Producto) REFERENCES PRODUCTOS(ID_Producto),
	CONSTRAINT PK_Detalle PRIMARY KEY (ID_Pedido, ID_Producto)
);







