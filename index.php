<?php
header('access-control-allow-origin: *');
header('Content-Type: application/json');

include_once 'src/Epi.php';
Epi::setPath('base', 'src');
Epi::init('api');
Epi::init('database');
EpiDatabase::employ('mysql', 'ambpc', 'localhost', 'root', 'root');
/*
 * We create 3 normal routes (think of these are user viewable pages).
 * We also create 2 api routes (this of these as data methods).
 *  The beauty of the api routes are they can be accessed natively from PHP
 *    or remotely via HTTP.
 *  When accessed over HTTP the response is json.
 *  When accessed natively it's a php array/string/boolean/etc.
 */
getRoute()->get('/', 'showEndpoints');
getApi()->get('/processor.json', 'apiProcessor', EpiApi::external);
getApi()->get('/mobo.json', 'apiMobo', EpiApi::external);
getRoute()->run();

/*
 * ******************************************************************************************
 * Define functions and classes which are executed by EpiCode based on the $_['routes'] array
 * ******************************************************************************************
 */

function showEndpoints() {
  echo "Ok!";
}

function apiProcessor() {
  header('Content-Type: application/json');
  $pcs = getDatabase()->all('SELECT * FROM processor WHERE 1');
  return $pcs;
}

function apiMobo() {
  header('Content-Type: application/json');
  $q = "SELECT mobo.* FROM `mobo` INNER JOIN processor_mobo ON (mobo.id=processor_mobo.mobo_id) WHERE processor_mobo.processor_id =1;";
  $pcs = getDatabase()->all($q);
  return $pcs;
}
