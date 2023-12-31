<?php

namespace App\Http\Controllers\Admin\Genre;

use App\Http\Controllers\Controller;
use App\Models\Genre;

class IndexController extends Controller
{
    public function __invoke()
    {
        $genres = Genre::all()->sortBy('genre');
        return view('admin.genre.index', compact('genres'));
    }
}
