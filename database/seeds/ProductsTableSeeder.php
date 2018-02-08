<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Akomulator ' .$i,
                'slug' => 'Akomulator ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p1.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(1);
        }
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Staklo ' .$i,
                'slug' => 'Staklo ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p2.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(2);
        }
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Retrovizor ' .$i,
                'slug' => 'Retrovizor ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p3.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(3);
        }
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Motor ' .$i,
                'slug' => 'Motor ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p4.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(4);
        }
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Gume ' .$i,
                'slug' => 'Gume ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p5.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(5);
        }
        for ($i=1;$i<=11;$i++){
            Product::create([
                'name' => 'Ostalo ' .$i,
                'slug' => 'Ostalo ' .$i,
                'details' => $i. '0 inch, 1TB SSD, 32GB RAM',
                'price' => rand(100,1000),
                'image' => 'user/image/p6.jpeg',
                'description' => 'It is a long established fact that a reader will be distracted by the readable content of a page 
                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
            ])->categories()->attach(6);
        }
    }
}
