<?php

namespace App\Http\Controllers\Admin\Year;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Year\StoreRequest;
use App\Models\year;

class StoreController extends Controller
{
    public function __invoke(StoreRequest $request)
    {
        $data=$request->validated();
        Year::firstOrCreate($data);
        return redirect()->route('admin.year.index');
    }
}
