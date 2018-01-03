<?php

use Illuminate\Database\Seeder;
//use database\seeds\Proceso\EstadoTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RolesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(EmpresasTableSeeder::class);
        $this->call(EstadosTableSeeder::class);
        $this->call(TiposTableSeeder::class);
        $this->call(ExamenesTableSeeder::class);
        $this->call(ContratosTableSeeder::class);
    }
}
