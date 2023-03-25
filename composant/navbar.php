<?php
  require_once './back-end/config.php';
  session_start();
  $a = '<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">';
        $nav = isset($_SESSION['email']) ? '<ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Mon profil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Mes annonces</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ">Mes favoris</a>
          </li>
        </ul>' : '<ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>';
    $button = isset($_SESSION['email']) ? '<a class="btn btn-outline-danger" href="'.URL.'/back-end/deconnexion.php">Deconnexion</a>' : '
      <a class="btn btn-outline-success m-1" href="'.URL.'/index.php">Inscription</a>
      <a class="btn btn-success m-1" href="'.URL.'/login.php">Connexion</a>
    ';
    $b = '</div>
    </div>
  </nav>';

  echo $a.$nav.$button.$b;
?>