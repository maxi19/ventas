-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2022 a las 16:53:45
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuenta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contrasena` varchar(45) NOT NULL,
  `Usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `Nombre`, `Email`, `Contrasena`, `Usuario`) VALUES
(26, 'Gustavo', 'sadas@dasdasd', 'asdasd', 'siiu'),
(27, 'dani ', 'siiiuo@asd', 'sadasd', 'danniel'),
(29, 'dsasdas', 'dasda@asds', 'dfsfdsf', 'dasdasd'),
(31, 'asAas', 'ASa@asddas', 'ASas', 'aSas'),
(35, 'nicolas', '1165496851@FASA', 'x<zx<z', 'asdasd'),
(36, 'bejamin', 'asdvasdash@asd', 'xzczx', 'zxczxczx'),
(47, 'sada', 'asdasd@asdas', 'asdasd', 'asdasd'),
(49, 'asdasd', 'asdas@asda', 'asdasd', 'asdas'),
(50, 'danye', 'sadas@dasdasasd', 'asdasd', 'erdfds'),
(51, 'dasdasd', 'dasdasd@DASDASD', 'dasdasdad', 'asdasdasdsa'),
(52, 'Gustavo', 'czxczxc@saddsd', 'zxczxczx', 'xzczczxczc');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
