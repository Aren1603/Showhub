<?php

namespace App\Http\Controllers\Personal\Main;

use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function __invoke()
    {
        $likedFilmsCount= auth()->user()->likedFilms->count();
        $ratesCount=auth()->user()->rates->count();
        return view('personal.main.index', compact('likedFilmsCount', 'ratesCount'));
    }
}
