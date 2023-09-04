USE UCB_VERDULEROS

-- Mostrar los productos con precio mayor a los 1bs

SELECT * FROM Productos
WHERE Precio >= 1

-- Obtener los productos que sean de grupo fruta
SELECT Productos.*, Grupos.* 
FROM  Productos, Grupos
WHERE Productos.IdGrupo = Grupos.IdGrupo and Grupos.NombreGrupo = 'Frutas' 

-- Obtener los grupos donde el precio del producto sea mayor a 2 bs

SELECT Productos.*, Grupos.*
FROM Productos, Grupos
WHERE Productos.IdGrupo = Grupos.IdGrupo and Productos.Precio >= 2

-- Mostrar toda la lista de vendedores
SELECT *
FROM Vendedores

-- Mostrar los vendedores solteros
SELECT *
FROM Vendedores
WHERE EstalCivil = 'Casado'

-- Obtener la lista de vendedores mas viejos de mayor a menor

SELECT *
FROM Vendedores
ORDER BY FechaNac ASC

-- Mostrar solo el nombre, FechaAlta, FechaNac de los vendedores

SELECT NombreVendedor, FechaAlta, FechaNac
FROM Vendedores

-- Mostrar todas la vntas

SELECT Vendedores.NombreVendedor, Productos.NomProducto, Ventas.Fecha, Ventas.Kilos
FROM Ventas, Productos, Vendedores
WHERE Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor

-- Obtener las ventas solo de productos (Tomates)
-- Obtener las ventas del vendedor (Federico)

SELECT Ventas.[Cod Producto], Productos.NomProducto, Ventas.Kilos
From Ventas, Grupos, Productos
Where Ventas.[Cod Producto] = Productos.IdProducto and Productos.NomProducto = 'Tomates'

SELECT Vendedores.NombreVendedor,Ventas.[Cod Vendedor], Productos.NomProducto, Ventas.Kilos
From Ventas, Grupos, Productos, Vendedores
Where Ventas.[Cod Vendedor] = Vendedores.IdVendedor and Vendedores.NombreVendedor = 'Federico'








