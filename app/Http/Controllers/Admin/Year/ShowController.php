<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;
use App\Models\Year;

class ShowController extends Controller
{
    public function __invoke(Year $year)
    {

        return view('admin.year.show', compact('year'));
    }
}
