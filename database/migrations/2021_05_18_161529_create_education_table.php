<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEducationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education', function (Blueprint $table) {
            $table->id();
            $table->smallInteger('curriculum_vitae_id');
            $table->string('school');
            $table->string('faculty')->nullable();
            $table->string('fieldOfStudy')->nullable();
            $table->string('degree')->nullable();
            $table->string('status');
            $table->date('started_at');
            $table->date('finished_at')->nullable();
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
        Schema::dropIfExists('education');
    }
}
