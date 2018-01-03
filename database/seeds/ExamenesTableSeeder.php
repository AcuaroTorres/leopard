<?php

use Illuminate\Database\Seeder;
use App\Proceso\Examen;

class ExamenesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $examen = Examen::create([ 'nombre' => 'ACHS' ]);
        $examen->delete();
        $examen = Examen::create([ 'nombre' => 'ATACAMASH' ]);
        $examen = Examen::create([ 'nombre' => 'autorizado por área médica de cmdic' ]);
        $examen = Examen::create([ 'nombre' => 'Blanco (Laboratorio clínico)' ]);
        $examen = Examen::create([ 'nombre' => 'CAZESALUD Centro medico de antofagasta' ]);
        $examen = Examen::create([ 'nombre' => 'CEM' ]); 
        $examen->delete();
        $examen = Examen::create([ 'nombre' => 'CENTRO DE ERGONOMIA Y SALUD OCUPACIONAL' ]);
        $examen = Examen::create([ 'nombre' => 'CENTRO MEDICO DEL TRABAJADOR CMT' ]);
        $examen = Examen::create([ 'nombre' => 'CENTRO MEDICO PHB UNIDAD MEDICINA OCUPACIONAL' ]);
        $examen = Examen::create([ 'nombre' => 'CERTIFICADO M' ]);
        $examen = Examen::create([ 'nombre' => 'CESO NATCLAR SA' ]);
        $examen = Examen::create([ 'nombre' => 'CIS Laboratorio Clinico' ]); 
        $examen = Examen::create([ 'nombre' => 'CLINICA ALEMANA' ]); 
        $examen = Examen::create([ 'nombre' => 'CML PSICOTEC' ]); 
        $examen = Examen::create([ 'nombre' => 'CMMC Antofagasta' ]); 
        $examen = Examen::create([ 'nombre' => 'CRISAL SALUD LABORAL' ]); 
        $examen = Examen::create([ 'nombre' => 'Epak Medical' ]); 
        $examen = Examen::create([ 'nombre' => 'EVALUAMED' ]); 
        $examen = Examen::create([ 'nombre' => 'EXPRESSA MEDICA' ]); 
        $examen = Examen::create([ 'nombre' => 'HIGH CLINIC' ]); 
        $examen = Examen::create([ 'nombre' => 'IISO (Insituto Integral de salud Preocupacional)' ]); 
        $examen = Examen::create([ 'nombre' => 'INSIDE' ]); 
        $examen = Examen::create([ 'nombre' => 'ISCANTI' ]); 
        $examen = Examen::create([ 'nombre' => 'IST' ]); 
        $examen = Examen::create([ 'nombre' => 'Labonort' ]); 
        $examen = Examen::create([ 'nombre' => 'LIFEMED' ]); 
        $examen = Examen::create([ 'nombre' => 'MEDILAB DEL NORTE' ]);
        $examen = Examen::create([ 'nombre' => 'MEDINORT' ]);
        $examen = Examen::create([ 'nombre' => 'Miscanti' ]);
        $examen = Examen::create([ 'nombre' => 'MUTUAL DE SEGURIDAD' ]);
        $examen = Examen::create([ 'nombre' => 'MUTUAL DE SEGURIDAD-UNIDAD ESCONDIDA' ]);
        $examen = Examen::create([ 'nombre' => 'OTROS (EN ARCHIVO)' ]);
        $examen = Examen::create([ 'nombre' => 'Prevenort Centro Médico' ]);
        $examen = Examen::create([ 'nombre' => 'PREVEwNSALUD (SALAMANCA)' ]);
        $examen = Examen::create([ 'nombre' => 'PREVISMED' ]);
        $examen = Examen::create([ 'nombre' => 'VITAL CHILE' ]);
        $examen = Examen::create([ 'nombre' => 'WALLACE TRONCOSO E.I.R.L' ]);
        $examen = Examen::create([ 'nombre' => 'Workmed' ]);
    }
}
