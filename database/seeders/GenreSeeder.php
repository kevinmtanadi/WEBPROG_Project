<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GenreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $genres = [
            ['name' => 'Comedy'],
            ['name' => 'Sci-Fi'],
            ['name' => 'Horror'],
            ['name' => 'Romance'],
            ['name' => 'Action'],
            ['name' => 'Thriller'],
            ['name' => 'Drama'],
            ['name' => 'Mystery'],
            ['name' => 'Crime'],
            ['name' => 'Animation'],
            ['name' => 'Adventure'],
            ['name' => 'Fantasy'],
        ];

        DB::table('genre')->insert($genres);

    }
}
