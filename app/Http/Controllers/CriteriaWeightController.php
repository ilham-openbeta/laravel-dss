<?php

namespace App\Http\Controllers;

use App\Models\CriteriaWeight;
use Illuminate\Http\Request;

class CriteriaWeightController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $criteriaweights = CriteriaWeight::get();
        return view('criteriaweight.index', compact('criteriaweights'))->with('i', 0);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('criteriaweight.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'type' => 'required',
            'weight' => 'required',
            'description' => 'required',
        ]);

        CriteriaWeight::create($request->all());

        return redirect()->route('criteriaweights.index')
                        ->with('success','Criteria created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CriteriaWeight  $criteriaWeight
     * @return \Illuminate\Http\Response
     */
    public function show(CriteriaWeight $criteriaWeight)
    {
        // return view('criteriaweight.show',compact('criteriaWeight'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CriteriaWeight  $criteriaWeight
     * @return \Illuminate\Http\Response
     */
    public function edit(CriteriaWeight $criteriaweight)
    {
        return view('criteriaweight.edit',compact('criteriaweight'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CriteriaWeight  $criteriaWeight
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CriteriaWeight $criteriaweight)
    {
        $request->validate([
            'name' => 'required',
            'type' => 'required',
            'weight' => 'required',
            'description' => 'required',
        ]);

        $criteriaweight->update($request->all());

        return redirect()->route('criteriaweights.index')
                        ->with('success','Criteria updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CriteriaWeight  $criteriaWeight
     * @return \Illuminate\Http\Response
     */
    public function destroy(CriteriaWeight $criteriaweight)
    {
        $criteriaweight->delete();

        return redirect()->route('criteriaweights.index')
                        ->with('success','Criteria deleted successfully');
    }
}
