CREATE DATABASE IF NOT EXISTS `proyectotiendamvc`;
USE `proyectotiendamvc`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP TABLE IF EXISTS `aspnetroles`;
CREATE TABLE IF NOT EXISTS `aspnetroles` (
  `Id` varchar(128) NOT NULL,
  `Name` varchar(256) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`) VALUES
('617fa34f-9b64-4442-945f-bf497d0f1f29', 'delete'),
('82803d13-bd1f-4214-9dea-a97f5142126c', 'edit'),
('d0228864-fe3a-4996-8a6e-11fb26f12aed', 'view');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
CREATE TABLE IF NOT EXISTS `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(128) NOT NULL,
  `ClaimType` text,
  `ClaimValue` text,
  PRIMARY KEY (`Id`),
  KEY `FK_AspNetUserClaims_AspNetUsers` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
CREATE TABLE IF NOT EXISTS `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `UserId` varchar(128) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`,`UserId`),
  KEY `FK_AspNetUserLogins_AspNetUsers` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
CREATE TABLE IF NOT EXISTS `aspnetuserroles` (
  `UserId` varchar(128) NOT NULL,
  `RoleId` varchar(128) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `FK_AspNetUserRoles_AspNetRoles` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('e92576e7-f588-4b0e-b6bd-3440f7624514', '617fa34f-9b64-4442-945f-bf497d0f1f29'),
('e92576e7-f588-4b0e-b6bd-3440f7624514', '82803d13-bd1f-4214-9dea-a97f5142126c'),
('11fcac59-2f32-4a9c-9303-54fd8e07e781', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('437e94ad-8494-4abc-8dd0-862ffc8ae247', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('4ba4d628-cab9-46dc-8b9a-55c0172a15b8', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('74600ffc-3c62-49fc-b755-f0c975c742ae', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('79f06cc4-55d1-479b-baaa-bba1eb3d4db9', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('7b28bda9-4a54-4b3a-ba83-cabc9cf0582c', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('b8e70443-5f71-45b6-88cb-f886e952217e', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('e92576e7-f588-4b0e-b6bd-3440f7624514', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('f428d0b6-c8d2-443c-89bf-30f69107796d', 'd0228864-fe3a-4996-8a6e-11fb26f12aed'),
('ffa4c47f-0739-48ff-a393-1d5506163dd9', 'd0228864-fe3a-4996-8a6e-11fb26f12aed');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
CREATE TABLE IF NOT EXISTS `aspnetusers` (
  `Id` varchar(128) NOT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `PasswordHash` text,
  `SecurityStamp` text,
  `PhoneNumber` text,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEndDateUtc` datetime DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  `UserName` varchar(256) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Email`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEndDateUtc`, `LockoutEnabled`, `AccessFailedCount`, `UserName`) VALUES
('11fcac59-2f32-4a9c-9303-54fd8e07e781', 'cliente01@gmail.com', b'0', 'ANvhJPlyhzE3NtvsY4oOfC6k+s9TwcmPmsMgmldd5z4waEICWNu2vvN2aV0eMELSkQ==', '09a75a1c-0085-48d4-b6e1-8cf798c222cd', NULL, b'0', b'0', NULL, b'1', 0, 'cliente01'),
('437e94ad-8494-4abc-8dd0-862ffc8ae247', 'xavi@gmail.com', b'0', 'AMP1FsAk2I4q2lE3WNDyCK3mQQUcD+U9B4+bDWi0WKmWf2kickliJLkaxxl7osoihg==', '41b15813-c848-4fef-b9cf-e1c9585653a0', NULL, b'0', b'0', NULL, b'1', 0, 'xavi'),
('4ba4d628-cab9-46dc-8b9a-55c0172a15b8', 'bsnacato@espe.edu.ec', b'0', 'ABXTAe0NAj7SmRWZuCxfYB6YP+UgQP7RUDKyY+lfKQzg1Zkc4NIKYtqFW+fdDT6z7Q==', '23b5e981-e14c-459f-a063-f28a10c7c720', NULL, b'0', b'0', NULL, b'1', 0, 'bsnacato'),
('74600ffc-3c62-49fc-b755-f0c975c742ae', 'juanperez21@outlook.es', b'0', 'AMEXm1WHlOSRFouO6hGO8kdvqXROY1jrWyfPEBdbgudJmDNGdftYURgNl1QH5dAs0w==', 'f41a1baf-8846-449f-a3ec-a406371e5a10', NULL, b'0', b'0', NULL, b'1', 0, 'juan'),
('79f06cc4-55d1-479b-baaa-bba1eb3d4db9', 'andres@gmail.com', b'0', 'AL89pyf2UiBFs+egwlsmvFeHU0cBx89aahzigGjLzKmBwzS5KXIqd9NmyzeVjqerDw==', 'b2f07f25-3275-40bf-a2fd-4714a79f1947', NULL, b'0', b'0', NULL, b'1', 0, 'andres'),
('7b28bda9-4a54-4b3a-ba83-cabc9cf0582c', 'dario@gmail.com', b'0', 'ABEtmU/ffT+L6R1t5fM42h6UZEn7UvLJCGHgYX6B+csO1BzrC81BwSnxW5vRb1L1TQ==', '9f2bfa1e-1888-4245-bae2-9948dfb5c10b', NULL, b'0', b'0', NULL, b'1', 0, 'dario'),
('b8e70443-5f71-45b6-88cb-f886e952217e', 'michelle@gmail.com', b'0', 'APgQZpPeNusCBJ2gHv1hR3fKLjiwR8JHsIdhK2mVM0vBoF5/Bou0NSz2KkNrPQCR9w==', 'e3c9fb22-2b28-4e8e-bc4f-e5dce3ff866c', NULL, b'0', b'0', NULL, b'1', 0, 'michelle'),
('e92576e7-f588-4b0e-b6bd-3440f7624514', 'fernando@gmail.com', b'0', 'APNBNZWeeO4+SybXv+NDGmL/TtQsefnoI2SQj8ZixXX7AxslQ1uFKz9T1U0zWRIb4A==', '4e30cc24-2f63-4be8-8240-86b936f3b141', NULL, b'0', b'0', NULL, b'1', 0, 'fernando'),
('f428d0b6-c8d2-443c-89bf-30f69107796d', 'luis@gmail.com', b'0', 'APbZdHIXyCgF1J8+7H6vZvTo8ReTrC8Q6aBw7N7iEnN1DF0B5rNldtb2dDTbJk1YdA==', 'f9b5602d-ba84-4235-87eb-784aa5e108ae', NULL, b'0', b'0', NULL, b'1', 0, 'luis'),
('ffa4c47f-0739-48ff-a393-1d5506163dd9', 'angie@gmail.com', b'0', 'APe2xmpcWyE7z3MsAKN2YjwYS8TL8+z8oHj7LOfClAKOF3VoM8jQ3aBnxUxS90wWtA==', '09f78db4-500e-41c8-a3db-30644174c3e1', NULL, b'0', b'0', NULL, b'1', 0, 'angie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `ClienteID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Cedula` varchar(15) NOT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `Foto` varchar(50) DEFAULT NULL,
  `Id_Identity` varchar(128) NOT NULL,
  PRIMARY KEY (`ClienteID`),
  UNIQUE KEY `UQ_Clientes_Id_Identity` (`Id_Identity`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Nombre`, `Direccion`, `Ciudad`, `Provincia`, `Telefono`, `Cedula`, `Pais`, `Foto`, `Id_Identity`) VALUES
(1, 'PLUTARCO PEREZ', 'quito', 'Sangolqui', 'PICHINCHA', '1234567890', '1754314886', 'Ecuador', '', '11fcac59-2f32-4a9c-9303-54fd8e07e781'),
(2, 'DONALD TRUMP', 'TORRE TRUMP', 'QUEENS', 'NEW YORK', '0999999999', '6666666666', 'USA', '', 'ffa4c47f-0739-48ff-a393-1d5506163dd9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `PedidoID` int NOT NULL AUTO_INCREMENT,
  `ClienteID` int NOT NULL,
  `FechaPedido` datetime NOT NULL,
  PRIMARY KEY (`PedidoID`),
  KEY `FK_Pedidos_Clientes` (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`PedidoID`, `ClienteID`, `FechaPedido`) VALUES
(1, 1, '2021-02-15 09:26:32'),
(2, 2, '2021-02-16 21:04:33'),
(3, 2, '2021-02-16 21:04:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidositems`
--

DROP TABLE IF EXISTS `pedidositems`;
CREATE TABLE IF NOT EXISTS `pedidositems` (
  `PedidoItemID` int NOT NULL AUTO_INCREMENT,
  `PedidoID` int NOT NULL,
  `ProductoID` int NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`PedidoItemID`),
  KEY `FK_PedidosItems_Pedidos` (`PedidoID`),
  KEY `FK_PedidosItems_Productos` (`ProductoID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidositems`
--

INSERT INTO `pedidositems` (`PedidoItemID`, `PedidoID`, `ProductoID`, `Cantidad`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 10),
(3, 2, 1, 5),
(4, 3, 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `ProductoID` int NOT NULL AUTO_INCREMENT,
  `NombreProducto` varchar(50) NOT NULL,
  `Descripcion` text,
  `Precio` decimal(18,2) NOT NULL,
  `Imagen` longtext,
  `Stock` int NOT NULL,
  `codigo_proveedor` int NOT NULL,
  PRIMARY KEY (`ProductoID`),
  KEY `FK_Productos_Proveedor` (`codigo_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProductoID`, `NombreProducto`, `Descripcion`, `Precio`, `Imagen`, `Stock`, `codigo_proveedor`) VALUES
(1, 'leche', 'leche fresca', 0.85, 'leche.jpg', 50, 1),
(2, 'chocolate', 'chocolate dulce', 10.50, 'chocolate.jpg', 50, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `codigo_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(32) NOT NULL,
  `ciudad` varchar(32) NOT NULL,
  `provincia` varchar(32) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`codigo_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`codigo_proveedor`, `nombre_proveedor`, `ciudad`, `provincia`, `Email`) VALUES
(1, 'Vita', 'Quito', 'Pichincha', 'vita@hotmail.com'),
(2, 'Nestle', 'Guayaquil', 'Guayas', 'nestle@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
CREATE TABLE IF NOT EXISTS `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` text NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`Id_Identity`) REFERENCES `aspnetusers` (`Id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_Pedidos_Clientes` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidositems`
--
ALTER TABLE `pedidositems`
  ADD CONSTRAINT `FK_PedidosItems_Pedidos` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PedidosItems_Productos` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_Productos_Proveedor` FOREIGN KEY (`codigo_proveedor`) REFERENCES `proveedor` (`codigo_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
