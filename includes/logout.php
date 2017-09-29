<?php
  session_start();
  session_destroy();
  unset($_SESSION['home_preference']);
  header("Location: /HomeViewer/index.html");
?>
