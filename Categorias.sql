INSERT INTO `tienda_virtual`.`categorias` (`id`, `nombre_categoria`) VALUES ('1', 'Comidas Rapidas');

INSERT INTO `tienda_virtual`.`categorias` (`id`, `nombre_categoria`) VALUES ('2', 'Celulares');

INSERT INTO `tienda_virtual`.`categorias` (`id`, `nombre_categoria`) VALUES ('3', 'Instrumentos');

UPDATE `tienda_virtual`.`categorias` SET `nombre_categoria` = 'Maquillaje' WHERE (`id` = '1');

UPDATE `tienda_virtual`.`categorias` SET `nombre_categoria` = 'Computadoras' WHERE (`id` = '2');

UPDATE `tienda_virtual`.`categorias` SET `nombre_categoria` = 'Bebidas' WHERE (`id` = '3');



DELETE FROM `tienda_virtual`.`categorias` WHERE (`id` = '1');
DELETE FROM `tienda_virtual`.`categorias` WHERE (`id` = '4');
DELETE FROM `tienda_virtual`.`categorias` WHERE (`id` = '6');



