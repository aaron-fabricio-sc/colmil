-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2019 a las 17:52:23
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidad`
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
('ARQ', 'Arquitectura'),
('CONT', 'Contaduria'),
('SIS', 'Ingenieria en Sistemas');

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
(101, 'Alfredo', 'Huanca', 'Torres', '99874981 ', 'LP', 'Base de datos', '1975-04-01', 'HOMBRE', 69811144, 1),
(401, 'Juan Carlos ', 'Copa', 'Leon', '49841961', 'LP', 'SQL server', '1975-06-15', 'HOMBRE', 69781456, 1),
(409, 'Marco ', 'Monterop', 'Garcia', '88484651 ', 'LP', 'Economia', '0000-00-00', 'HOMBRE', 67419161, 0),
(502, 'Julio', 'Miranda', 'Tuco', '7919848 ', 'LP', 'Estadistica, Contabilidad', '1957-12-09', 'HOMBRE', 22997494, 1),
(503, 'dante', 'dante', 'dante', '8916169', 'SCZ', 'JavaScript', '1981-08-16', 'HOMBRE', 488181, 1),
(504, 'maria', 'segarra', 'quispe', '6651165', 'CBBA', 'Ingles', '8111-12-16', 'MUJER', 4861111, 1);

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
(6, 'Rudi', 'Maydana', 'coro', 'ARQ', 'primero', 'Mañana', '1561651', 'LP', 'santiago', '1994-05-05', 'HOMBRE', '65156151', 1),
(7, 'Esther', 'Maldonado', 'Quillaaaa', 'SIS', 'segundo', 'Noche', '1819818', 'LP', 'Ventilla', '1681-09-06', 'MUJER', '18698165', 1),
(8, 'omarr', 'lucio', 'tenorio', 'SIS', 'segundo', 'Noche', '1561651', 'LP', 'rio', '1654-06-18', 'HOMBRE', '16851515', 1),
(9, 'Belen', 'montero', 'Cardenas', 'CONT', 'cuarto', 'Sabados', '964919616', 'LP', 'RIO SECO', '1995-09-11', 'MUJER', '1894981', 1),
(10, 'Jesus ', 'Torrez', 'Tinca', 'CONT', 'tercero', 'Sabados', '8949198', 'LP', '1RO DE MAYO', '1995-07-25', 'HOMBRE', '15161981', 1),
(11, 'Andres', 'Patzi', 'Luna', 'ARQ', 'primero', 'Noche', '98416989', 'LP', 'Ventilla', '1996-08-12', 'HOMBRE', '116518611', 1),
(12, 'Maria', 'Cussi', 'Champani', 'SIS', 'segundo', 'Mañana', '8498419', 'LP', 'Rio seco', '1998-04-02', 'MUJER', '88185161', 1),
(13, 'Evanis', 'Rosales', 'Tincuta', 'ARQ', 'tercero', 'Mañana', '8948918', 'LP', 'Satelite', '1997-12-14', 'MUJER', '84919815', 1),
(14, 'Juan', 'Choque', 'Patzi', 'CONT', 'tercero', 'Noche', '9741815', 'LP', 'Senkata', '1996-04-08', 'HOMBRE', '49561858', 1),
(15, 'Daniel', 'Aruquipa', 'Mendoza', 'SIS', 'cuarto', 'Mañana', '6648849', 'LP', 'Alto Lima', '1992-12-04', 'HOMBRE', '9631821', 1),
(16, 'araseli', 'puno', 'cruz', 'CONT', 'primero', 'Mañana', '16516511', 'LP', 'santiago segundo', '1992-08-08', 'MUJER', '81561651', 1),
(17, 'Alexander', 'German', 'Lima', 'ARQ', 'cuarto', 'Noche', '9451511', 'SCZ', 'Villa Fatima', '1995-08-04', 'HOMBRE', '69816515', 1),
(18, 'Mirko', 'Aparicio', 'Quispe', 'SIS', 'tercero', 'Noche', '9841911', 'LP', '1ro de mayo', '1994-05-14', 'HOMBRE', '64946141', 1),
(19, 'Alejandra', 'Ticona', 'Cruz', 'SIS', 'primero', 'Sabados', '99419115', 'CBBA', 'villa adela', '1998-01-01', 'MUJER', '69416518', 1);

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
('CBBA', 'Cochabamba'),
('LP', 'La paz'),
('SCZ', 'Santa Cruz');

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
(20, 'Arquitectura', '11', 'Maquetacion', 'Huanca', 78, 33, 77, 88, 68, 'no'),
(21, 'Arquitectura', '13', 'Ingles', 'Huanca', 99, 88, 77, 88, 80, 'no'),
(22, 'Arquitectura', '6', 'Ingles', 'Huanca', 88, 55, 77, 66, 70, 'no'),
(23, 'Arquitectura', '6', 'Maquetacion', 'Huanca', 88, 99, 88, 88, 88, 'no'),
(24, 'Ingenieria en Sistemas', '8', 'Redes I', 'Huanca', 50, 50, 50, 40, 99, 'no'),
(25, 'Ingenieria en Sistemas', '12', 'Base de datos', 'Huanca', 88, 88, 8, 66, 56, 'no'),
(26, 'Ingenieria en Sistemas', '7', 'Redes I', 'Huanca', 98, 100, 100, 100, 100, 'no'),
(27, 'Contaduria', '10', 'Estadistica II', 'Huanca', 98, 77, 88, 66, 8, 'si'),
(28, 'Contaduria', '9', 'Estadistica II', 'Huanca', 99, 99, 99, 99, 88, 'no'),
(29, 'Ingenieria en Sistemas', '8', 'Ingles II', 'Huanca', 90, 90, 90, 90, 88, 'no'),
(30, 'Contaduria', '14', 'Econometria', 'Huanca', 41, 22, 22, 41, 22, 'si'),
(31, 'Ingenieria en Sistemas', '12', 'Simulacion y modelaje', 'Huanca', 22, 22, 22, 22, 88, 'no'),
(32, 'Arquitectura', '11', 'Maquetacion', 'Huanca', 88, 88, 33, 3, 10, 'si'),
(33, 'Arquitectura', '13', 'Econometria', 'Miranda', 44, 35, 44, 11, 22, 'si'),
(34, 'Contaduria', '10', 'Calculo I', 'Huanca', 22, 22, 22, 22, 22, 'si');

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
(14, 'Marco mmmm', 'marcos', '1e48c4420b7073bc11916c6c1de226bb', 3, 1),
(15, 'Melisa Guitierrez', 'meli', '5b0859e0152d5c79c9c464b47889ec14', 2, 1),
(16, 'Juan miranda', 'miranda', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 3, 1),
(17, 'Esther Mamani', '554466', '5b32c53bbe2da61b2cabaf79f8385ca0', 3, 1);

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
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `cod_nota` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
