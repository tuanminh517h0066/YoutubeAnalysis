<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Channel;

class HomeController extends Controller
{
    //
    public function getHome(){
        $data['list']= Channel::all();
        return view('backend.basicPage',$data);
    }
    public function postHome(Request $request){
        $user = new Channel;
        $user->channel = $request->channelname;
        $step = explode("/",$request->channelname);

        $user->id_channel = $step[4];
        $user->save();
        return back();
        //dd($user);
    }
}
