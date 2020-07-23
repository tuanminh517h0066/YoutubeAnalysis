<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{{asset('public/youtube')}}/">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chanel detail</title>
    <link rel="stylesheet" href="style2.css">
    
</head>
<body>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">youtube Analysis</h1>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-7 col-lg-7">
                <div class="panel-heading">
                    <h3 style="text-align: center;" >Detail video of youtube chanel</h3>
                    
                </div>

                <?php
                    foreach($list as $channel):
                        $key = "AIzaSyB-R-L5iK2p44TisHUhJJqox0tF6zZJaLo";
                        $base_url = "https://www.googleapis.com/youtube/v3/";
                        $maxResult = 15;

                        $API_URL = $base_url. "search?order=date&part=snippet&channelId=".$channel->id_channel."&maxResults=".
                        $maxResult."&key=".$key;

                        //echo $API_URL;
                        
                        $video = json_decode(file_get_contents($API_URL));
                        //$video1 = json_decode(file_get_contents($APA_URL));
                        //echo "<pre>";
                        //print_r($video);
                    endforeach;
                ?>

                <div class="panel-body">
                    <div class="table1">
                        <table class="table">
                            <thead>

                                <tr class="bg-primary">
                                   
                                   <th>Title</th>
                                   <th>View</th>
                                   <th>Thumbrial</th>
                                   <th>postview</th>
                                   <th>video lenght</th>
                                   <th>like</th>
                                   <th>unlike</th>
                                </tr>
                            </thead>
                            <tbody>
                            <form action="" method="POST"></form>
                            @foreach($video->items as $video)
                            <?php
                                //$video->id->videoId;
                                $key = "AIzaSyB-R-L5iK2p44TisHUhJJqox0tF6zZJaLo";
                                $base_url = "https://www.googleapis.com/youtube/v3/";
                                $APA_URL = "https://www.googleapis.com/youtube/v3/videos?id=".$video->id->videoId."&part=statistics&part=contentDetails&key=".$key;
                                $video1 = json_decode(file_get_contents($APA_URL));
                                //echo "<pre>";
                                 //print_r($video1);

                            ?>
                            <form action="" method="POST">
                                 @foreach($video1->items as $video1)
                                <tr>
                                    <td> {{$video->snippet->title}} </td>
                                    <td> {{$video1->statistics->viewCount}} </td>
                                    <td>
                                        <img src="{{$video->snippet->thumbnails->medium->url}}" alt="" class="thumbnail">
                                    </td>
                                    <td> {{$video->snippet->channelTitle}} </td>
                                    <td>
                                        <?php
                                            $stamp = $video1->contentDetails->duration;
                                            $formated_stamp = str_replace(array("PT","M","S","H"), array("",":","",":",""),$stamp);
                                            
                                            echo $formated_stamp;
                                        ?>
                                            
                                        
                                    </td>
                                    <td>{{$video1->statistics->likeCount}}</td>
                                    <td>{{$video1->statistics->dislikeCount}}</td>
                                </tr>
                                @endforeach
                            @endforeach
                            </form>
                            </tbody>


                        </table>
                    </div>
                </div>

                

            </div>

        </div>
       
    
</body>
</html>