-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2019 a las 02:29:51
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `imagenes` varchar(255) NOT NULL,
  `idusuario` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `nrotelefono` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
