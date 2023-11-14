<?php

namespace App\Http\Controllers\Personal\Rate;

use App\Http\Controllers\Controller;
use App\Models\User;

class IndexController extends Controller
{
    public function __invoke()
    {
        $rates = auth()->user()->rates;
        return view('personal.rate.index', compact('rates'));
    }
}
