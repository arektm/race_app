<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoryRiderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('category_rider', function (Blueprint $table) {
            $table->integer('id')->unique();
            $table->integer('category_id')->unsigned();
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->integer('rider_id')->unsigned();
            $table->foreign('rider_id')->references('id')->on('riders')->onDelete('cascade');
            $table->primary(['category_id','rider_id']);
            //$table->timestamps();
        });
        DB::update("ALTER TABLE `category_rider` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('category_rider');
    }
}
