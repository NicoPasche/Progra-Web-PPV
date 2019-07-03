-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2019 a las 23:59:55
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nv_prop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `ID_publicacion` int(255) NOT NULL,
  `ID_Tipo` int(255) NOT NULL,
  `Domicilio` varchar(255) NOT NULL,
  `idBarrio` int(255) NOT NULL,
  `Numero de Habitaciones` int(255) NOT NULL,
  `Precio` int(255) NOT NULL,
  `Numero de Contacto` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Fecha de Publicacion` date NOT NULL,
  `iDImg` int(255) NOT NULL,
  `ID_usuario` int(255) NOT NULL,
  `Propiedad Para` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`ID_publicacion`, `ID_Tipo`, `Domicilio`, `idBarrio`, `Numero de Habitaciones`, `Precio`, `Numero de Contacto`, `Email`, `Descripcion`, `Fecha de Publicacion`, `iDImg`, `ID_usuario`, `Propiedad Para`) VALUES
(1, 0, 'Juana Manso 305, Piso 3A', 1, 3, 30000, '1145402569', 'juanp@gmail.com', '', '2018-11-13', 1, 1, 'Alquilar'),
(2, 0, 'Nueva York 3512', 1, 2, 3000000, '1145876399', 'paschen@gmail.com', '', '2018-11-04', 2, 2, 'Comprar'),
(3, 0, '', 1, 0, 10000000, '1145402569', 'juanp@gmail.com', '', '2018-11-06', 3, 1, 'Comprar'),
(4, 0, 'Montevideo 58', 1, 2, 25000, '1145876399', 'paschen@gmail.com', '', '2018-11-09', 4, 2, 'Alquilar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_usuario` int(255) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Contrasenia` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Domicilio` varchar(255) NOT NULL,
  `Nro Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mas Info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_usuario`, `Usuario`, `Contrasenia`, `Nombre`, `Apellido`, `Domicilio`, `Nro Telefono`, `Email`, `Mas Info`) VALUES
(1, 'Juan123', 'muestra123', 'Juan', 'Perez', 'Pueyrredon 2000, CABA', '1145402569', 'juanp@gmail.com', ''),
(2, 'Paschen', 'muestra2123', 'Nicolas', 'Paschetta', 'Peron 100, CABA', '1145876399', 'paschen@gmail.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`ID_publicacion`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `idBarrio` (`idBarrio`),
  ADD KEY `iDImg` (`iDImg`),
  ADD KEY `Tipo` (`ID_Tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `ID_publicacion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`ID_usuario`),
  ADD CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`idBarrio`) REFERENCES `barrio` (`idBarrio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
