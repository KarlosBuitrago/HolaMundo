-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2022 a las 02:54:08
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id_historia_clinica`),
  ADD UNIQUE KEY `id_paciente` (`id_paciente`),
  ADD UNIQUE KEY `id_doctor` (`id_doctor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  MODIFY `id_historia_clinica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

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
