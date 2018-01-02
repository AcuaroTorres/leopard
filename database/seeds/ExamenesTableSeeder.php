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
        $examen = new Examen();
        $examen->nombre='ACHS';
        $examen->save();
        $examen->delete();

        $examen = new Examen();
        $examen->nombre='ATACAMASH';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='autorizado por área médica de cmdic';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='Blanco (Laboratorio clínico)';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CAZESALUD Centro medico de antofagasta';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CEM';
        $examen->save();
        $examen->delete();

        $examen = new Examen();
        $examen->nombre='CENTRO DE ERGONOMIA Y SALUD OCUPACIONAL';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CENTRO MEDICO DEL TRABAJADOR CMT';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CENTRO MEDICO PHB UNIDAD MEDICINA OCUPACIONAL';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CERTIFICADO M';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CESO NATCLAR SA';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CIS Laboratorio Clinico';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CLINICA ALEMANA';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CML PSICOTEC';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CMMC Antofagasta';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='CRISAL SALUD LABORAL';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='Epak Medical';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='EVALUAMED';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='EXPRESSA MEDICA';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='HIGH CLINIC';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='IISO (Insituto Integral de salud Preocupacional)';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='INSIDE';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='ISCANTI';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='IST';
        $examen->save();
        $examen->delete();

        $examen = new Examen();
        $examen->nombre='Labonort';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='LIFEMED';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='MEDILAB DEL NORTE';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='MEDINORT';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='Miscanti';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='MUTUAL DE SEGURIDAD';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='MUTUAL DE SEGURIDAD-UNIDAD ESCONDIDA';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='OTROS (EN ARCHIVO)';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='Prevenort Centro Médico';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='PREVEwNSALUD (SALAMANCA)';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='PREVISMED';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='VITAL CHILE';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='WALLACE TRONCOSO E.I.R.L';
        $examen->save();

        $examen = new Examen();
        $examen->nombre='Workmed';
        $examen->save();
    }
}
