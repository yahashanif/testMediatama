<?php

use App\Http\Controllers\API\ChartController;
use App\Http\Controllers\API\ProdukController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('all',[ProdukController::class,'all']);
Route::post('create',[ProdukController::class,'create']);
Route::post('update',[ProdukController::class,'update']);
Route::post('delete',[ProdukController::class,'delete']);

Route::post('create_chart',[ChartController::class,'create']);
