<?php

use Illuminate\Database\Seeder;
use App\Proceso\Tipo;

class TiposTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tipo = Tipo::create([ 'nombre' => 'ACTUALIZACION' ]);
        $tipo = Tipo::create([ 'nombre' => 'POSTULANTE' ]);
        $tipo = Tipo::create([ 'nombre' => 'REASIGNACION' ]);
        $tipo = Tipo::create([ 'nombre' => 'TRABAJO' ]);
        $tipo = Tipo::create([ 'nombre' => 'VISITA' ]);
    }
}
