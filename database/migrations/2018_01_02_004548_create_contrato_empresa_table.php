<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContratoEmpresaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contrato_empresa', function (Blueprint $table) {

            $table->integer('contrato_id')->unsigned();
            $table->integer('empresa_id')->unsigned();

            $table->date('inicio');
            $table->date('termino');
            $table->enum('tipo_contrato', ['Contratista', 'Subcontratista']);

            $table->foreign('contrato_id')->references('id')->on('contrato')->onDelete('cascade');
            $table->foreign('empresa_id')->references('id')->on('empresa')->onDelete('cascade');
            //$table->unique(['first', 'last']);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contrato_empresa');
    }
}
/*
CREATE TABLE `proceso_contrato_empresa` (
`codigo_contrato` varchar(50) NOT NULL,
`nombre_empresa` varchar(255) NOT NULL,
`inicio` date DEFAULT NULL,
`termino` date DEFAULT NULL,
`tipo_contrato` enum('Contratista','Subcontratista') DEFAULT NULL,
`estado` tinyint(1) NOT NULL DEFAULT '1'
)
*/
