<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Year\UpdateRequest;
use App\Models\Year;

class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request, Year $year)
    {
        $data = $request->validated();
        $year->update($data);
        return view('admin.year.show', compact('year'));
    }
}
