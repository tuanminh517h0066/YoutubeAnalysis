<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{{asset('public/youtube')}}/">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    
    <title>Youtube</title>
</head>
<body>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header" >youtube Analysis</h1>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-5 col-lg-5">
                <div class="panel-body">
                    <form method="POST">
                    <input type="hidden" name="_token" value={{csrf_token()}}>

                        <div class="form-group">
                            <label>Youtube chanel</label>
                            <input class="form-control" placeholder="Input your chanel" name="channelname" type="text" autofocus="">
                            <input type="submit" value="submit">
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xs-12 col-md-7 col-lg-7">
                <div class="panel-heading">
                    <h3 style="text-align: center;" >Detail video of youtube chanel</h3>
                </div>
                <div class="panel-body">
                    <div class="bootstrap-table">
                        <table class="table">
                            <thead>
                                <tr class="bg-primary">
                                    <th>No</th>
                                    <th>Youtube chanel</th>
                                    <th>Option</th>

                                    <th>LineChart</th>
                                    <th>BarChart</th>


                                </tr>
                            </thead>
                            <tbody>
                                @foreach($list as $channel )
                                <tr>
                                    <td>{{$channel->id}}</td>
                                    <td>{{$channel->channel}}</td>
                                    <td>
                                        <a href="{{asset('detail/'.$channel->id)}}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> detail</a>
                                    </td>
                                    
                                    <td>
                                        <a href="{{asset('chart/'.$channel->id)}}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> chart</a>
                                    </td>
                                    <td>
                                        <a href="{{asset('barchart/'.$channel->id)}}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> chart</a>
                                    </td>
                                    
                                </tr>
                                @endforeach
                            </tbody>


                        </table>
                    </div>

                </div>

            </div>
            

        </div>
        

    </div>
    
    

    
</body>

</html>
