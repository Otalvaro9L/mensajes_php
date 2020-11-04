-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2020 a las 01:22:48
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `Id_mensaje` int(7) NOT NULL,
  `texto_mensaje` varchar(200) NOT NULL,
  `fecha_mensaje` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Id_usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(2) NOT NULL,
  `nombre_completo` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `celular` bigint(10) NOT NULL,
  `clave` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`Id_mensaje`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `Id_mensaje` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(2) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
