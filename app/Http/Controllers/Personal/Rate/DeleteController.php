<?php

namespace App\Http\Controllers\Personal\Rate;

use App\Http\Controllers\Controller;
use App\Models\Rate;

class DeleteController extends Controller
{
    public function __invoke(Rate $rate)
    {
        $rate->delete();
        return redirect()->route('personal.rate.index');
    }
}
