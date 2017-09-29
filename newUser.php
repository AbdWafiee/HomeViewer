<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>HomeViewer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Abd Wafiee Abd Wahab">
    <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css">
  </head>
  <body>
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">HomeViewer</a>
        </div>
      </div>
    </nav>
    <p>
      <?php
        $host = "localhost";
        $user = "root";
        $password = "";

        $mysqli = new mysqli($host, $user, $password, "clients");
        if ($mysqli->connect_errno) {
          die("Error: " . $mysqli->connect_errno);
        }

        if (isset($_POST['submit'])) {
          $first_name = $_POST["first_name"];
          $last_name = $_POST["last_name"];
          $email = $_POST["email"];
          $pwd = $_POST["password"];
          $home_Type = $_POST["homeType"];
        }

        $sql = "SELECT * FROM client WHERE email='$email'";
        $result = $mysqli->query($sql);

        if (!$row = $result->fetch_assoc()) {
          $sql = "INSERT INTO client (first_name, last_name, email, password, home_preference) VALUES ('$first_name', '$last_name', '$email', '$pwd', '$home_Type')";
          $mysqli->query($sql);

          echo "<h1 id='success'>Account Created. Thank you for registering.</h1>";
          echo "<h2 id='redirect'><a href='./index.html'><button id='loginButton' type='button'>Login</button></a></h2>";
        }
        else {
          echo "<h1 id='unsuccessful'>Your username has already been taken.</h1>";
          echo "<h2 id='redirect'>Click here to go <a href='./register.html'>back.</a></h2>";
        }
      ?>
    </p>
  </body>
</html>
