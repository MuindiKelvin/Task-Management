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
          ['Name', 'User_Ids'],
          <?php
         $sql = "SELECT * FROM project_list";
         $fire = mysqli_query($conn,$sql);

           while ($result = mysqli_fetch_assoc($fire))
            {
             # code...
             echo"['".$result['name']."',".$result['id']."],";
           }

          ?>
        ]);

        var options = {
          title: 'Projects and Their Completeness Percentage'
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
