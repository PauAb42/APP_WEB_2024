-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2024 a las 02:09:17
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
-- Base de datos: `bd_proyectoutd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `pu` decimal(10,2) DEFAULT NULL,
  `cantidad` int(20) DEFAULT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `descripcion`, `pu`, `cantidad`, `archivo`, `id_categoria`, `usuario`, `fecha`) VALUES
(3, 'Laptop MSI', 'Laptop MSI color negro gamer', 20000.00, 10, 'laptop.png', 3, 10, '2024-11-28 10:19:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`, `titulo`, `fecha`) VALUES
(3, 'Todo lo relacionado con computadoras lo podrás ver aquí', 'Laptops', '2024-11-28 10:17:53'),
(6, 'Todo lo relacionado con Tablets lo encontrarás aquí', 'Tablets', '2024-11-28 10:17:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `passwordd` varchar(300) DEFAULT NULL,
  `privilegio` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `nombre`, `apellidos`, `correo`, `passwordd`, `privilegio`) VALUES
(1, 'juju', 'Amparo ', 'Paez', 'amparo@gmail.com', '$2y$10$YW5qi58sKw3wNhXahX.lxu5NF1n8peEhxGRVwzGQPCFz/uhWDpDmW', 'usuario'),
(2, 'amelia', 'Ami', 'Ontiveros Reyes', 'amelia@gmail.com', '$2y$10$8Bq4BF891TXXl1bGdJsTnOJnvinIm4gIufDsZFZ0cZ4uJNoO.BIpi', 'usuario'),
(4, 'seungmin', 'Seungmin', 'Kim', 'kim@gmail.com', '$2y$10$8tICoZSaHwBtVeG7lSbKY.SnIu0fYhkRHlNjL.BMJsxu8DRsUEfsy', 'usuario'),
(6, 'bahng', 'Christopher', 'Bang ', 'lobo@gmail.com', '$2y$10$ix9AlMeVYk2uDePBOakX1ugcGCi1Tkm.wRxbQIPjVZMnV8WMWIOq.', 'usuario'),
(9, 'ramiro', 'Ramiro', 'Perez', 'ramiro@gmail.com', '$2y$10$1JyL4M01RsK8cqK1GytDme5UwFEAv0ca6MRqsnu2HnePspQtoDihS', 'usuario'),
(10, 'pau', 'Paulina', 'Ale Breceda', 'pau@gmail.com', '$2y$10$axjfnESOSX4MdRNrJ1fUIOLxR83tIcZH.ZVeMGn2cICxgETGESAxq', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
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
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `articulos_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
