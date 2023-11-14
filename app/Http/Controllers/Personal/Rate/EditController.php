<?php

namespace App\Http\Controllers\Personal\Rate;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Rate;

class EditController extends Controller
{
    public function __invoke(Rate $rate)
    {
        return view('personal.rate.edit', compact('rate'));
    }
}
