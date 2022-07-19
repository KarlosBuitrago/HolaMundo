-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2022 a las 00:13:03
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital2`
--
create database hospital2;
use hospital2;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `id_doctor` int(11) NOT NULL,
  `tipo_documento_doctor` varchar(30) NOT NULL,
  `documento_doctor` varchar(20) NOT NULL,
  `nombre_doctor` varchar(80) NOT NULL,
  `correo_doctor` varchar(80) NOT NULL,
  `telefono_doctor` int(15) NOT NULL,
  `ciudad_doctor` varchar(80) NOT NULL,
  `direccion_doctor` text NOT NULL,
  `id_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`id_doctor`, `tipo_documento_doctor`, `documento_doctor`, `nombre_doctor`, `correo_doctor`, `telefono_doctor`, `ciudad_doctor`, `direccion_doctor`, `id_especialidad`) VALUES
(1, 'cédula', '11111111', 'Carlos Buitrago', 'cb@gmail.com', 2147483647, 'Ibague', 'cra5', 3),
(2, 'cédula', '222222', 'Valeria gomez', 'vg@gmail.com', 2147483647, 'Bogota', 'cra1', 2),
(3, 'cédula', '33333333', 'Jhon giraldo', 'jg@gmail.com', 304598643, 'Medellin', 'cr3', 5),
(4, 'cédula', '444444444', 'Carlos Torres', 'ct@gmail.com', 2147483647, 'Bogota', 'cra4', 1),
(5, 'cédula', '555555555', 'Natalia Zapata', 'nz@gmail.com', 2147483647, 'Medellin', 'cra6', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `nombre_especialidad` varchar(50) NOT NULL,
  `codigo_cups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `nombre_especialidad`, `codigo_cups`) VALUES
(1, 'Dermatologia', 5),
(2, 'Endocrinologia', 10),
(3, 'Pediatría', 15),
(4, 'Ginecologia', 20),
(5, 'Ortopedista', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica`
--

CREATE TABLE `historia_clinica` (
  `id_historia_clinica` int(11) NOT NULL,
  `diagnostico` text NOT NULL,
  `medicamentos` varchar(250) NOT NULL,
  `examenes` varchar(250) NOT NULL,
  `incapacidades` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `antecedentes` varchar(250) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historia_clinica`
--

INSERT INTO `historia_clinica` (`id_historia_clinica`, `diagnostico`, `medicamentos`, `examenes`, `incapacidades`, `fecha`, `antecedentes`, `id_paciente`, `id_doctor`) VALUES
(1, 'Dermatitis', 'Betametasona', '0', '0', '2022-05-25', '0', 1, 1),
(2, 'Ovario poliquistico', 'Metformina', 'si', 'un dia', '2022-03-09', 'Ovario poliquistico', 2, 2),
(3, 'Asma', 'Salbutamol', 'Si', '0', '2022-01-11', 'Neumonia', 3, 3),
(4, 'Colposcopia', '0', '0', '0', '2022-04-19', 'Control Anual', 4, 4),
(5, 'Desgaste articular', 'Ketaprofeno', 'Si', 'Tres dias', '2022-02-23', 'Dolor de rodilla', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `tipo_documento_paciente` varchar(50) NOT NULL,
  `documento_paciente` varchar(20) NOT NULL,
  `nombre_paciente` varchar(80) NOT NULL,
  `numero_celular` int(11) NOT NULL,
  `eps_paciente` varchar(50) NOT NULL,
  `correo_paciente` varchar(80) NOT NULL,
  `ciudad_paciente` varchar(50) NOT NULL,
  `direccion_paciente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `tipo_documento_paciente`, `documento_paciente`, `nombre_paciente`, `numero_celular`, `eps_paciente`, `correo_paciente`, `ciudad_paciente`, `direccion_paciente`) VALUES
(1, 'cédula', '12345', 'Camilo Torres', 2147483647, 'Sanitas', 'cnunez@gmail', 'Cali', 'Cra 23'),
(2, 'Tarjeta identidad', '454656565', 'Pepito  Torres', 2147483647, 'Sanitas', 'p@gmail', 'Cali', 'Cra 30'),
(3, 'cédula', '1234587945', 'Felipe Lopez', 2147483647, 'Sura', 'fl@gmail', 'Bogota', 'Cra 45'),
(4, 'Tarjeta identidad', '00983712', 'Santiago perez', 2147483647, 'Nueva eps', 'sp@gmail', 'Manizales', 'Cra 3'),
(5, 'cédula', '123531234', 'Valeria Torres', 2147483647, 'Coomeva', 'vt@gmail', 'Cali', 'Cra 2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_doctor`),
  ADD UNIQUE KEY `id_especialidad` (`id_especialidad`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id_historia_clinica`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`),
  ADD UNIQUE KEY `id_doctor` (`id_doctor`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  MODIFY `id_historia_clinica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD CONSTRAINT `historia_clinica_ibfk_1` FOREIGN KEY (`id_doctor`) REFERENCES `doctor` (`id_doctor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `historia_clinica_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
