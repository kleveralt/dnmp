<?php

include dirname(__FILE__).'/vendor/autoload.php';

use Medoo\Medoo;
$database = new Medoo([
    'database_type' => 'mysql',
    'database_name' => 'testdb',
    'server' => 'mysql',
    'username' => 'root',
    'password' => '123456'
]);

$data = $database->select('card', '*', [
    'card_number[~]' => rand(100000,999999)
]);
 
echo json_encode($data);
