<?php 
   
$conn= new mysqli('localhost','root','','tms_db')or die("Could not connect to mysql".mysqli_error($con));

  //if($conn)
  //{
   // echo "connected";
  //}
?>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Status'],
          <?php
         $sql = "SELECT * FROM users";
        
         $fire = mysqli_query($conn,$sql);

           while ($result = mysqli_fetch_assoc($fire))
            {
             # code...
             echo"['".$result['firstname']."',".$result['id']."],";
             
           }

          ?>
        ]);

        var options = {
          title: 'User Involvement in Tasks Percentage'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
