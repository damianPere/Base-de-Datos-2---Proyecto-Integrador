SELECT TOP (1000) [facturaVentaId]
      ,[pedido_id]
      ,[ID_producto]
      ,[geografia_id]
      ,[clienteId]
      ,[empleadoId]
      ,[total]
      ,[fecha_pedido]
      ,[descripcion]
      ,[cantidad]
      ,[precio_unidad]
  FROM [DataMartJardineria076].[dbo].[facturaVenta]


  SELECT TOP (1000) [empleadoId]
      ,[nombre]
      ,[apellido1]
      ,[email]
      ,[puesto]
      ,[extension]
  FROM [DataMartJardineria076].[dbo].[DimEmpleado]

  SELECT * from DimGeografia
  SELECT * from DimCliente
  SELECT * from DimEmpleado
  SELECT * from DimProducto
  SELECT * FROM facturaVenta

  SELECT FV.facturaVentaId, G.ciudad
  FROM facturaVenta FV
  INNER JOIN DimGeografia G on FV.geografia_id = G.geografia_id

  SELECT FV.facturaVentaId, G.ciudad, C.nombre_contacto as nombre_cliente, C.apellido
  FROM facturaVenta FV
  INNER JOIN DimGeografia G on FV.geografia_id = G.geografia_id
  INNER JOIN DimCliente C on FV.clienteId= C.clienteId
  WHERE C.clienteId = 5


  SELECT FV.facturaVentaId, G.ciudad, CONCAT(C.nombre_contacto,'  ', C.apellido) AS nombre_completo, PR.nombre as producto
  FROM facturaVenta FV
  INNER JOIN DimGeografia G on FV.geografia_id = G.geografia_id
  INNER JOIN DimCliente   C on FV.clienteId= C.clienteId
  INNER JOIN DimProducto PR on FV.ID_producto= PR.productoId
  WHERE C.clienteId = 5


  SELECT FV.facturaVentaId,  CONCAT(C.nombre_contacto,'  ', C.apellido) AS nombre_completo, PR.nombre as producto, CONCAT(EM.nombre,'  ', EM.apellido1) as nombre_empleado,
  FV.total, FV.fecha_pedido, FV.descripcion, FV.cantidad
  FROM facturaVenta FV
  INNER JOIN DimGeografia G on FV.geografia_id = G.geografia_id
  INNER JOIN DimCliente   C on FV.clienteId= C.clienteId
  INNER JOIN DimProducto PR on FV.ID_producto= PR.productoId
  INNER JOIN DimEmpleado EM on FV.empleadoId= EM.empleadoId
  WHERE G.ciudad= 'Tokyo'

