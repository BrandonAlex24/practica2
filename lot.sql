-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2022 a las 17:07:43
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lectura_sensores`
--

CREATE TABLE `lectura_sensores` (
  `Id` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Sensor` varchar(20) NOT NULL,
  `Lectura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lectura_sensores`
--

INSERT INTO `lectura_sensores` (`Id`, `Fecha`, `Hora`, `Sensor`, `Lectura`) VALUES
(0, '2022-03-02', '11:19:13', 'Potenciometro', '512'),
(1, '2022-03-02', '11:29:13', 'Potenciometro', '256');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lectura_sensores`
--
ALTER TABLE `lectura_sensores`
  ADD KEY `Id` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
