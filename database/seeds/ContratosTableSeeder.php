<?php

use Illuminate\Database\Seeder;
use App\Proceso\Contrato;

class ContratosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $contrato = Contrato::create([ 'codigo' => 'PRI1730', 
                             'vice_presidencia' => 'Proyecto', 
                                     'gerencia' => 'Contratos, Abastecimiento y T.I.' ]);

        $contrato = Contrato::create([ 'codigo' => 'R02684', 
                             'vice_presidencia' => 'VPEO', 
                                     'gerencia' => 'Orden de Servicio' ]);

        $contrato = Contrato::create([ 'codigo' => 'R65527', 
                             'vice_presidencia' => 'VPP', 
                                     'gerencia' => 'Orden de Compra' ]);

    }
}
/*
*/