
<html>
<title>Restaurant Dashboard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body >


								<!-- 					Starting of PHP code to load the database 				-->

<?php
$db=mysqli_connect('localhost','root','','hackathon_test21'); /* Running the local host on Xampp */

?>
<div style="float:left;width:50%;">

            <h2>Restaurant_ID</h2>
       
      
          <p>Jayanagar</p>
          <p>Bengaluru, Karnataka</p>
          <p>askus@solarify.in</p>
          <p>+91-988-GO-SOLAR</p>
          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right " style="background:	#FF8C00;"></i>Cumulative Waste Generated for the Month</b></p>
          <p>Paper %</p>
          <div class="w3-light-grey w3-round-xlarge w3-small"><?php $query1="select sum(paper) from table1,table2 where itemname1=ItemName OR itemname2=ItemName OR itemname3=ItemName OR itemname4=ItemName OR itemname5=ItemName OR itemname6=ItemName OR itemname7=ItemName;";$val1=mysqli_query($db,$query1);$row1=mysqli_fetch_array($val1);$queryt="select sum(total) from table1,table2 where itemname1=ItemName OR itemname2=ItemName OR itemname3=ItemName OR itemname4=ItemName OR itemname5=ItemName OR itemname6=ItemName OR itemname7=ItemName;";$valt=mysqli_query($db,$queryt);$rowt=mysqli_fetch_array($valt); ?>
            <div class="w3-container w3-center w3-round-xlarge " style="width:<?php echo intdiv($row1[0]*100,$rowt[0]);?>%;background:	#FF8C00;"><?php echo intdiv($row1[0]*100,$rowt[0]);?></div>
          </div>
		  
          <p>Plastic %</p>
          <div class="w3-light-grey w3-round-xlarge w3-small"><?php $query2="select sum(plastic) from table1,table2 where itemname1=ItemName OR itemname2=ItemName OR itemname3=ItemName OR itemname4=ItemName OR itemname5=ItemName OR itemname6=ItemName OR itemname7=ItemName;";$val2=mysqli_query($db,$query2);$row2=mysqli_fetch_array($val2);?>
            <div class="w3-container w3-center w3-round-xlarge " style="width:<?php echo intdiv($row2[0]*100,$rowt[0]);?>%;background:	#FF8C00;"><?php echo intdiv($row2[0]*100,$rowt[0]);?></div>
            </div>
          

          <p>Aluminum %</p>
          <div class="w3-light-grey w3-round-xlarge w3-small"><?php $query3="select sum(aluminium) from table1,table2 where itemname1=ItemName OR itemname2=ItemName OR itemname3=ItemName OR itemname4=ItemName OR itemname5=ItemName OR itemname6=ItemName OR itemname7=ItemName;";$val3=mysqli_query($db,$query3);$row3=mysqli_fetch_array($val3);?>
            <div class="w3-container w3-center w3-round-xlarge " style="width:<?php echo intdiv($row3[0]*100,$rowt[0]);?>%;background:	#FF8C00;"><?php echo intdiv($row3[0]*100,$rowt[0]);?></div>
          </div>

          <p>Others %</p>
          <div class="w3-light-grey w3-round-xlarge w3-small"><?php $query4="select sum(others) from table1,table2 where itemname1=ItemName OR itemname2=ItemName OR itemname3=ItemName OR itemname4=ItemName OR itemname5=ItemName OR itemname6=ItemName OR itemname7=ItemName;";$val4=mysqli_query($db,$query4);$row4=mysqli_fetch_array($val4);?>
            <div class="w3-container w3-center w3-round-xlarge" style="width:<?php echo intdiv($row4[0]*100,$rowt[0]);?>%;background:	#FF8C00;"><?php echo intdiv($row4[0]*100,$rowt[0]);?></div>
          </div>
													<!-- _____________________________-Horizontal Graph editing starts here_______________________________ -->
													
	</div>

       <div style="float:right;width:50%;">
	    <a href="d1.html" style="align:right;">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a>
		<!--<button type="submit" formaction="d1.html"><h2 style="width:250px;text-align:center;float:right;">Signout</h2></button>-->
								<h1>Overall Wastage Data</h1>

	<div id="piechart"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Waste generated'],
  ['Total Waste Generated', <?php echo $rowt[0];?>],
	['Limit to maximum waste', <?php echo 1000-$rowt[0];?>]
  //['Aluminium', 2],
  //['Paper', 4],
  //['Others', 2],
 ],false);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Restaurant\'s Waste this Month', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
  
</div>

	

</body>
</html>