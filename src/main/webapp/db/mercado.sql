-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 02:42:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Futbol'),
(2, 'Voley'),
(3, 'Variado'),
(8, 'Sin categoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'PUMA'),
(2, 'CORDONERIA'),
(3, 'NASSAU'),
(4, 'GOALTY'),
(5, 'NIKE'),
(6, 'DRB'),
(7, 'PROCER'),
(17, 'Sin marca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `identificador` varchar(50) NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `monto` int(11) NOT NULL DEFAULT 0,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `factura` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(100) DEFAULT NULL,
  `fecha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `identificador`, `estado`, `monto`, `email`, `telefono`, `factura`, `direccion`, `cp`, `fecha`) VALUES
(10, 'EDAC4FE5FD', 'PENDIENTE_ENTREGA', 60880, 'ninguno', 'ninguno', '00000001-0000001', 'ninguno', 'ninguno', '2024-09-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `precio` double NOT NULL,
  `origen` varchar(15) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_marca`, `titulo`, `nombre`, `descripcion`, `id_categoria`, `stock`, `precio`, `origen`, `portada`, `imagen`) VALUES
(1, 1, 'PELOTA DE FUTBOL ', 'PELOTA DE FUTBOL PUMA', 'PRESTIGE NUMERO 5 LIMA', 1, 20, 31499, 'china', 1, 'media/1.jpg'),
(2, 1, 'PELOTA DE FUTBOL', ' PELOTA DE FUTBOL PUMA ORBITA ', 'LA LIGA NUMERO 5 BLANCA', 1, 20, 36999, 'china', 1, 'media/2.jpg'),
(3, 2, 'CORDONES ', 'CORDONES  LA CORDONERIA ', 'COBRA REFORZADO VERDE', 3, 20, 3790, 'china', 1, 'media/3.jpg'),
(4, 3, 'INFLADOR NASSAU', 'INFLADOR NASSAU DOBLE ACCION 6 ', 'NEGRO', 3, 20, 9800, 'china', 1, 'media/4.jpg'),
(5, 4, 'GUANTES DE ARQUERO', 'GUANTES DE ARQUERO GOALTY RAPTOR', 'NEGRO', 1, 10, 31000, 'china', 1, 'media/5.jpg'),
(6, 5, 'RODILLERA DE VOLEY ', 'RODILLERA DE VOLEY NIKE STREAK', 'BLANCA', 2, 20, 65205, 'china', 1, 'media/6.jpg'),
(7, 3, 'RODILLERA DE VOLEY', 'RODILLERA DE VOLEY NASSAU COVER', 'AZUL', 2, 19, 13800, 'china', 1, 'media/7.jpg'),
(8, 6, 'GUANTES DE ARQUERO', 'GUANTES DE ARQUERO DRB MASTER 23', 'AMARILLO', 1, 18, 22000, 'china', 1, 'media/8.jpg'),
(9, 7, 'VENDA ELASTICA', 'VENDA ELASTICA PROCER', '5 CM NEGRA', 3, 19, 3080, 'china', 1, 'media/9.jpg'),
(10, 7, 'VENDA ELASTICA ', 'VENDA ELASTICA PROCER', '11 CM BLANCA', 3, 10, 3010, 'china', 1, 'media/10.jpg'),
(41, 17, 'wqeeqwwqewqeq', 'gustavoawsdasd', 'Sin descripcion', 1, 12, 700, '', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`, `habilitado`) VALUES
(1, 'admin', 'j@mon2022', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `factura` varchar(45) NOT NULL,
  `producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `pago` int(11) NOT NULL,
  `identificador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `factura`, `producto`, `cantidad`, `importe`, `nombre`, `direccion`, `total`, `fecha`, `pago`, `identificador`) VALUES
(82, '1', 9, 1, 3080, 'gustavo gustavo', 'fatima', 0, '2024-09-16', 1, 'EDAC4FE5FD'),
(83, '1', 7, 1, 13800, 'gustavo gustavo', 'fatima', 0, '2024-09-16', 1, 'EDAC4FE5FD'),
(84, '1', 8, 2, 44000, 'gustavo gustavo', 'fatima', 0, '2024-09-16', 1, 'EDAC4FE5FD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
