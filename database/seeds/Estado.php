<?php

use Illuminate\Database\Seeder;

class Proceso/Estado extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $estado = new App\Proceso\Estado();
        $estado->id = 1;
        $estado->nombre = 'AUTORIZADO -INDUCCIÓN (Personal Nuevo)';
        $estado->estado = 1;
        $estado->save();

        $estado = new App\Proceso\Estado();
        $estado->id = 2;
        $estado->nombre = 'AUTORIZADO VISITA';
        $estado->estado = 1;
        $estado->save();

        $estado = new App\Proceso\Estado();
        $estado->id = 3;
        $estado->nombre = 'EXAMEN ACTUALIZADO';
        $estado->estado = 1;
        $estado->save();

        $estado = new App\Proceso\Estado();
        $estado->id = 4;
        $estado->nombre = 'REVALIDACIÓN';
        $estado->estado = 1;
        $estado->save();
    }
}
