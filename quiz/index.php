<?php
session_start();
// session_destroy();

include("admin/funciones.php");

aumentarVisita();

// Simulando la única categoría "Programación"
$idCategoria = "1";

if(isset($_GET['iniciar'])){
    $_SESSION['usuario'] = "usuario";
    $_SESSION['idCategoria'] = $idCategoria;
    header("Location: jugar.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="estilo.css">
    <title>Examen</title>
    <style>
        .logo {
            cursor: pointer;
        }
    </style>
    <script>
        function iniciarExamen() {
            window.location.href = "<?php echo $_SERVER['PHP_SELF'] ?>?iniciar=true";
        }
    </script>
</head>
<body>
    <div class="container" id="cantainer">
        <div class="left">
            <div class="logo" onclick="iniciarExamen()">
                Iniciar
            </div>
            <h2>PON A PRUEBA TUS CONOCIMIENTOS!!</h2>
        </div>
        <div class="right">
            <h3>Examen de Programación</h3>
            <p>Este examen está diseñado para evaluar tus habilidades en programación, abarcando temas como algoritmos, estructuras de datos, y lenguajes de programación como PHP, JavaScript, y más.</p>
            <p>¡Prepárate para desafiar tus conocimientos y disfrutar aprendiendo!</p>
        </div>
    </div>
</body>
</html>
