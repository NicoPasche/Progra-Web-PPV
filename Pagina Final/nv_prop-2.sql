-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-11-2018 a las 23:11:32
-- Versión del servidor: 5.6.35
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `NV-Propiedades`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Publicaciones`
--

CREATE TABLE `Publicaciones` (
  `ID_publicacion` int(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Barrio` varchar(255) NOT NULL,
  `Domicilio` varchar(255) NOT NULL,
  `Numero de Habitaciones` int(255) NOT NULL,
  `Precio` int(255) NOT NULL,
  `Numero de Contacto` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Fecha de Publicacion` date NOT NULL,
  `Imagenes` varchar(255) NOT NULL,
  `ID_usuario` int(255) NOT NULL,
  `Propiedad Para` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Publicaciones`
--

INSERT INTO `Publicaciones` (`ID_publicacion`, `Tipo`, `Barrio`, `Domicilio`, `Numero de Habitaciones`, `Precio`, `Numero de Contacto`, `Email`, `Descripcion`, `Fecha de Publicacion`, `Imagenes`, `ID_usuario`, `Propiedad Para`) VALUES
(1, 'Departamento', 'Puerto Madero', 'Juana Manso 305, Piso 3A', 3, 30000, '1145402569', 'juanp@gmail.com', '', '2018-11-13', '', 1, 'Alquilar'),
(2, 'Casa', 'Devoto', 'Nueva York 3512', 2, 3000000, '1145876399', 'paschen@gmail.com', '', '2018-11-04', '', 2, 'Comprar'),
(3, 'Lote', 'Belgrano', '', 0, 10000000, '1145402569', 'juanp@gmail.com', '', '2018-11-06', '', 1, 'Comprar'),
(4, 'Departamento', 'Recoleta', 'Montevideo 58', 2, 25000, '1145876399', 'paschen@gmail.com', '', '2018-11-09', '', 2, 'Alquilar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pub_Elegidas`
--

CREATE TABLE `Pub_Elegidas` (
  `ID_publicacion` int(255) NOT NULL,
  `ID_usuario` int(255) NOT NULL,
  `Fecha Seleccionada` date NOT NULL,
  `ID_eleccion` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pub_Elegidas`
--

INSERT INTO `Pub_Elegidas` (`ID_publicacion`, `ID_usuario`, `Fecha Seleccionada`, `ID_eleccion`) VALUES
(1, 2, '2018-11-06', 1),
(2, 1, '2018-11-12', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pub_Guardadasx_Usuario`
--

CREATE TABLE `Pub_Guardadasx_Usuario` (
  `ID_publicacion` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Guardada` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pub_Guardadasx_Usuario`
--

INSERT INTO `Pub_Guardadasx_Usuario` (`ID_publicacion`, `ID_Usuario`, `ID_Guardada`) VALUES
(3, 2, 1),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
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
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`ID_usuario`, `Usuario`, `Contrasenia`, `Nombre`, `Apellido`, `Domicilio`, `Nro Telefono`, `Email`, `Mas Info`) VALUES
(1, 'Juan123', 'muestra123', 'Juan', 'Perez', 'Pueyrredon 2000, CABA', '1145402569', 'juanp@gmail.com', ''),
(2, 'Paschen', 'muestra2123', 'Nicolas', 'Paschetta', 'Peron 100, CABA', '1145876399', 'paschen@gmail.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Publicaciones`
--
ALTER TABLE `Publicaciones`
  ADD PRIMARY KEY (`ID_publicacion`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- Indices de la tabla `Pub_Elegidas`
--
ALTER TABLE `Pub_Elegidas`
  ADD PRIMARY KEY (`ID_eleccion`),
  ADD KEY `ID_publicacion` (`ID_publicacion`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- Indices de la tabla `Pub_Guardadasx_Usuario`
--
ALTER TABLE `Pub_Guardadasx_Usuario`
  ADD PRIMARY KEY (`ID_Guardada`),
  ADD KEY `ID_publicacion` (`ID_publicacion`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Publicaciones`
--
ALTER TABLE `Publicaciones`
  MODIFY `ID_publicacion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Pub_Elegidas`
--
ALTER TABLE `Pub_Elegidas`
  MODIFY `ID_eleccion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Pub_Guardadasx_Usuario`
--
ALTER TABLE `Pub_Guardadasx_Usuario`
  MODIFY `ID_Guardada` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `ID_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Publicaciones`
--
ALTER TABLE `Publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `Usuarios` (`ID_usuario`);

--
-- Filtros para la tabla `Pub_Elegidas`
--
ALTER TABLE `Pub_Elegidas`
  ADD CONSTRAINT `pub_elegidas_ibfk_1` FOREIGN KEY (`ID_publicacion`) REFERENCES `Publicaciones` (`ID_publicacion`),
  ADD CONSTRAINT `pub_elegidas_ibfk_2` FOREIGN KEY (`ID_usuario`) REFERENCES `Usuarios` (`ID_usuario`);

--
-- Filtros para la tabla `Pub_Guardadasx_Usuario`
--
ALTER TABLE `Pub_Guardadasx_Usuario`
  ADD CONSTRAINT `pub_guardadasx_usuario_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuarios` (`ID_usuario`),
  ADD CONSTRAINT `pub_guardadasx_usuario_ibfk_2` FOREIGN KEY (`ID_publicacion`) REFERENCES `Publicaciones` (`ID_publicacion`);
