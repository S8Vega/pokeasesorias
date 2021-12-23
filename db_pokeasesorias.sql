-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-12-2021 a las 00:23:30
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_pokeasesorias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `usuario_id` bigint(20) NOT NULL,
  `carrera` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_habilidad`
--

CREATE TABLE `estudiante_habilidad` (
  `habilidad_id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_envio` datetime(6) DEFAULT NULL,
  `receptor` bigint(20) DEFAULT NULL,
  `remitente` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` bigint(20) NOT NULL,
  `mensaje_anterior` bigint(20) DEFAULT NULL,
  `mensaje_siguiente` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `FK24w5g5mjlvvnyxpkkt0d3fsp0` (`carrera`);

--
-- Indices de la tabla `estudiante_habilidad`
--
ALTER TABLE `estudiante_habilidad`
  ADD KEY `FKa064w7kjcn0iyj6ekwi037s28` (`estudiante_id`),
  ADD KEY `FK12jgrqvo0dfj598j0q1kovwu` (`habilidad_id`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdymviif287q344lctpp8fjwjs` (`receptor`),
  ADD KEY `FKbvuu8rj4404q0ard1quu0nney` (`remitente`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_5lfx8w21wj7ik1l3mownyq6l6` (`mensaje_anterior`),
  ADD UNIQUE KEY `UK_6xh5qng08xs6645whfnpahijk` (`mensaje_siguiente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_js9w4v8xbocealarwch8tp0yn` (`alias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `FK24w5g5mjlvvnyxpkkt0d3fsp0` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`id`),
  ADD CONSTRAINT `FKs6tki8rbjso4kwof8pdlfufow` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `estudiante_habilidad`
--
ALTER TABLE `estudiante_habilidad`
  ADD CONSTRAINT `FK12jgrqvo0dfj598j0q1kovwu` FOREIGN KEY (`habilidad_id`) REFERENCES `habilidad` (`id`),
  ADD CONSTRAINT `FKa064w7kjcn0iyj6ekwi037s28` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`usuario_id`);

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `FKbvuu8rj4404q0ard1quu0nney` FOREIGN KEY (`remitente`) REFERENCES `estudiante` (`usuario_id`),
  ADD CONSTRAINT `FKdymviif287q344lctpp8fjwjs` FOREIGN KEY (`receptor`) REFERENCES `estudiante` (`usuario_id`);

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `FKmsofbc88men9u33ji5ejfgva7` FOREIGN KEY (`mensaje_siguiente`) REFERENCES `mensaje` (`id`),
  ADD CONSTRAINT `FKqits4fo9prutdi2l5sr2jrfef` FOREIGN KEY (`mensaje_anterior`) REFERENCES `mensaje` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
