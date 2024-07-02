-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-07-2024 a las 05:18:31
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
-- Base de datos: `examen_db`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(11, 1, '¿Cuál es la salida del siguiente código en Python?\r\nprint(2  **  3  **  2)', '64', '512', '256', 'B'),
(12, 1, '¿Cuál es el valor de x después de ejecutar el siguiente código en C?\r\nint x = 5;\r\nx += 10;', '5', '10', '15', 'C'),
(13, 1, '¿Qué operador se usa para concatenar cadenas en Java?', '+', '&amp;', '*', 'A'),
(14, 1, '¿Qué es un closure en JavaScript?', 'Una función que tiene acceso a su ámbito léxico', 'Una clase que no se puede instanciar', 'Un método que no tiene parámetros', 'A'),
(15, 1, '¿Cuál es la salida del siguiente código en JavaScript?\r\nconsole.log(typeof null);', 'null', 'object', 'boolean', 'B'),
(16, 1, '¿Qué significa OOP en programación?', 'Object-Oriented Programming', 'Open Operations Programming', 'Operational Output Programming', 'A'),
(17, 1, '¿Cuál es la función principal de un constructor en una clase en C++?', 'Eliminar un objeto', 'Inicializar un objeto', 'Clonar un objeto', 'B'),
(18, 1, '¿Cuál es el valor de x después de ejecutar el siguiente código en Java?\r\nint x = 10;\r\nx = x++ + ++x;', '20', '21', '23', 'C'),
(19, 1, '¿Qué palabra clave se usa para heredar de una clase en Python?', 'inherits', 'extend', 'class', 'B'),
(20, 1, '¿Cuál es la salida del siguiente código en PHP?\r\necho 5 . 2 * 3;', '56', '5.2', '53', 'C'),
(21, 1, '¿Qué es una función recursiva?', 'Una función que se llama a sí misma', 'Una función que no tiene parámetros', 'Una función que devuelve múltiples valores', 'A'),
(22, 1, '¿Cuál es el propósito del método `finalize()` en Java?', 'Inicializar un objeto', 'Limpiar recursos antes de la recolección de basura', 'Clonar un objeto', 'B'),
(23, 1, '¿Qué significa SQL?', 'Standard Query Language', 'Structured Query Language', 'Sequential Query Language', 'B'),
(24, 1, '¿Qué hace el operador `===` en JavaScript?', 'Asigna un valor', 'Compara tanto el valor como el tipo de dato', 'Compara solo el valor', 'B'),
(25, 1, '¿Cuál es la salida del siguiente código en Python?\r\nprint(len(\"Hello, World!\"))', '12', '13', '14', 'B'),
(26, 1, '¿Qué es el polimorfismo en programación orientada a objetos?', 'La capacidad de un objeto de tomar muchas formas', 'La encapsulación de datos', 'La herencia de clases', 'A'),
(27, 1, '¿Qué palabra clave se usa para definir una clase en Java?', 'function', 'define', 'class', 'C'),
(28, 1, '¿Qué estructura de datos utiliza la estrategia LIFO (Last In, First Out)?', 'Cola', 'Pila', 'Lista enlazada', 'B'),
(29, 1, '¿Cuál es la salida del siguiente código en C++?\r\ncout << 10 / 3;', '3.33', '3', '3.0', 'B'),
(30, 1, '¿Cuál es el valor de verdad de la expresión `(5 > 3) && (2 < 4)` en JavaScript?', 'true', 'false', 'undefined', 'A');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
