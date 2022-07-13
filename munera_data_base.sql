-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2021 a las 00:17:10
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `munera_data_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foro`
--

CREATE TABLE `foro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL,
  `respuestas` int(11) NOT NULL,
  `identificador` int(11) NOT NULL,
  `ult_respuesta` date NOT NULL,
  `autor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `foro`
--

INSERT INTO `foro` (`id`, `titulo`, `mensaje`, `fecha`, `respuestas`, `identificador`, `ult_respuesta`, `autor`) VALUES
(1, 'ayuda', 'me exploto el cerebro', '2028-10-21 00:00:00', 1, 0, '2028-10-21', ''),
(2, 'anashe', 'uwu', '2029-10-21 00:00:00', 0, 1, '2029-10-21', 'juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `username` text NOT NULL,
  `id` int(11) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`username`, `id`, `password`) VALUES
('juan', 1, '$2y$10$kcl5G5nIm05ME08hH2W3mu1WLqPBJkLcIGwlLef24cUkrIfgz8hDu'),
('fa', 2, '$2y$10$11GrDipkQQZdNSPoLbDjAex.CHMB5fYjRSGnTpNWKZQ1iN4vwU3iK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `mensaje` text NOT NULL,
  `idusuario` int(11) NOT NULL,
  `ide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foro`
--
ALTER TABLE `foro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foro`
--
ALTER TABLE `foro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
