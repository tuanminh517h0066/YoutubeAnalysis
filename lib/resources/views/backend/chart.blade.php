<html>
  <head>
    <script type="text/javascript" 
 src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['title', 'like', 'dislike'],
          
          //PHP Code 
          <?php
              foreach($list as $channel):
                $key = "AIzaSyCrr67oZdHZ3tX4VQOIdfmFT9107zXcEDM";
                $base_url = "https://www.googleapis.com/youtube/v3/";
                $maxResult = 10;

                $API_URL = $base_url. "search?order=date&part=snippet&channelId=".$channel->id_channel."&maxResults=".
                $maxResult."&key=".$key;
            ?>
                
            <?php    
                $video = json_decode(file_get_contents($API_URL));
                //$video1 = json_decode(file_get_contents($APA_URL));
                //echo "<pre>";
                //print_r($video);
                foreach($video->items as $video):
                    $key = "AIzaSyCrr67oZdHZ3tX4VQOIdfmFT9107zXcEDM";
                    $base_url = "https://www.googleapis.com/youtube/v3/";
                    $APA_URL = "https://www.googleapis.com/youtube/v3/videos?id=".$video->id->videoId."&part=statistics&part=contentDetails&key=".$key;
                    $video1 = json_decode(file_get_contents($APA_URL));
                    //print_r($video1);
                    $stamp = $video->snippet->publishTime;
                    $formated_stamp = str_replace(array("T","Z"), array("/","S"),$stamp);
                    $stamp = $video->snippet->publishTime;
                    $formated_stamp = str_replace(array("T","Z"), array("/","S"),$stamp);
                    $step = explode("/",$formated_stamp);
                    $newDate = date("d-m-Y", strtotime($step[0]));
                  foreach($video1->items as $video1):



          ?>  
           ['<?php echo $newDate.'/'.$step[1];?>',<?php echo $video1->statistics->likeCount;?>,
        <?php echo $video1->statistics->dislikeCount;?>], 
          <?php  
                  endforeach;
                endforeach;
    
            endforeach;


          ?> 
 
        ]);

        var options = {
          title:  '{{$video->snippet->channelTitle}} channel Performance',
          curveType: 'function',
          chartArea: {width: '50%'},
          legend: { position: 'bottom' },
          width: 1500,
          height: 500,
          vAxis: {'title': "Like and dislike count in amount"},

          hAxis: {
                'title': "Publish Days of video [Days]",
                'direction': "-1",
                'gridlines': { 'count': '6'}
                },
        };

        var chart = new google.visualization.LineChart 
        (document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
    <base href="{{asset('public/youtube')}}/">

    <link rel="stylesheet" href="style2.css">


  </head>
  <body>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">youtube Analysis</h1>
        </div>
    <div id="curve_chart" style="width: 900px; height: 500px"></div>
    </div>
    
  </body>
</html>