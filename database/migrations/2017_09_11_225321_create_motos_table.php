<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMotosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('motos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_rider_id')->unsigned();
            $table->foreign('category_rider_id')->references('id')->on('category_rider')->onDelete('cascade');
            $table->string('moto1');
            $table->string('moto2');
            $table->string('moto3');
            $table->string('moto1results');
            $table->string('moto2results');
            $table->string('moto3results');
            //$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('motos');
    }
}
