
DELETE FROM `tienda_virtual`.`usuarios` WHERE (`id` = '1');
DELETE FROM `tienda_virtual`.`usuarios` WHERE (`id` = '4');
DELETE FROM `tienda_virtual`.`usuarios` WHERE (`id` = '5');


UPDATE `tienda_virtual`.`usuarios` SET `apellido` = 'Hernandez' WHERE (`id` = '2');

UPDATE `tienda_virtual`.`usuarios` SET `apellido` = 'Diaz' WHERE (`id` = '6');

UPDATE `tienda_virtual`.`usuarios` SET `apellido` = 'Perez' WHERE (`id` = '3');


INSERT INTO `tienda_virtual`.`usuarios` (`id`, `nombre`, `apellido`, `correo`, `contraseña`) VALUES ('1', 'Kevin', 'Lopez', 'kevinlopez@gmail.com', 'lopez1234');

INSERT INTO `tienda_virtual`.`usuarios` (`id`, `nombre`, `apellido`, `correo`, `contraseña`) VALUES ('2', 'Maria', 'Garcia', 'mariagarcia@gmail.com', 'garcia1234');

INSERT INTO `tienda_virtual`.`usuarios` (`id`, `nombre`, `apellido`, `correo`, `contraseña`) VALUES ('3', 'Andres','Lopez', 'lopez@gmail.com', 'lopez1234');
