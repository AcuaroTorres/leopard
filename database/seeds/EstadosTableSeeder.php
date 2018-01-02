<?php

use Illuminate\Database\Seeder;
use App\Proceso\Estado;

class EstadosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $estado = Estado::create([ 'nombre' => 'AUTORIZADO -INDUCCIÓN (Personal Nuevo)' ]);
        $estado = Estado::create([ 'nombre' => 'AUTORIZADO VISITA' ]);
        $estado = Estado::create([ 'nombre' => 'EXAMEN ACTUALIZADO' ]);
        $estado = Estado::create([ 'nombre' => 'REVALIDACIÓN' ]);
    }
}
