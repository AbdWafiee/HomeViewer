<?php
  session_start();
  $host = "localhost";
  $user = "root";
  $password = "";

  $mysqli = new mysqli($host, $user, $password, "homes");
  if ($mysqli->connect_errno) {
    die("Error: " . $mysqli->connect_errno);
  }

  $session_home_type = $_SESSION['home_type'];

  $sql = "SELECT name, address, number_of_beds, price, furnished, view_link FROM home WHERE type='$session_home_type'";
  $result = $mysqli->query($sql);

  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
      echo "<tr>";
      echo "<td>" . $row['name'] . "</td>";
      echo "<td>" . $row['address'] . "</td>";
      echo "<td>" . $row['number_of_beds'] . "</td>";
      echo "<td>" . "$" . $row['price'] . "</td>";
      if ($row['furnished'] == 1){
        echo "<td>Yes</td>";
      }
      elseif ($row['furnished'] == 0) {
        echo "<td>No</td>";
      }
      echo "<td><a href='" . $row['view_link'] . "'><button id='viewHomeButton' type='button'>View</button></a></td>";
      echo "</tr>";
    }
  }
  else {
    header ("Location: HomeViewer/clientPage.html");
  }
?>
