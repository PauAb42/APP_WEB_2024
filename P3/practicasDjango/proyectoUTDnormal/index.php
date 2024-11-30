<?php
session_start();

// Verificar si el usuario está logueado
if (isset($_SESSION['username'])) {
    // Mostrar el mensaje de bienvenida solo la primera vez
    if (!isset($_SESSION['mensaje_mostrado'])) { // Usar una variable de control
        $mensajee = "Hellouu, Bienvenido!";
        $_SESSION['mensaje_mostrado'] = true; // Marcar que el mensaje ya se mostró
    } else {
        $mensajee = ""; // No mostrar mensaje si ya se mostró
    }
} else {
    $mensajee = ""; // No hay mensaje si no está logueado
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Inicio | PHP Proyecto UTD
    </title>
    <link rel="stylesheet" href="css/estilos.css" type="text/css">
</head>
<body>
    <header>
        <div id="logotipo">
            <img src="img/logophp.png" alt="Imagen Django" title="Django">
            <h1>PHP Proyecto Web</h1>
        </div>
    </header>
    <nav>
        <ul>
            
            <?php if (isset($_SESSION['username'])): ?>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="html/mision.html">Mision</a></li>
                <li><a href="html/vision.html">Vision</a></li>
                <li><a href="html/about.html">Acerca de</a></li>
                <li><a href="html/listado_art.php">Articulos</a></li>
                <li><a href="html/listado_cat.php">Categorias</a></li>
                <li><a href="php/logout.php">Cerrar Sesión</a></li>
            <?php else: ?>
                <li><a href="index.php" >Inicio</a></li>
                <li><a href="php/login.php">Iniciar Sesión</a></li>
                <li><a href="php/registro.php">Registro</a></li>
            <?php endif; ?>


        </ul>
    </nav>
    <section id="content">
       <div class="box">
            <?php if (isset($_SESSION['username'])): ?>
                <h1>Inicio</h1>
                <hr>
                <br>
                <?php if (!empty($mensajee)): ?>
                    <div class="alert alert-success">
                        <p><?php echo $mensajee; ?></p> 
                    </div>
                <?php endif; ?>
                <br>
                <hr>
                <p>.:: ¡Bienvenid@ <?php echo $_SESSION['username']; ?>!::.</p>
                
            <?php else: ?>
                <h1>Inicio</h1>
                <hr>
                <p>.:: ¡Bienvenido a mi página de Inicio! ::.</p>
                <h1>Por favor inicia sesión... ok</h1>

                
            <?php endif; ?>
    
       </div>
    </section>
    <footer>
        <p>Django con PauOnline &copy; 2024 | Visitado el: 01/10/24</p>
    </footer>
</body>
</html>