<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use App\Category;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $now = Carbon::now()->toDateTimeString();

        Category::insert([
            ['name' => 'Akomulator', 'slug' => 'akomulator', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Staklo', 'slug' => 'staklo', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Retrovizor', 'slug' => 'retrovizor', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Motor', 'slug' => 'motor', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Gume', 'slug' => 'gume', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Ostalo', 'slug' => 'ostalo', 'created_at' => $now, 'updated_at' => $now],
        ]);
    }
}
