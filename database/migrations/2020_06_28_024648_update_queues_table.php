<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class UpdateQueuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("ALTER TABLE queues DROP COLUMN idDevice;");
        DB::statement("ALTER TABLE queues ADD idDevice VARCHAR(255) NOT NULL AFTER id;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("ALTER TABLE queues ADD idDevice VARCHAR(255) NOT NULL UNIQUE AFTER id;");
    }
}
