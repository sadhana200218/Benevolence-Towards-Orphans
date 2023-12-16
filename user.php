<!DOCTYPE html>
<html>
<head>
  <title>Line Graph Chart</title>
  <link href="home/css/grayscale.min.css" rel="stylesheet">
  <!-- Load the Google Charts API -->
  <script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<?php
  // Database connection settings
  $db_host = 'localhost';
  $db_user = 'root';
  $db_pass = '';
  $db_name = 'orphan';

  // Create a database connection
  $conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // Fetch data from the database
  $query = "SELECT username, trn_date FROM users ORDER BY trn_date";
  $result = $conn->query($query);

  // Create an array to store data for the line graph
  $data_array = array();

  // Convert fetched data to the Google Charts format
  if ($result->num_rows > 0) {
    $data_array[] = ['Username', 'Transaction Time'];
    while ($row = $result->fetch_assoc()) {
      $data_array[] = [$row['username'], new DateTime($row['trn_date'])];
    }
  }

  // Close the database connection
  $conn->close();
  ?>
<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading">Line Graph Chart</h2>
        <hr class="my-4">
        <div id="line_chart"></div>
      </div>
    </div>
  </div>

 

<script type="text/javascript">
    // Load the Google Charts API
    google.charts.load('current', { 'packages': ['corechart'] });
    google.charts.setOnLoadCallback(drawChart);

    // Draw the line graph
    function drawChart() {
      var data = google.visualization.arrayToDataTable(<?php echo json_encode($data_array); ?>);

      var options = {
        title: 'User Transactions over Time',
        curveType: 'function',
        legend: { position: 'bottom' },
      };

      var chart = new google.visualization.LineChart(document.getElementById('line_chart'));
      chart.draw(data, options);
    }

    // If the Google Charts API fails to load
    google.charts.setOnLoadCallback(function() {
      if (typeof google.visualization === 'undefined') {
        document.getElementById('line_chart').innerHTML = "Google Charts API failed to load. Please check your internet connection.";
      }
    });
  </script>
</body>
</html>
