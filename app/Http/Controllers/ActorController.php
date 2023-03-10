<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ActorController extends Controller
{
    //

    public function showActor(Request $req) {

        $search = $req->search;
        $actors = Actor::where('name', 'LIKE', "%$search%")->get();
        return view('actor', ['actors' => $actors]);
    }

    public function specificActor($id) {
        $actor = Actor::where('id', $id)->first();

        return view('actor_detail', ['actor' => $actor]);
    }

    public function addActor(Request $req) {
        return view('add_actor');
    }

    public function insertActor(Request $req) {
        $rules = [
            'name' => 'required|min:3',
            'gender' => 'required',
            'biography' => 'required|min:10',
            'dob' => 'required',
            'pob' => 'required',
            'img_url' => 'required|file|mimes:jpeg,jpg,png,gif',
            'popularity' => 'required|numeric',
        ];

        $validator = Validator::make($req->all(), $rules);

        if ($validator->fails()) {
            return back()->withErrors($validator);
        }

        $file = $req->file('img_url');
        $extension = $file->getClientOriginalExtension();
        $filename = time().'.'.$extension;

        Storage::putFileAs('public/images/', $file, $filename);

        Actor::insert([
            'name' => $req->name,
            'gender' => $req->gender,
            'biography' => $req->biography,
            'dob' => $req->dob,
            'pob' => $req->pob,
            'image_url' => $filename,
            'popularity' => $req->popularity
        ]);

        return redirect('/');

    }

    public function editActor($id) {
        $actor = Actor::where('id', $id)->first();

        return view('edit_actor', ['actor' => $actor]);
    }

    public function executeEdit(Request $req, $id) {
        if ($req->hasFile('img_url')) {
            $actor = Actor::where('id', $id)->first();

            Storage::delete('public/images/'.$actor->image_url);

            $file = $req->file('img_url');
            $extension = $file->getClientOriginalExtension();
            $filename = 'movie_'.'.'.time().'.'.$extension;

            Storage::putFileAs('public/images/', $file, $filename);
            Actor::where('id', $id)->update([
                'img_url' => $filename
            ]);
        }

        Actor::where('id', $id)->update([
            'name' => $req->name,
            'gender' => $req->gender,
            'biography' => $req->biography,
            'dob' => $req->dob,
            'pob' => $req->pob,
            'image_url' => $filename,
            'popularity' => $req->popularity
        ]);

        return redirect()->back();
    }

    public function deleteActor($id) {
        Actor::where('id', $id)->delete();

        return redirect('/');
    }
}
