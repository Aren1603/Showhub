<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;
use App\Models\Year;

class IndexController extends Controller
{
    public function __invoke()
    {
        $years = Year::orderBy('year', 'desc')->get();
        return view('admin.year.index', compact('years'));
    }
}
