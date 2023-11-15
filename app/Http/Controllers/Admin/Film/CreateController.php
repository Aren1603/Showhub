<?php

namespace App\Http\Controllers\Admin\Film;

use App\Http\Controllers\Controller;
use App\Models\Rejisor;
use App\Models\Actor;
use App\Models\Genre;
use App\Models\Year;
use Illuminate\Http\Request;

class CreateController extends Controller
{
    public function __invoke()
    {
        $rejisors = Rejisor::orderBy('name')->get();
        $actors = Actor::orderBy('actor')->get();
        $years = Year::orderBy('year', 'desc')->get();
        $genres = Genre::orderBy('genre')->get();
        return view('admin.film.create', compact('rejisors', 'actors', 'years', 'genres'));
    }
}
