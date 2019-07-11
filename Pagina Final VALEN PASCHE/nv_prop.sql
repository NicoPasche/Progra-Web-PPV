-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2019 a las 22:11:19
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

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
-- Estructura de tabla para la tabla `barrios`
--

CREATE TABLE `barrios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `barrios`
--

INSERT INTO `barrios` (`id`, `nombre`) VALUES
(1, 'Almagro'),
(2, 'Balvanera'),
(3, 'Barracas'),
(4, 'Belgrano'),
(5, 'Boedo'),
(6, 'Caballito'),
(7, 'Colegiales'),
(8, 'Constitución'),
(9, 'Flores'),
(10, 'Floresta'),
(11, 'La Boca'),
(12, 'La Paternal'),
(13, 'Liniers'),
(14, 'Mataderos'),
(15, 'Núñez'),
(16, 'Palermo'),
(17, 'Parque Avellaneda'),
(18, 'Parque Patricios'),
(19, 'Puerto Madero'),
(20, 'Recoleta'),
(21, 'Retiro'),
(22, 'Saavedra'),
(23, 'Almagro'),
(24, 'Balvanera'),
(25, 'Barracas'),
(26, 'Belgrano'),
(27, 'Boedo'),
(28, 'Caballito'),
(29, 'Colegiales'),
(30, 'Constitución'),
(31, 'Flores'),
(32, 'Floresta'),
(33, 'La Boca'),
(34, 'La Paternal'),
(35, 'Liniers'),
(36, 'Mataderos'),
(37, 'Núñez'),
(38, 'Palermo'),
(39, 'Parque Avellaneda'),
(40, 'Parque Patricios'),
(41, 'Puerto Madero'),
(42, 'Recoleta'),
(43, 'Retiro'),
(44, 'Saavedra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idpublicacion` int(255) NOT NULL,
  `idusuario` int(255) NOT NULL,
  `fechaseleccionada` date NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardadasporusuario`
--

CREATE TABLE `guardadasporusuario` (
  `idpublicacion` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(255) NOT NULL,
  `idtipo` int(255) NOT NULL,
  `idbarrio` int(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `numerodehabitaciones` int(255) NOT NULL,
  `precio` int(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fechadepublicacion` date NOT NULL,
  `idusuario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacionesimagenes`
--

CREATE TABLE `publicacionesimagenes` (
  `id` int(11) NOT NULL,
  `imagen` longblob NOT NULL,
  `idpublicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'Casa'),
(2, 'Departamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `nrotelefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasenia`, `nombre`, `apellido`, `nrotelefono`, `email`) VALUES
(1, 'asdadad', 'pablo', 'dubosc', '12131231231', 'adaa@gmail.com'),
(2, 'a', 'a', 'a', '123123122', 'a@gmail.com'),
(3, 'w', 'tomas', 'dubosc', '12312313', 'hola@gmail.com'),
(4, 'pipi', 'gob', 'dubosc', '121212121', 'gg@uuu.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idpublicacion` (`idpublicacion`);

--
-- Indices de la tabla `guardadasporusuario`
--
ALTER TABLE `guardadasporusuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idpublicacion` (`idpublicacion`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtipo` (`idtipo`),
  ADD KEY `idbarrio` (`idbarrio`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `publicacionesimagenes`
--
ALTER TABLE `publicacionesimagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpublicacion` (`idpublicacion`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrios`
--
ALTER TABLE `barrios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guardadasporusuario`
--
ALTER TABLE `guardadasporusuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicacionesimagenes`
--
ALTER TABLE `publicacionesimagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idpublicacion`) REFERENCES `publicaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `guardadasporusuario`
--
ALTER TABLE `guardadasporusuario`
  ADD CONSTRAINT `guardadasporusuario_ibfk_1` FOREIGN KEY (`idpublicacion`) REFERENCES `publicaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guardadasporusuario_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `publicaciones_ibfk_3` FOREIGN KEY (`idbarrio`) REFERENCES `barrios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicacionesimagenes`
--
ALTER TABLE `publicacionesimagenes`
  ADD CONSTRAINT `publicacionesimagenes_ibfk_1` FOREIGN KEY (`idpublicacion`) REFERENCES `publicaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
