USE Tienda;
GO

USE Tienda;
GO

INSERT INTO PROVEEDORES (Nombre_Compania, Nombre_Contacto, Cargo_Contacto, Direccion, Ciudad, Region, Codigo_Postal, Pais, Telefono, Fax, Pagina_Web)
VALUES 
('Distribuidora Central S.A.', 'Juan Perez', 'Gerente', 'Av. Principal 123', 'Madrid', 'Madrid', '28001', 'España', '910-111-222', '910-111-223', 'www.distcentral.com'),
('Importaciones del Sur', 'Maria Gomez', 'Compras', 'Calle Falsa 456', 'Sevilla', 'Andalucia', '41001', 'España', '950-222-333', NULL, 'www.imsur.es'),
('Lácteos Andinos', 'Carlos Ruiz', 'Ventas', 'Carrera 7 # 12-34', 'Bogotá', 'Cundinamarca', '110111', 'Colombia', '601-333-444', '601-333-445', 'www.lacteosandinos.com'),
('Carnes Premium', 'Ana Silva', 'Dueña', 'Av. Libertador 789', 'Santiago', 'Metropolitana', '8320000', 'Chile', '2-444-555', NULL, 'www.carnespremium.cl'),
('Bebidas Globales', 'Pedro Martinez', 'Logística', 'Ruta 9 Km 45', 'Lima', 'Lima', '15001', 'Perú', '1-555-666', '1-555-667', 'www.bglobales.com');


INSERT INTO CATEGORIAS (Nombre_Categoria, Descripcion)
VALUES 
('Bebidas', 'Gaseosas, jugos, aguas y bebidas energéticas'),
('Lácteos y Huevos', 'Leche, quesos, yogures y huevos frescos'),
('Carnes y Embutidos', 'Carne de res, cerdo, pollo y embutidos'),
('Abarrotes', 'Arroz, pasta, aceite, harinas y conservas'),
('Limpieza', 'Detergentes, jabones, desinfectantes y papel');


INSERT INTO PRODUCTOS (Nombre_Producto, ID_Proveedor, ID_Categoria, Cantidad_Unidad, Precio_Unitario, Unidades_Stock, Unidades_Pedido, Nivel_Reorden, Descontinuado)
VALUES 
('Coca Cola 2 Litros', 5, 1, '6 botellas', 1.50, 150, 20, 30, 0),
('Agua Mineral 1.5L', 5, 1, '12 botellas', 0.80, 300, 0, 50, 0),
('Jugo de Naranja 1L', 5, 1, '1 caja', 1.20, 80, 10, 20, 0),
('Leche Entera 1L', 3, 2, '12 cajas', 1.10, 200, 50, 40, 0),
('Queso Gouda 500g', 3, 2, '1 pieza', 4.50, 60, 0, 15, 0),
('Yogur Fresa 125g', 3, 2, '4 pack', 1.80, 100, 15, 25, 0),
('Lomo de Cerdo 1kg', 4, 3, '1 kg', 8.90, 40, 5, 10, 0),
('Pechuga de Pollo 1kg', 4, 3, '1 kg', 6.50, 55, 0, 15, 0),
('Arroz Blanco 1kg', 1, 4, '1 bolsa', 1.25, 400, 100, 50, 0),
('Aceite de Girasol 1L', 1, 4, '1 botella', 2.10, 250, 0, 40, 0),
('Detergente en Polvo 3kg', 1, 5, '1 caja', 5.50, 70, 0, 20, 0),
('Papel Higiénico 12 rollos', 1, 5, '1 paquete', 4.00, 90, 20, 30, 1);


INSERT INTO CLIENTES (Nombre_Compania, Nombre_Contacto, Cargo_Contacto, Direccion, Ciudad, Region, Codigo_Postal, Pais, Telefono, Fax)
VALUES 
('Supermercado La Estrella', 'Lucia Fernandez', 'Gerente de Compras', 'Av. Sol 100', 'Madrid', 'Madrid', '28002', 'España', '910-999-888', NULL),
('Restaurante El Buen Sabor', 'Jorge Ramirez', 'Chef', 'Calle Luna 33', 'Barcelona', 'Cataluña', '08001', 'España', '930-888-777', '930-888-778'),
('Tienda Doña Pepa', 'Josefa Diaz', 'Dueña', 'Plaza Mayor 5', 'Valencia', 'Valenciana', '46001', 'España', '960-777-666', NULL),
('Minimarket Express', 'Luis Torres', 'Administrador', 'Calle Rio 89', 'Bilbao', 'Pais Vasco', '48001', 'España', '940-666-555', NULL),
('Hotel Paraíso', 'Carmen Ortiz', 'Jefa de Cocina', 'Paseo Mar 12', 'Malaga', 'Andalucia', '29001', 'España', '950-555-444', '950-555-445');


INSERT INTO EMPLEADOS (Primer_Apellido_Empleado, Segundo_Apellido_Empleado, Nombre_Empleado, Cargo, Fecha_Nacimiento, Fecha_Contratacion, Direccion, Ciudad, Region, Codigo_Postal, Pais, TelefonoCasa, Notas, Reporta_A)
VALUES 
('Garcia', 'Lopez', 'Roberto', 'Gerente General', '1975-05-15', '2010-01-10', 'Av. Central 1', 'Madrid', 'Madrid', '28001', 'España', '910-000-111', 'Fundador de la empresa', NULL),
('Martinez', 'Sanchez', 'Elena', 'Jefa de Ventas', '1985-08-20', '2015-03-15', 'Calle Mayor 2', 'Madrid', 'Madrid', '28001', 'España', '910-000-222', 'Encargada de la región centro', 1),
('Rodriguez', 'Perez', 'David', 'Vendedor', '1990-11-30', '2018-06-01', 'Calle Sol 3', 'Madrid', 'Madrid', '28002', 'España', '910-000-333', 'Especialista en bebidas', 2),
('Fernandez', 'Gomez', 'Sofia', 'Jefa de Compras', '1982-02-14', '2012-09-20', 'Av. Libertad 4', 'Barcelona', 'Cataluña', '08001', 'España', '930-000-444', 'Negocia con proveedores internacionales', 1),
('Lopez', 'Diaz', 'Carlos', 'Vendedor', '1995-07-07', '2020-01-15', 'Calle Mar 5', 'Valencia', 'Valenciana', '46001', 'España', '960-000-555', 'Ventas en la zona este', 2);


INSERT INTO TRANSPORTISTAS (Nombre_Compania, Telefono)
VALUES 
('Envíos Rápidos S.L.', '900-123-456'),
('Logística Global', '900-234-567'),
('Transportes Unidos', '900-345-678');


INSERT INTO PEDIDOS (ID_Cliente, ID_Empleado, Fecha_Pedido, Fecha_Requerida, Fecha_Envio, ID_Transportista, Costo_Flete, Nombre_Envio, Direccion_Envio, Ciudad_Envio, Region_Envio, Codigo_Postal_Envio, Pais_Envio)
VALUES 
(1, 3, '2023-10-01', '2023-10-05', '2023-10-03', 1, 15.50, 'Supermercado La Estrella', 'Av. Sol 100', 'Madrid', 'Madrid', '28002', 'España'),
(2, 3, '2023-10-02', '2023-10-06', '2023-10-04', 2, 12.00, 'Restaurante El Buen Sabor', 'Calle Luna 33', 'Barcelona', 'Cataluña', '08001', 'España'),
(1, 5, '2023-10-10', '2023-10-15', '2023-10-12', 1, 20.00, 'Supermercado La Estrella', 'Av. Sol 100', 'Madrid', 'Madrid', '28002', 'España'),
(3, 5, '2023-10-15', '2023-10-20', NULL, 3, 10.00, 'Tienda Doña Pepa', 'Plaza Mayor 5', 'Valencia', 'Valenciana', '46001', 'España'), -- Aún no se ha enviado
(4, 3, '2023-10-20', '2023-10-25', '2023-10-22', 2, 18.50, 'Minimarket Express', 'Calle Rio 89', 'Bilbao', 'Pais Vasco', '48001', 'España'),
(5, 5, '2023-10-25', '2023-10-30', '2023-10-27', 1, 25.00, 'Hotel Paraíso', 'Paseo Mar 12', 'Malaga', 'Andalucia', '29001', 'España'),
(2, 3, '2023-11-01', '2023-11-05', NULL, 1, 12.00, 'Restaurante El Buen Sabor', 'Calle Luna 33', 'Barcelona', 'Cataluña', '08001', 'España'), -- Aún no se ha enviado
(1, 5, '2023-11-05', '2023-11-10', '2023-11-07', 3, 15.50, 'Supermercado La Estrella', 'Av. Sol 100', 'Madrid', 'Madrid', '28002', 'España');

INSERT INTO DETALLES_PEDIDOS (ID_Pedido, ID_Producto, Precio_Unitario, Cantidad, Descuento)
VALUES 

(1, 1, 1.50, 50, 0.05), 
(1, 4, 1.10, 100, 0.10), 
(1, 9, 1.25, 200, 0.00), 

(2, 7, 8.90, 10, 0.00), 
(2, 8, 6.50, 15, 0.05), 
(2, 10, 2.10, 5, 0.00), 

(3, 2, 0.80, 100, 0.00), 
(3, 3, 1.20, 24, 0.00), 
(3, 12, 4.00, 30, 0.05), 

(4, 5, 4.50, 20, 0.00), 
(4, 6, 1.80, 15, 0.10), 
(4, 11, 5.50, 10, 0.00), 

(5, 1, 1.50, 36, 0.05),
(5, 2, 0.80, 48, 0.00),
(5, 9, 1.25, 50, 0.00),
(5, 10, 2.10, 20, 0.00),

(6, 4, 1.10, 80, 0.05),
(6, 5, 4.50, 15, 0.00),
(6, 7, 8.90, 25, 0.10),
(6, 8, 6.50, 30, 0.10),

(7, 8, 6.50, 20, 0.00),
(7, 10, 2.10, 10, 0.00),

(8, 3, 1.20, 50, 0.05),
(8, 6, 1.80, 40, 0.00);