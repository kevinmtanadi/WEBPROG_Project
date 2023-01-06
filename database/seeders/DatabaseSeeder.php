<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            GenreSeeder::class,
        ]);

        User::insert([
            'username' => 'admin',
            'email' => 'admin@example.com',
            'password' => 'admin',
            'role' => 'admin',
            'created_at' => Carbon::now(),
        ]);
    }
}
