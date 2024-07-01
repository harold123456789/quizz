<?php
session_start();

// Si el usuario no está logeado, lo enviamos al index
if (!$_SESSION['usuario']) {
    header("Location:index.php");
    exit();
}

include("admin/funciones.php");

$confi = obtenerConfiguracion();
$totalPreguntasPorJuego = $confi['totalPreguntas'];

if (isset($_GET['siguiente'])) { // Ya está jugando
    aumentarRespondidas();

    // Controlar si la respuesta está bien
    if ($_SESSION['respuesta_correcta'] == $_GET['respuesta']) {
        $_SESSION['correctas'] = $_SESSION['correctas'] + 1;
    }

    $_SESSION['numPreguntaActual'] = $_SESSION['numPreguntaActual'] + 1;
    if ($_SESSION['numPreguntaActual'] < ($totalPreguntasPorJuego)) {
        $preguntaActual = obtenerPreguntaPorId($_SESSION['idPreguntas'][$_SESSION['numPreguntaActual']]);
        $_SESSION['respuesta_correcta'] = $preguntaActual['correcta'];
    } else {
        $_SESSION['incorrectas'] = $totalPreguntasPorJuego - $_SESSION['correctas'];
        $_SESSION['nombreCategoria'] = obtenerNombreTema($_SESSION['idCategoria']);
        $_SESSION['score'] = ($_SESSION['correctas'] * 100) / $totalPreguntasPorJuego;
        header("Location: final.php");
    }
} else { // Comenzó a jugar
    $_SESSION['correctas'] = 0;
    $_SESSION['numPreguntaActual'] = 0;
    $_SESSION['preguntas'] = obtenerIdsPreguntasPorCategoria($_SESSION['idCategoria']);
    $_SESSION['idPreguntas'] = array();

    foreach ($_SESSION['preguntas'] as $idPregunta) {
        array_push($_SESSION['idPreguntas'], $idPregunta['id']);
    }

    shuffle($_SESSION['idPreguntas']);
    $preguntaActual = obtenerPreguntaPorId($_SESSION['idPreguntas'][0]);
    $_SESSION['respuesta_correcta'] = $preguntaActual['correcta'];
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Examen</title>
    <link rel="stylesheet" href="estilo.css">
    <style>
        .correcto {
            color: green;
        }
        .incorrecto {
            color: red;
        }
        .correcto::after {
            content: " ✔";
        }
        .incorrecto::after {
            content: " ✖";
        }
    </style>
</head>
<body>
    <div class="container-juego" id="container-juego">
        <header class="header">
            <div class="categoria">
                <?php echo obtenerNombreTema($preguntaActual['tema']); ?>
            </div>
            <a href="index.php"></a>
        </header>
        <div class="info">
            <div class="estadoPregunta">
                Pregunta <span class="numPregunta"><?php echo $_SESSION['numPreguntaActual'] + 1; ?></span> de <?php echo $totalPreguntasPorJuego; ?>
            </div>
            <h3>
                <?php echo $preguntaActual['pregunta']; ?>
            </h3>
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
                <div class="opciones">
                    <label for="respuesta1" class="op1" onclick="seleccionar(this, 'A')">
                        <p><?php echo $preguntaActual['opcion_a']; ?></p>
                        <input type="radio" name="respuesta" value="A" id="respuesta1" required>
                    </label>
                    <label for="respuesta2" class="op2" onclick="seleccionar(this, 'B')">
                        <p><?php echo $preguntaActual['opcion_b']; ?></p>
                        <input type="radio" name="respuesta" value="B" id="respuesta2" required>
                    </label>
                    <label for="respuesta3" class="op3" onclick="seleccionar(this, 'C')">
                        <p><?php echo $preguntaActual['opcion_c']; ?></p>
                        <input type="radio" name="respuesta" value="C" id="respuesta3" required>
                    </label>
                </div>
                <div class="boton">
                    <input type="submit" value="Siguiente" name="siguiente">
                </div>
            </form>
        </div>
    </div>
    <script>
        function seleccionar(element, seleccion) {
            const correctAnswer = "<?php echo $_SESSION['respuesta_correcta']; ?>";
            const opciones = document.querySelectorAll('.opciones label');

            opciones.forEach(opcion => {
                opcion.onclick = null; // Deshabilitar más clics
                opcion.style.pointerEvents = 'none';
                const input = opcion.querySelector('input');
                const p = opcion.querySelector('p');
                
                if (input.value === correctAnswer) {
                    p.classList.add('correcto');
                } else if (input.value === seleccion) {
                    p.classList.add('incorrecto');
                }

                if (input.value === correctAnswer || input.value === seleccion) {
                    input.checked = true;
                } else {
                    input.checked = false;
                }
            });

            
        }
    </script>
</body>
</html>