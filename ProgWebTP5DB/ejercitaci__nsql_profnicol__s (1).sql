-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2023 a las 09:26:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercitaciónsql_profnicolás`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Dni` int(11) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `idCursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Dni`, `Apellido`, `Nombre`, `Fecha_Nac`, `idCursos`) VALUES
(4587123, 'Gómez', 'Valeri', '1975-05-05', 2),
(17458963, 'Sanchez', 'Pedro', '1986-01-25', 1),
(22147852, 'Moreira', 'Jorge', '1969-09-14', 3),
(38620103, 'Jimenez', 'Amancio', '1995-07-29', 5),
(40123985, 'Matínez', 'Mirta', '1980-04-16', 5),
(40156300, 'Párraga', 'Marcelo', '1994-03-30', 2),
(41854792, 'Molinari', 'Gabriela', '1984-02-12', 1),
(45123654, 'Cárdenas', 'Daniela', '1975-01-23', 3),
(45725654, 'Córdoba', 'Estefanía', '1993-02-14', 4),
(46751496, 'Licona', 'Patricia', '1971-08-23', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idCursos` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Duración` int(11) NOT NULL,
  `´Turno` varchar(20) NOT NULL,
  `DNIProfesor` int(11) NOT NULL,
  `ID-profesores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idCursos`, `Nombre`, `Fecha_Inicio`, `Duración`, `´Turno`, `DNIProfesor`, `ID-profesores`) VALUES
(1, 'Matemática', '2023-12-04', 120, 'Vespertino', 22458796, 1),
(2, 'Literatura', '2023-12-01', 280, 'Mañana', 20453014, 2),
(3, 'Ciencias Políticas', '2023-12-05', 180, 'Mañana', 25456123, 4),
(4, 'Geografía', '2023-12-04', 280, 'Tarde', 23124657, 3),
(5, 'Historia', '2023-12-13', 120, 'Vespertino', 24523156, 5),
(6, 'Biología', '2023-12-12', 180, 'Tarde', 35487012, 5),
(7, 'Físico-química', '2023-12-04', 120, 'Vespertino', 35463087, 4),
(8, 'Inglés', '2023-12-27', 280, 'Tarde', 36951324, 3),
(9, 'Francés', '2023-12-06', 120, 'Mañana', 34268489, 2),
(10, 'Artística', '2023-12-21', 180, 'Tarde', 26951489, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `DNI` int(11) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Teléfono` int(11) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`DNI`, `Apellido`, `Nombre`, `Teléfono`, `Fecha_Nac`, `Mail`) VALUES
(20453014, 'Salvatierra', 'Claudia', 15402789, '1968-04-16', 'clausalva@gmail.com'),
(21568945, 'Pedrozo', 'Damián', 1125698745, '1976-09-23', 'pedrito@gmail.com'),
(23124657, 'Olivares', 'Mercedes', 154236542, '1970-12-25', 'mecha@gmail.com'),
(24523156, 'Diáscoles', 'Bruno', 155896523, '1986-06-19', 'brunin@gmai.com'),
(25456123, 'Miticcone', 'Mónica', 1123651406, '1968-07-14', 'lamoniquita@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Dni`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCursos`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`DNI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
