<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;

class CreateController extends Controller
{
    public function __invoke()
    {
        return view('admin.year.create');
    }
}
