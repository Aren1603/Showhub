<?php

namespace App\Http\Controllers\Personal\Rate;

use App\Http\Controllers\Controller;
use App\Http\Requests\Personal\Rate\UpdateRequest;
use App\Models\Rate;


class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request,Rate $rate)
    {
        $data=$request->validated();
        $rate->update($data);
        return redirect()->route('personal.rate.index');
    }
}
