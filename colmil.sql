-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2021 a las 20:28:18
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colmil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `cod_carrera` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_carrera` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`cod_carrera`, `nombre_carrera`) VALUES
('ART', 'Artillería'),
('CAB', 'Caballería'),
('INF', 'Infantería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `primer_apellido` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `ci` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidad` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `celular` int(30) NOT NULL,
  `estatus` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`cod`, `nombre`, `primer_apellido`, `segundo_apellido`, `ci`, `departamento`, `especialidad`, `fecha_nacimiento`, `genero`, `celular`, `estatus`) VALUES
(505, 'FDSFDS', 'FDSFDSF', 'FDSFDS', '123123', 'BE', 'DSAASDAS', '2021-04-08', 'MUJER', 232131, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `ap_paterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `ap_materno` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `carrera` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `gestion` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `turno` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `ci` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_celular` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estatus` int(15) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `ap_paterno`, `ap_materno`, `carrera`, `gestion`, `turno`, `ci`, `departamento`, `direccion`, `fecha_nacimiento`, `genero`, `telefono_celular`, `estatus`) VALUES
(20, 'asd', 'asd', 'qwe', 'CAB', 'primero', 'Mañana', '213123', 'BE', 'dasdas', '2021-04-07', 'MUJER', '213123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extencion`
--

CREATE TABLE `extencion` (
  `cod_extencion` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `extencion`
--

INSERT INTO `extencion` (`cod_extencion`, `departamento`) VALUES
('BE', 'Beni'),
('CBBA', 'Cochabamba'),
('LP', 'La paz'),
('OR', 'Oruro'),
('PD', 'Pando'),
('PT', 'Potosí'),
('SCZ', 'Santa Cruz'),
('TJ', 'Tarija');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `cod_materia` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `carrera` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `materia` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `gestion` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estatus` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`cod_materia`, `carrera`, `materia`, `gestion`, `estatus`) VALUES
('', '', '', '', 1),
('54', 'Artillería', 'php2', '1er año', 1),
('ARQ-204', 'Arquitectura', 'Ingles', '2do año', 1),
('ARQ-308', 'Arquitectura', 'Maquetación', '4to año', 1),
('ARQ-401', 'Arquitectura', 'Maquetacion', '4to año', 0),
('CONT-101', 'Contaduria', 'Calculo I', '1er año', 1),
('CONT-106', 'Contaduria', 'Ingles I', '1er año', 1),
('CONT-305', 'Contaduria', 'Estadistica II', '3er año', 1),
('CONT-401', 'Arquitectura', 'Econometria', '4to año', 1),
('SIS-103', 'Ingenieria en sistemas', 'Redes I', '1er año', 1),
('SIS-108', 'Ingenieria en sistemas', 'Introduccion a la programacion', '1er año', 1),
('SIS-205', 'Ingenieria en sistemas', 'Base de datos', '2do año', 1),
('SIS-304', 'Ingenieria en sistemas', 'Ingles II', '3er año', 1),
('SIS-401', 'Ingenieria en sistemas', 'Simulacion y modelaje', '4to año', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `cod_nota` int(15) NOT NULL,
  `carrera` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estudiante` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `materia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `docente` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `primer_parcial` int(10) NOT NULL,
  `segundo_parcial` int(10) NOT NULL,
  `tercer_parcial` int(10) NOT NULL,
  `examen_final` int(10) NOT NULL,
  `promedio` int(10) NOT NULL,
  `segunda_instancia` varchar(10) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`cod_nota`, `carrera`, `estudiante`, `materia`, `docente`, `primer_parcial`, `segundo_parcial`, `tercer_parcial`, `examen_final`, `promedio`, `segunda_instancia`) VALUES
(35, '', '20', 'Redes I', 'FDSFDSF', 50, 30, 10, 50, 80, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `rol`) VALUES
(1, '\0A\0d\0m\0i\0n\0i\0s\0t\0r\0a\0d\0o\0r'),
(2, 'Personal Administrativo'),
(3, '\0D\0o\0c\0e\0n\0t\0e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `rol` int(50) NOT NULL,
  `estatus` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `usuario`, `codigo`, `rol`, `estatus`) VALUES
(1, 'Aaron Fabricio Santa Cruz', 'aaron', 'b5479021bf286afbd3e3b198c97d1845', 1, 1),
(14, 'Marco mmmm', 'marcos', '1e48c4420b7073bc11916c6c1de226bb', 3, 0),
(15, 'Melisa Guitierrez', 'meli', '5b0859e0152d5c79c9c464b47889ec14', 2, 1),
(16, 'Juan miranda', 'miranda', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 3, 1),
(17, 'Esther Mamani', '554466', '5b32c53bbe2da61b2cabaf79f8385ca0', 3, 1),
(18, 'Marco Antonio ', 'marAnt', '25d55ad283aa400af464c76d713c07ad', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`cod_carrera`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrera` (`carrera`),
  ADD KEY `extencion` (`departamento`);

--
-- Indices de la tabla `extencion`
--
ALTER TABLE `extencion`
  ADD PRIMARY KEY (`cod_extencion`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`cod_materia`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`cod_nota`),
  ADD KEY `materia` (`materia`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `cod_nota` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`cod_carrera`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `rol` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
