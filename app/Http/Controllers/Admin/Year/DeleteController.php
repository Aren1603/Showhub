<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;
use App\Models\Year;

class DeleteController extends Controller
{
    public function __invoke(Year $year)
    {
        $year->delete();
        return redirect()->route('admin.year.index');
    }
}
