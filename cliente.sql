-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2024 a las 19:51:41
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cliente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
(1, 'admin', 'admin', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_cliente`
--

DROP TABLE IF EXISTS `datos_cliente`;
CREATE TABLE IF NOT EXISTS `datos_cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_p` varchar(50) NOT NULL,
  `apellido_m` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `telefono_celular` varchar(50) NOT NULL,
  `nacionalidad` int NOT NULL COMMENT '1.Mexicano 2.Estado unidense 3. Canadiense',
  `estado_civil` int NOT NULL COMMENT '1. soltero 2. casado',
  `regimen` int NOT NULL COMMENT '1. separados 2. Mancomunados\r\n3. Ninguno',
  `calle` varchar(50) NOT NULL,
  `num_exterior_interior` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigo_postal` varchar(50) NOT NULL,
  `pais` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `tipo_persona` int NOT NULL COMMENT '1.fisico 2. moral',
  `razon_social` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` int NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datos_cliente`
--

INSERT INTO `datos_cliente` (`id_cliente`, `nombre`, `apellido_p`, `apellido_m`, `sexo`, `fecha_nacimiento`, `edad`, `correo_electronico`, `telefono_celular`, `nacionalidad`, `estado_civil`, `regimen`, `calle`, `num_exterior_interior`, `localidad`, `colonia`, `codigo_postal`, `pais`, `estado`, `tipo_persona`, `razon_social`, `rfc`, `imagen`, `status`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, 'harold', '', '', '', '0000-00-00', 0, '', '', 0, 0, 0, '', '', '', '', '', '0', '0', 0, '', '', '', 0, '2023-08-14 21:21:03', '2023-08-14 21:21:03'),
(2, 'prueba', 'a', 'a', '', '0000-00-00', 20, 'sjdn@gmail.com', '43434', 0, 0, 0, '', '', '', '', '', '0', '0', 0, '', '', '', 0, '2023-08-18 16:42:51', '2023-08-18 16:42:51'),
(4, 'Juan', 're', 're', 'Masculino', '2003-04-01', 20, 'fe', '3434', 0, 0, 0, 'rer', 'ere', 'rer', 'rr4', '452', '0', '0', 1, 'rer', 'trt', '', 0, '2023-08-18 17:21:09', '2023-08-18 18:22:59'),
(5, 'prueba', 'adad', 'adad', 'Masculino', '2003-04-01', 20, 'dsdsd', '24343', 0, 0, 0, 'efefef', 'efef', 'eff', 'efef', 'eff', '0', '0', 1, 'fef', 'efef', '', 0, '2023-08-18 17:24:07', '2023-08-18 18:42:02'),
(8, 'prueba 3', 'hyh', 'yhyh', 'Masculino', '2003-04-01', 0, 'yh', '656', 0, 0, 0, 'hyh', 'yh', 'yhy', 'hyh', 'yh', '0', '0', 1, 'yhy', 'hyh', '', 0, '2023-08-18 18:54:00', '0000-00-00 00:00:00'),
(9, 'prueba', 'w', 'w', 'Masculino', '2003-04-01', 20, 'dwd', '23344', 1, 1, 1, 'ef', '344', 'ff', 'fd', '434', '0', '0', 2, '4r', 'rr', '', 0, '2023-08-18 20:16:28', '2023-08-18 20:19:44'),
(31, 'Yolmery', 'Osorio', 'Martin', 'Masculino', '2003-10-09', 19, 'yolmeryosorio@gmail.com', '9999585091', 1, 1, 1, '29e', '748', 'Merida', 'Caucel', '97314', 'Mexico', 'Yucatan', 1, 'lo que quieras', '', '', 1, '0000-00-00 00:00:00', '2023-08-21 17:59:48'),
(32, 's', 'p', '', 'Masculino', '2003-04-01', 20, 'illo', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 1, '', '', '2023-08-21 14:54:29', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Harold', 'Avila', 'Mendez', 'Masculino', '2003-04-01', 20, 'harold@gmail.com', '9992502184', 1, 1, 3, '59E', '518B', 'Merida', 'Bojorquez', '97230', 'Mexico', 'Yucatan', 2, 'nuevo', 'wewddw', '', 1, '0000-00-00 00:00:00', '2023-08-21 17:20:33'),
(34, 'gh', 'gh', 'gh', 'Masculino', '2003-04-01', 20, 'hgh', '767', 1, 1, 3, '', '', '', '', '', 'Mexico', 'Yucatan', 0, '', '', '', 0, '0000-00-00 00:00:00', '2023-08-21 22:35:01'),
(35, 'lal', 's', '', 'Masculino', '2000-01-01', 23, 's', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 0, '', '', '2023-08-21 18:34:42', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'lal', 's', '', 'Masculino', '2000-01-01', 23, 's', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 0, '', '', '2023-08-21 18:35:28', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'w', 'w', '', 'Masculino', '2003-04-01', 20, 'w', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 0, '', '', '2023-08-21 22:00:36', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Prueba', 'uno', '', 'otro', '2000-04-01', 23, 'prueba@gmail.com', '9992502184', 1, 1, 3, 'eded', '34', 'Merida', 'Merida', '97230', 'Mexico', 'Yucatan', 1, 'no se', 'e3434', '2023-08-22 14:51:51', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'rt', 'rt', '', 'Masculino', '2000-04-01', 23, 'tr', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 1, '', '', '2023-08-22 14:59:56', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Prueba', '1', '', 'Masculino', '2003-04-01', 20, 'prueba@gmail.com', '595', 1, 1, 3, '73', '78', 'merida', '', '', 'Mexico', 'Yucatan', 1, '', '', '', 0, '0000-00-00 00:00:00', '2023-08-22 16:09:45'),
(41, 'dffd', 'dfdf', '', 'Masculino', '2000-04-01', 23, 'fdfdf', '', 0, 0, 0, '', '', '', '', '', 'Mexico', 'Yucatan', 0, '', '', '2023-08-25 17:04:43', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

DROP TABLE IF EXISTS `estadisticas`;
CREATE TABLE IF NOT EXISTS `estadisticas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visitas` int NOT NULL,
  `respondidas` int NOT NULL,
  `completados` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
(1, 5, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `pais_id` int NOT NULL,
  PRIMARY KEY (`id_estado`),
  KEY `pais_id` (`pais_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`, `pais_id`) VALUES
(1, 'Yucatan', 1),
(2, 'Campeche', 1),
(3, 'Quintana Roo', 1),
(4, 'Texas', 2),
(5, 'Washington', 2),
(6, 'California', 2),
(7, 'Alberta', 3),
(8, 'Manitoba ', 3),
(9, 'Ontario ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre`) VALUES
(1, 'Mexico'),
(2, 'Estados Unidos'),
(3, 'Canada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tema` int NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `correcta` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
(1, 1, 'La definición de algoritmo es...', 'Un tipo de código informático', 'Una secuencia de instrucciones que representan un modelo de solución para determinado tipo de problemas, incluyendo todos los pasos necesarios.', 'Un lenguaje de programación', 'B'),
(2, 1, '¿Qué es C++?', 'Un juego', 'Un programa', 'Un lenguaje de programación', 'C'),
(3, 1, '¿Qué es una variable?', 'Un valor o dato', 'Un espacio dentro del espacio de memoria ram', 'Un lenguaje', 'B'),
(4, 1, 'En javascript, la sentencia for sirve para', 'Repetir la ejecución de instrucciones', 'Cargar datos en un arreglo', 'Ninguna de las anteriores', 'A'),
(5, 1, 'En un lenguaje de programación las constantes son...', 'Datos que varían', 'Datos regulares', 'Datos que no cambian en el proceso', 'C'),
(6, 1, 'Un diagrama de flujo es ...', 'la forma de resolver un problema', 'La representación gráfica de un problema', 'El proceso de diseño de un algoritmo', 'B'),
(7, 1, '¿Qué tipo de dato es el ejemplo A=5?', 'char', 'integer', 'string', 'B'),
(8, 1, '¿Para qué sirve los lenguajes de programación de tipo general?', 'Crear y facilitar datos', 'Crear diferentes mecanismos', 'Crear distintos tipos de aplicaciones', 'C'),
(9, 1, 'El número en binario 1010 corresponde', '10 en decimal', '8 en decimal', '7 en decimal', 'A'),
(10, 1, 'Un &quot;array&quot; es...', 'Un tipo de dato estructurado que almacena datos, del mismo tipo y relacionados.', 'Una estructura que me permite repetir instrucciones la cantidad de veces que quiera', 'Ninguna de las anteriores', 'A'),
(11, 2, '¿Con qué nombre se conoce el escándalo que obligó al presidente estadounidense Richard Nixon a dimitir?', 'Vietnam', 'NixonPrecess', 'Watergate', 'C'),
(12, 2, '¿Qué emperador romano legalizó el cristianismo y puso fin a la persecución de los cristianos?', 'Nerón', 'Constanstino', 'Adriano', 'B'),
(13, 2, '¿Qué hito informático de 1969 cambiaría radicalmente el curso de la historia de la humanidad?', 'El primer router wi-fi', 'La primera computadora personal', 'Internet', 'C'),
(14, 2, '¿Quién fue el primer Presidente de Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Andrew Jackson', 'A'),
(15, 2, '¿Por qué es significativo el Poema de Gilgamesh?', 'Fue un libro de estrategia militar de 500 páginas que sirvió en la antigua Mesopotamia', 'Es la primera obra épica que hace referencia a la inmortalidad y la percepción humana del alma', 'El tratado más antiguo que existe sobre el Inframundo.', 'B'),
(16, 2, '¿Cuál es el nombre de la famosa batalla donde Napoleón Bonaparte fue derrotado?', 'La batalla de Hstings', 'La batalla de Álamo', 'La batalla de Waterloo', 'C'),
(17, 2, '¿A través de qué río africano se alzó el antiguo Egipto?', 'Amazonas', 'Tigris', 'Nilo', 'C'),
(18, 2, '¿A qué filósofo griego se atribuye la famosa obra “La República”?', 'Platón', 'Sócrates', 'Aristótleles', 'A'),
(19, 2, '¿En qué año se disolvió la Unión Soviética?', 'En 1987', 'En 1989', 'En 1991', 'C'),
(20, 2, '¿Qué científico es considerado el Padre de la Bomba Atómica?', 'Albert Einsein', 'Robert Openheimer', 'Leó Szilárd', 'B'),
(21, 3, '¿Qué contienen los cloroplastos de las células vegetales?', 'Clorofila', 'Agua', 'Sábila', 'A'),
(22, 3, '¿Qué es la malacología?', 'La ciencia que estudia los hongos', 'La ciencia que estudia los molusculos', 'La ciencia que estudia los ácaros', 'B'),
(23, 3, '¿Qué significan las siglas ADN?', ' Ácido deoxinucleico', 'Ácido desorribonucleico', 'Ácido desoxirribonucleico', 'C'),
(24, 3, 'Todos los organismos en el reino Animalia son:', 'Multicelulares y autótrofos', 'Multicelulares y autótrofos', 'Unicelulares y heterótrofos', 'B'),
(25, 3, '¿Qué es un cardumen?', 'Una especie de planta', 'Un banco de peces', 'Una parte del abdomen de los insectos', 'B'),
(26, 3, 'El sistema de clasificación taxonómica actual fue ideado por:', 'Darwin', 'Pateur', 'Linneo', 'B'),
(27, 3, '¿Cuál de los siguientes animales tiene incisivos que continúan creciendo toda su vida?', 'Morsa', 'Hámster', 'Elefante', 'B'),
(28, 3, '¿Cuánto vive un erizo?', 'Aproximadamente entre 4 y 5 años', 'Aproximadamente entre 7 y 8 años', 'Aproximadamente entre 9 y 12 años', 'A'),
(29, 3, '¿Dónde realizan las plantas la fotosíntesis?', 'En las hojas', 'En la raíz', 'En el aire', 'A'),
(30, 3, '¿Qué músculo impulsa la sangre por todo nuestro cuerpo?', 'El cerebro', 'Los pulmones', 'El corazón', 'C'),
(31, 4, '¿Cómo se llama en tenis un punto de saque directo?', 'Revés', 'Love', 'Ace', 'C'),
(32, 4, 'En natación, ¿cuánto mide de largo una piscina de competición para olimpiadas y mundiales?', '50 metros', '25 metros', '30 metros', 'A'),
(33, 4, '¿Con cuántos jugadores en pista juega un equipo de voleibol?', '5', '9', '6', 'C'),
(34, 4, '¿Cómo se llama en golf cuando completas un hoyo en un lanzamiento menos que el par del hoyo?', 'Albatros', 'Birdie', 'Eagle', 'B'),
(35, 4, 'Las tres modalidades de la esgrima son: sable, espada y ...', 'Estoque', 'Florete', 'Estilo lbre', 'B'),
(36, 4, '¿Cómo se llama en béisbol cuando un bateador golpea la bola y ésta sale del campo de juego, lo que le permite recorrer todas las bases con facilidad?', 'Strike', 'Hit', 'Home run', 'C'),
(37, 4, '¿A qué distancia está el punto de penalty de la portería en fútbol?', '7 metros', '11 metros', '12 metros', 'B'),
(38, 4, 'Completa esta frase de baloncesto: &quot;El arbitro pitó _____ segundos en la zona y el equipo local perdió el balón&quot;', 'Cinco', 'Venticuatro', 'Tres', 'C'),
(39, 4, 'Si hablamos del jugador boya, estamos hablando de...', 'Boleibol', 'Hockey sobre patines', 'Waterpolo', 'C'),
(40, 4, '¿Cómo se llama en rugby la lucha frente a frente de dos grupos de jugadores de los dos equipos que empujan para obtener el balón sin tocarlo con la mano?', 'Placaje', 'Melé', 'Ensayo', 'B'),
(41, 5, 'Un poco de historia. ¿Qué sabio griego creía que la única ley básica que gobernaba el universo era el principio del cambio y que nada permanecía en el mismo estado indefinidamente?', 'Tales de Mileto', 'Heráclito', 'Aristóteles', 'B'),
(42, 5, 'El método científico se usa en todas las ciencias, incluidas la física y la psicología.', 'Verdadero', 'Falso, en física no', 'Ninguna de las anteriores', 'A'),
(43, 5, '¿Cómo se llama el instrumento que mide y registra la humedad relativa del aire?', 'Barómetro', 'Hidrómetro', 'Higrómetro', 'C'),
(44, 5, 'Todo cuerpo que cae libremente en el vacío se caracteriza por tener...', 'Aceleración constante y velocidad variable', 'Fuerza variable y velocidad decreciente', 'Energía potencial constante y aceleración creciente', 'B'),
(45, 5, 'Hablando de fuerzas... ¿cuál es la que mantiene unidas las moléculas de un cuerpo?', 'La fuerza de gravedad', 'La fuerza de cohesión', 'La fuerza de adhesión', 'B'),
(46, 5, '¿Cuál es la distancia más pequeña posible en mecánica cuántica?', 'Tiempo de Wearden', 'Espuma cuántica', 'Longitud de Planck', 'C'),
(47, 5, '¿Qué dos partículas elementales se describen como &lt;sin masa&gt;?', 'Fotón y gluón', ' Muón y neutrino', 'Electrón y protón', 'A'),
(48, 5, '¿Cuál de estos fenómenos inspiró a Albert Einstein en su desarrollo de la relatividad general?', 'Ver a dos trenes moverse en direcciones opuestas', 'Ver a un hombre caerse de un tejado', 'La vibración de las cuerdas en un violín', 'B'),
(49, 5, '¿El tiempo va siempre hacia adelante?', 'Siempre', 'No', 'En teoría...sí', 'C'),
(50, 5, '¿Qué es la hidrostática?', 'Cantidad de masa encerrada en un volumen', 'Presión de los líquidos a todas las direcciones', 'Cuerpo de masa que crece de una forma', 'B'),
(51, 7, 'Originario del Oriente Medio, el falafel es una de las comidas callejeras favoritas de todo el mundo. ¿Cuál es el ingrediente principal del falafel?', 'Las semillas de sésamo', 'La harina', 'Los garbanzos', 'C'),
(52, 7, 'Las arepas son pasteles de maíz a menudo rellenos con ingredientes como queso, verduras y carne. ¿Qué 2 países dicen haber inventado este delicioso plato?', 'Colombia y Venezuela', 'Venezuela y Argentina', 'Chile y Colombia', 'A'),
(53, 7, 'La comida callejera más popular del Perú, y éxito de exportación culinaria, es sin duda el ceviche. En este plato, ¿el pescado crudo se cura agregándole qué ingrediente?', 'Vinagre', 'Zumos cítricos', 'Aceite caliente', 'B'),
(54, 7, '¿En qué país se considera de mala educación comer mientras se camina (con algunas excepciones)?', 'Italia', 'China', 'Japón', 'C'),
(55, 7, 'En Italia, ¿los arancini son unas albóndigas fritas de qué?', 'Espaguetis', 'Risotto', 'Aceitunas', 'B'),
(56, 7, '¿En qué país se considera de mala educación comer mientras se camina (con algunas excepciones)?', 'Italia', 'China', 'Japón', 'C'),
(57, 7, 'Un buen mate se prepara con el agua...', 'A 80 grados', 'Hirviendo', 'Tibia', 'A'),
(58, 7, '¿Qué otro país nos disputa la invención del argentinísimo dulce de leche?', 'Chile', 'Brasil', 'Uruguay', 'C'),
(59, 7, 'Una milanesa con jamón, queso y salsa de tomate se llama...', 'Milanesa siciliana', 'Milanesa napolitana', 'Milanesa maradoniana', 'B'),
(60, 7, '¿Cuáles son los ingredientes más comunes de toda empanada de carne?', 'Carne picada, huevos, cebollas y aceitunas', 'Carne picada, huevos, tomate y aceitunas', 'Carne picada, huevos, uva y choclo', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

DROP TABLE IF EXISTS `temas`;
CREATE TABLE IF NOT EXISTS `temas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Programación'),
(2, 'Historia'),
(3, 'Biología'),
(4, 'Deporte'),
(5, 'Física'),
(6, 'Ingles'),
(7, 'Comida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `password`, `status`) VALUES
(1, 'Harold', '12345', 1),
(2, 'Hola', 'jij', 0),
(3, 'jsjjs', 'dsdsd', 1),
(4, 'harold', '12345', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;