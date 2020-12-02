-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 02:57:36
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `AreCod` int(11) NOT NULL,
  `AreNom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`AreCod`, `AreNom`) VALUES
(1, 'INGENIERIAS'),
(3, 'General'),
(4, 'BIOLOGIA'),
(5, 'ARTES'),
(6, 'SALUD'),
(7, 'Método de Newton-Raphson'),
(8, 'General de Métodos'),
(9, 'Método de Bisección'),
(10, 'Método de Punto Fijo'),
(11, 'Método de la Secante'),
(12, 'Método de Falsa Posición');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `CarCod` int(11) NOT NULL,
  `CarAreCod` int(11) NOT NULL,
  `CarNom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`CarCod`, `CarAreCod`, `CarNom`) VALUES
(1, 4, 'Ingeniería Ambiental'),
(2, 4, 'Biología'),
(3, 4, 'Planificación para el Desarrollo Agropecuario'),
(4, 3, 'SALUD'),
(5, 3, 'SOCIALES'),
(6, 3, 'ADMINISTRACI?N'),
(7, 3, 'INGENIERIA'),
(8, 3, 'BIOLOGIA'),
(9, 3, 'ARTE'),
(10, 5, 'DANZA'),
(11, 3, 'EDUCACI?N'),
(12, 5, 'DISE?O'),
(13, 5, 'PINTURA'),
(14, 5, 'M?SICA'),
(15, 5, 'ARTES PL?STICAS'),
(16, 7, 'Teoría'),
(17, 7, 'Práctica'),
(20, 8, 'Teoría'),
(21, 8, 'Práctica'),
(22, 11, 'Teoría'),
(23, 11, 'Práctica'),
(24, 10, 'Teoría\r\n'),
(25, 10, 'Práctica'),
(26, 12, 'Teoría'),
(27, 12, 'Práctica'),
(28, 9, 'Teoría'),
(29, 9, 'Practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `PerCod` int(11) NOT NULL,
  `PerNom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PerApe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PerEda` int(11) NOT NULL,
  `PerCor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contrasenia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PerPri` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`PerCod`, `PerNom`, `PerApe`, `PerEda`, `PerCor`, `contrasenia`, `PerPri`) VALUES
(1, 'Pedro', 'Gonzales ', 17, 'liamPa@hotmail.com', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personatest`
--

CREATE TABLE `personatest` (
  `PerTesCod` int(11) NOT NULL,
  `PerTesTesCod` int(11) NOT NULL,
  `PerTesPerCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `PreCod` int(11) NOT NULL,
  `PreTesCod` int(11) NOT NULL,
  `PreNom` varchar(255) NOT NULL,
  `PreCarCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`PreCod`, `PreTesCod`, `PreNom`, `PreCarCod`) VALUES
(19, 66, 'te guta animales', 2),
(20, 66, 'te gusta naturialea', 1),
(22, 70, 'A parte de los libros que te mandan en la escuela ¿con qué frecuencia lees?', 5),
(23, 70, '¿Qué haces cuando estás enfermo y te mandan tomar un medicamento?', 4),
(24, 70, 'Tu nota media de matemáticas en la preparatoria fue de:', 7),
(25, 70, 'El trato con animales:', 8),
(26, 70, 'Del 1 al 10 ¿con qué soltura te desenvuelves con la computadora?', 7),
(27, 70, '¿Estarías de acuerdo en trabajar en una revista de economía escribiendo artículos?', 6),
(28, 70, '¿Te interesa saber cómo funcionan aparatos que usas a diario como el celular, la televisión o la computadora?', 7),
(29, 70, 'Cuando quieres comprarte algo:', 6),
(30, 70, 'En general ¿te gusta resolver problemas matemáticos? :', 7),
(31, 70, 'El funcionamiento de la célula te parece:', 8),
(32, 70, '¿Perteneces a alguna asociación de ayuda social?', 5),
(33, 70, 'Los artículos de divulgación científica te parecen:', 7),
(34, 70, 'En general ¿has obtenido buenas calificaciones en actividades de laboratorio?', 7),
(35, 70, '¿Te gustaría estudiar en profundidad un idioma?', 5),
(36, 70, '¿Cómo te sientes cuando hablas en público?\r\n', 11),
(37, 70, '¿Tratas de entender el comportamiento de tus amigos cuando surge un problema?\r\n', 5),
(38, 70, 'Tu nota media de biología en la preparatoria fue de:', 8),
(39, 70, '¿Te gusta la vida rural?\r\n', 8),
(40, 70, 'Si te hacen una extracción de sangre:', 4),
(41, 70, '¿Te consideras una persona creativa e imaginativa?\r\n', 9),
(42, 70, '¿Tienes un registro personal de gastos?\r\n', 6),
(43, 70, 'Las técnicas de primeros auxilios...\r\n', 4),
(44, 70, 'Cuando un amigo no entiende algo:\r\n', 11),
(45, 70, 'En comparación con gente de tu edad, destacas en música, creatividad u otra forma de arte.', 9),
(46, 70, '¿Qué haces si sientes alguna dolencia?', 4),
(47, 70, 'Cuando tienes que explicar algo a otra persona...', 11),
(48, 70, '¿Con qué frecuencia visitas una exposición artística?', 9),
(49, 70, '¿Qué haces cuando se descompone algún electrodoméstico en casa?\r\n', 7),
(50, 70, 'Cuando sales con los amigos...\r\n', 9),
(51, 70, '¿Prefieres trabajar con máquinas o con personas?', 7),
(52, 70, '¿Trabajarías en tus ratos libres como profesor particular?', 11),
(53, 70, '¿Qué haces cuando tienes una meta bien definida?\r\n', 6),
(56, 75, '¿Sueles ir a conciertos de danza?', 10),
(57, 75, '¿Si te proponen salir a bailar...?', 10),
(58, 75, '¿Te gustaría aprender a leer partituras e interpretarlas?', 14),
(59, 75, 'Cada vez que ves un piano, ¿te dan ganas de comenzar a tocar música?', 14),
(60, 75, '¿Cuando dibujas algo lo haces de manera artística?', 12),
(61, 75, '¿Eres habilidoso con programas informáticos de diseño?', 12),
(62, 75, '¿Te gustaría trabajar fabricando esmaltes?', 13),
(63, 75, '\"¿Te gustaría trabajar fabricando artesanalmente distintos tipos de tela? \"', 15),
(64, 75, '¿En la secundaria solías participar en los bailes regionales de Perú?', 10),
(65, 75, '¿Te inhibes cuando tienes que hablar enfrente de la gente?', 14),
(66, 75, '¿Te gustan los bailes representativos de distintos países?', 10),
(67, 75, '¿Consideras que tienes habilidad para moldear cosas con las manos?', 15),
(68, 75, '¿En la escuela te consideran una persona creativa?', 13),
(69, 75, 'La calidad de tus trabajos manuales en la escuela era muy buena...', 15),
(70, 75, '¿Te gustaría trabajar fabricando joyas?', 15),
(71, 75, '¿Te llama la atención los diferentes géneros musicales?', 14),
(72, 86, 'pregunta 1 de metodo newton ', 16),
(73, 86, '¿Qué haces cuando estás enfermo y te mandan tomar un medicamento?', 17),
(74, 86, 'te gusta el  cmapo', 17),
(75, 86, 'verde', 17),
(76, 86, 'Del 1 al 10 ¿con qué soltura te desenvuelves con la computadora?', 16),
(77, 88, 'te guta animales', 16),
(78, 88, 'te gusta naturialea', 16),
(79, 88, 'te gusta el  cmapo', 17),
(80, 90, 'te guta animales', 21),
(81, 90, 'te gusta naturialea', 20),
(82, 90, 'te gusta el  cmapo', 20),
(83, 90, 'verde', 21),
(84, 92, 'Ordene los pasos a seguir para encontrar raíces con el método de la secante:', 23),
(85, 92, 'te gusta naturialea', 22),
(86, 92, 'te gusta el  cmapo', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `ResCod` int(11) NOT NULL,
  `ResPreCod` int(11) NOT NULL,
  `ResValor` int(1) NOT NULL,
  `ResNom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`ResCod`, `ResPreCod`, `ResValor`, `ResNom`) VALUES
(7, 19, 0, 'si'),
(8, 19, 1, 'poco'),
(9, 19, 2, 'mucho'),
(10, 20, 0, 'si'),
(11, 20, 1, 'poco'),
(12, 20, 2, 'mucho'),
(13, 22, 0, 'Nunca'),
(14, 22, 1, 'De vez en cuando'),
(15, 22, 2, 'Siempre que tengo ocasion'),
(16, 23, 0, 'Sencillamente lo tomo'),
(17, 23, 1, 'Miro que contradicciones puede tener'),
(18, 23, 2, 'Leo el prospecto de arriba a abajo'),
(19, 24, 0, 'Entre 11-14'),
(20, 24, 1, 'Entre 15-17'),
(21, 24, 2, 'Entre 18-20'),
(22, 25, 0, 'Me es indiferente'),
(23, 25, 1, 'Me resulta interesante'),
(24, 25, 2, 'Me encanta'),
(25, 26, 0, 'De 0 al 5'),
(26, 26, 1, 'De 5 al 5'),
(27, 26, 2, 'De 7 al 10'),
(28, 27, 0, 'Preferiría no tener que hacerlo'),
(29, 27, 1, 'Si , me gustaria'),
(30, 27, 2, 'Seria un trabajo muy gratificante'),
(31, 28, 0, 'Nada'),
(32, 28, 1, 'Algo'),
(33, 28, 2, 'Mucho'),
(34, 29, 0, 'Pides el dinero a tus padres'),
(35, 29, 1, 'Pides una parte del dinero a tus padres'),
(36, 29, 2, 'Ahorras y lo compras cuando haya reunido todo el dinero'),
(37, 30, 0, 'Nada'),
(38, 30, 1, 'Algo'),
(39, 30, 2, 'Mucho'),
(40, 31, 0, 'Indiferente'),
(41, 31, 1, 'Interesante'),
(42, 31, 2, 'Fascinate'),
(43, 32, 0, 'No entra en mis planes.'),
(44, 32, 1, 'Es algo que quiero hacer más adelante.'),
(45, 32, 2, 'Ya participo activamente en una.'),
(46, 33, 0, 'Aburridos.'),
(47, 33, 1, 'Entretenidos.'),
(48, 33, 2, 'Muy interesantes.'),
(49, 34, 0, 'Regulares.'),
(50, 34, 1, 'Buenas.'),
(51, 34, 2, 'Muy buenas.'),
(52, 35, 0, 'Me resulta aburrido.'),
(53, 35, 1, 'Es algo que tengo planeado en el futuro.'),
(54, 35, 2, 'Ya estoy haciéndolo.'),
(55, 36, 0, 'Incómodo.'),
(56, 36, 1, 'No tengo ningún inconveniente en hacerlo con frecuencia.'),
(57, 36, 2, 'Me encanta ser el centro de atención.'),
(58, 37, 0, 'Es algo que no me preocupa.'),
(59, 37, 1, 'Muestro cierta empatía.'),
(60, 37, 2, 'Intento profundizar todo lo posible en el asunto.'),
(61, 38, 0, 'Entre 5 y 6\'9.'),
(62, 38, 1, 'Entre 7 y 8\'9.'),
(63, 38, 2, 'Entre 9 y 10.'),
(64, 39, 0, 'No, deseo vivir siempre en la ciudad.'),
(65, 39, 1, 'No me importa pasar algunas temporadas en el campo.'),
(66, 39, 2, 'Es un estilo de vida que me encanta.\r\n'),
(67, 40, 0, 'Me mareo tan solo de ver la aguja.'),
(68, 40, 1, 'Me siento tranquilo.'),
(69, 40, 2, 'Converso con la enfermera.\r\n'),
(70, 41, 0, 'Poco.'),
(71, 41, 1, 'Algo.'),
(72, 41, 2, 'Mucho.'),
(73, 42, 0, 'No, no lo necesito.'),
(74, 42, 1, 'Sí, anoto las cosas más importantes.'),
(75, 42, 2, 'Sí, tengo un registro muy detallado.'),
(76, 43, 0, '...no tengo pensado aprenderlas.'),
(77, 43, 1, '...me parecen importantes.'),
(78, 43, 2, '...las conozco a la perfección.'),
(79, 44, 0, 'Ignoro su problema.'),
(80, 44, 1, 'Le explico las cosas por encima.'),
(81, 44, 2, 'Le ayudo hasta que lo comprende por completo.\r\n'),
(82, 45, 0, 'Nada.'),
(83, 45, 1, 'Algo.'),
(84, 46, 0, 'La ignoro a menos que permanezca de manera prolongada.'),
(85, 46, 1, 'Voy al doctor en un plazo razonable.'),
(86, 46, 2, 'Busco información en Internet, consulto a algún conocido y voy al doctor.'),
(87, 47, 0, '...me desespero si no me entiende a la primera.'),
(88, 47, 1, '...trato de ser claro.'),
(89, 47, 2, '...se lo repito con calma las veces que haga falta.'),
(90, 48, 0, 'Nunca.'),
(91, 48, 1, 'Cuando me parece interesante.'),
(92, 48, 2, 'Siempre que tengo ocasión.'),
(93, 45, 2, 'Mucho.'),
(94, 49, 0, 'Lo llevo al servicio técnico.'),
(95, 49, 1, 'Trato de repararlo.'),
(96, 49, 2, 'Leo el instructivo, busco información en Internet y hago todo lo posible por arreglarlo.'),
(97, 50, 0, '...tratas de evitar ir a bailar.'),
(98, 50, 1, '...no te desagrada tener que ir a bailar.'),
(99, 50, 2, '...propones con frecuencia ir a bailar.'),
(100, 51, 0, 'Con personas, siempre.'),
(101, 51, 1, 'Me es indiferente, aunque utilizo con soltura las máquinas.'),
(102, 51, 2, 'Con máquinas, siempre.\r\n'),
(103, 52, 0, 'Bajo ningún concepto.'),
(104, 52, 1, 'Lo haría en caso de que necesitara el dinero.'),
(105, 52, 2, 'Sin ninguna duda.'),
(106, 53, 0, 'Espero tener suerte para alcanzarla.'),
(107, 53, 1, 'Me esfuerzo por lograrla.'),
(108, 53, 2, 'Me trazo un plan bien detallado para alcanzarla.'),
(112, 56, 0, 'Nunca voy.'),
(113, 56, 1, 'Esporádicamente.'),
(114, 56, 2, 'Asisto a todos los que puedo.'),
(115, 57, 0, 'No voy.'),
(116, 57, 1, 'Voy pero no bailo mucho.'),
(117, 57, 2, 'Bailo todo el tiempo.'),
(118, 58, 0, 'Aburridos.'),
(119, 58, 1, 'Entretenidos.'),
(120, 58, 2, 'Muy interesantes.'),
(121, 59, 0, 'Nunca'),
(122, 59, 1, 'En ocasiones.'),
(123, 59, 2, 'Siempre. Es algo que me apasiona.'),
(124, 60, 0, 'No, siempre técnica.'),
(125, 60, 1, 'Normalmente sí.'),
(126, 60, 2, 'Sí, siempre.'),
(127, 61, 0, 'No'),
(128, 61, 1, 'Normalmente sí.'),
(129, 61, 2, 'Sí, bastante.'),
(130, 62, 0, 'Para nada.'),
(131, 62, 1, 'Sí, me gustaría.'),
(132, 62, 2, 'Sería mi trabajo ideal.'),
(133, 63, 0, 'Para nada.'),
(134, 63, 1, 'Sí, me gustaría.'),
(135, 63, 2, 'Sería mi trabajo ideal.'),
(136, 64, 0, 'Nunca.'),
(137, 64, 1, 'En una ocasión.'),
(138, 64, 2, 'Siempre.'),
(139, 65, 0, 'Siempre.'),
(140, 65, 1, 'A veces.'),
(141, 65, 2, 'Nunca.'),
(142, 66, 0, 'No me gusta.'),
(143, 66, 1, 'Me gusta.'),
(144, 66, 2, 'Me encanta.'),
(145, 67, 0, 'No'),
(146, 67, 1, 'Poca'),
(147, 67, 2, 'Mucha'),
(148, 68, 0, 'Por lo general no.'),
(149, 68, 1, 'Sí, en muchas ocasiones.'),
(150, 68, 2, 'Sí, todo el mundo.'),
(151, 69, 0, 'Nunca.'),
(152, 69, 1, 'A veces.'),
(153, 69, 2, 'Siempre.'),
(154, 70, 0, 'Para nada.'),
(155, 70, 1, 'Si me gustaría.'),
(156, 70, 2, 'Sería mi trabajo ideal'),
(157, 71, 0, 'Si'),
(158, 71, 1, 'Poco'),
(159, 71, 2, 'Bastante'),
(160, 72, 0, '1'),
(161, 72, 0, '4'),
(162, 72, 0, '6'),
(163, 73, 0, 'Sencillamente lo tomo'),
(164, 73, 0, 'Voy pero no bailo mucho.'),
(165, 73, 0, 'mucho'),
(166, 74, 0, 'g1'),
(167, 74, 0, 'Entre 15-17'),
(168, 74, 0, 'Entre 18-20'),
(169, 75, 0, 'Me es indiferente'),
(170, 75, 0, 'Me resulta interesante'),
(171, 75, 0, 'Me encanta'),
(172, 76, 0, 'De 0 al 5'),
(173, 76, 0, 'De 5 al 5'),
(174, 76, 0, 'De 7 al 10'),
(175, 77, 1, 'si'),
(176, 77, 0, 'poco'),
(177, 77, 0, 'mucho'),
(178, 78, 1, 'Sencillamente lo tomo'),
(179, 78, 0, 'poco'),
(180, 78, 0, 'mucho'),
(181, 79, 0, 'Entre 11-14'),
(182, 79, 1, 'Entre 15-17'),
(183, 79, 0, 'Entre 18-20'),
(184, 80, 0, 'si'),
(185, 80, 1, 'poco'),
(186, 80, 0, 'mucho'),
(187, 81, 0, 'Sencillamente lo tomo'),
(188, 81, 1, 'poco'),
(189, 81, 0, 'mucho'),
(190, 82, 1, 'Entre 11-14'),
(191, 82, 0, 'Entre 15-17'),
(192, 82, 0, 'Entre 18-20'),
(193, 83, 1, 'h1'),
(194, 83, 0, 'Me resulta interesante'),
(195, 83, 0, 'Me encanta'),
(196, 84, 0, 'si'),
(197, 84, 1, 'De vez en cuando'),
(198, 84, 0, 'mucho'),
(199, 85, 0, 'Sencillamente lo tomo'),
(200, 85, 1, 'poco'),
(201, 85, 0, 'Leo el prospecto de arriba a abajo'),
(202, 86, 0, 'Entre 11-14'),
(203, 86, 1, 'Entre 15-17'),
(204, 86, 0, 'Entre 18-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `TesCod` int(11) NOT NULL,
  `TesNumPre` int(11) NOT NULL,
  `TesAreCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`TesCod`, `TesNumPre`, `TesAreCod`) VALUES
(66, 2, 4),
(70, 32, 3),
(75, 16, 5),
(76, 5, 6),
(77, 3, 3),
(78, 3, 4),
(79, 3, 4),
(80, 10, 7),
(81, 10, 7),
(82, 10, 7),
(83, 3, 4),
(84, 3, 4),
(85, 3, 4),
(86, 5, 7),
(87, 3, 7),
(88, 3, 7),
(89, 4, 8),
(90, 4, 8),
(91, 3, 11),
(92, 3, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AreCod`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`CarCod`),
  ADD KEY `CarAreCod` (`CarAreCod`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`PerCod`),
  ADD UNIQUE KEY `PerCor` (`PerCor`);

--
-- Indices de la tabla `personatest`
--
ALTER TABLE `personatest`
  ADD PRIMARY KEY (`PerTesCod`),
  ADD KEY `PerTesTesCod` (`PerTesTesCod`),
  ADD KEY `PerTesPerCod` (`PerTesPerCod`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`PreCod`),
  ADD KEY `PreTesCod` (`PreTesCod`),
  ADD KEY `PreCarCod` (`PreCarCod`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`ResCod`),
  ADD KEY `ResPreCod` (`ResPreCod`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TesCod`),
  ADD KEY `TesAreCod` (`TesAreCod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `AreCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `CarCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `PerCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personatest`
--
ALTER TABLE `personatest`
  MODIFY `PerTesCod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `PreCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `ResCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `TesCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`CarAreCod`) REFERENCES `area` (`AreCod`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personatest`
--
ALTER TABLE `personatest`
  ADD CONSTRAINT `personatest_ibfk_1` FOREIGN KEY (`PerTesPerCod`) REFERENCES `persona` (`PerCod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personatest_ibfk_2` FOREIGN KEY (`PerTesTesCod`) REFERENCES `test` (`TesCod`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`PreTesCod`) REFERENCES `test` (`TesCod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`PreCarCod`) REFERENCES `carrera` (`CarCod`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`ResPreCod`) REFERENCES `preguntas` (`PreCod`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`TesAreCod`) REFERENCES `area` (`AreCod`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
