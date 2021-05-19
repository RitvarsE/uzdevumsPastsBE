<?php

use App\Http\Controllers\CurriculumVitaeController;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/getAll', [CurriculumVitaeController::class, 'getAll']);
Route::delete('/delete/{id}', [CurriculumVitaeController::class, 'delete']);
Route::put('/addCV', [CurriculumVitaeController::class, 'addCV']);
Route::get('/get/{id}', [CurriculumVitaeController::class, 'get']);
Route::post('/updateBasic/{id}', [CurriculumVitaeController::class, 'updateBasic']);
Route::post('/updateJob/{id}', [CurriculumVitaeController::class, 'updateJob']);
Route::get('/getBasic/{id}', [CurriculumVitaeController::class, 'getBasic']);
Route::get('/getJob/{id}', [CurriculumVitaeController::class, 'getJob']);
Route::get('/getSkill/{id}', [CurriculumVitaeController::class, 'getSkill']);
Route::get('/getOther/{id}', [CurriculumVitaeController::class, 'getOther']);
Route::get('/getEducation/{id}', [CurriculumVitaeController::class, 'getEducation']);
Route::post('/updateSkill/{id}', [CurriculumVitaeController::class, 'updateSkill']);
Route::post('/updateOther/{id}', [CurriculumVitaeController::class, 'updateOther']);
Route::post('/updateEducation/{id}', [CurriculumVitaeController::class, 'updateEducation']);
Route::delete('/deleteJob/{id}', [CurriculumVitaeController::class, 'deleteJob']);
Route::delete('/deleteSkill/{id}', [CurriculumVitaeController::class, 'deleteSkill']);
Route::delete('/deleteOther/{id}', [CurriculumVitaeController::class, 'deleteOther']);
Route::delete('/deleteEducation/{id}', [CurriculumVitaeController::class, 'deleteEducation']);
Route::post('/addBasic/{id}', [CurriculumVitaeController::class, 'addBasic']);
Route::post('/addSkill/{id}', [CurriculumVitaeController::class, 'addSkill']);
Route::post('/addJob/{id}', [CurriculumVitaeController::class, 'addJob']);
Route::post('/addEducation/{id}', [CurriculumVitaeController::class, 'addEducation']);
Route::post('/addOther/{id}', [CurriculumVitaeController::class, 'addOther']);
