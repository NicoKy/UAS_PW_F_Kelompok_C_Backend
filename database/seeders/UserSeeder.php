<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Nico',
            'email' => '190710127@students.uajy.ac.id',
            'password' => '$2a$12$SKi/a5Q7i1W9XMFSrAOv0.QP9YNBmnYs1wAcA/B.JgVnDipJrqsSG',
            'address' => '085397896830',
            'is_admin' => 1,
            'email_verified_at' => Carbon::now(),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);
    }
}
