<?php
  session_start();
  $host = "localhost";
  $user = "root";
  $password = "";

  $mysqli = new mysqli($host, $user, $password, "clients");
  if ($mysqli->connect_errno) {
    die("Error: " . $mysqli->connect_errno);
  }

  if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $pwd = $_POST['password'];
  }

  $sql_Hometype = "SELECT home_preference FROM client WHERE email='$email'";
  $result_Hometype = $mysqli->query($sql_Hometype);

  $sql = "SELECT * FROM client WHERE email='$email' AND password='$pwd'";
  $result = $mysqli->query($sql);

  if (!$row = $result->fetch_assoc()) {
    echo "Incorrect username or password <br>";
    echo "<a href='/HomeViewer/index.html'><button id='loginButton' type='button'>Try again</button></a>";
    session_destroy();
  }
  else {
    if (!$row = $result_Hometype->fetch_assoc())
    {
      echo "error";
    }
    else
    {
      $_SESSION['home_type'] = $row['home_preference'];
      header("Location: /HomeViewer/clientPage.html");
    }
  }
?>
