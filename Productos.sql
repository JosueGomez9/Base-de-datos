INSERT INTO `tienda_virtual`.`proveedor` (`id_provee`, `nombre_provee`, `telefono_provee`, `direccion_provee`) VALUES ('1', 'Madetec', '98652547', 'Colonia.La Era');

INSERT INTO `tienda_virtual`.`proveedor` (`id_provee`, `nombre_provee`, `telefono_provee`, `direccion_provee`) VALUES ('2', Celltel'98637847', 'Colonia.La San miguel');

INSERT INTO `tienda_virtual`.`proveedor` (`id_provee`, `nombre_provee`, `telefono_provee`, `direccion_provee`) VALUES ('3', 'Madetec', '98156547', 'Res.La joya');


UPDATE `tienda_virtual`.`proveedor` SET `telefono_provee` = '96321547', `direccion_provee` = 'Col.Suyapa' WHERE (`id_provee` = '1');

UPDATE `tienda_virtual`.`proveedor` SET `telefono_provee` = '63254789' WHERE (`id_provee` = '3');

UPDATE `tienda_virtual`.`proveedor` SET `telefono_provee` = '63215488', `direccion_provee` = 'El trapiche' WHERE (`id_provee` = '4');


DELETE FROM `tienda_virtual`.`proveedor` WHERE (`id_provee` = '1');

DELETE FROM `tienda_virtual`.`proveedor` WHERE (`id_provee` = '5');

DELETE FROM `tienda_virtual`.`proveedor` WHERE (`id_provee` = '4');

DELETE FROM `tienda_virtual`.`proveedor` WHERE (`id_provee` = '3');
