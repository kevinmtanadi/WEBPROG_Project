<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;
    protected $table = 'movie';

    protected $casts = [
        'genre' => 'array',
        'actor_id' => 'array',
    ];

    public function movieActors() {
        return $this->hasMany(MovieActor::class);
    }

    public function movieGenres() {
        return $this->hasMany(MovieGenre::class);
    }

    public function watchlist() {
        return $this->hasMany(Watchlist::class);
    }
}
