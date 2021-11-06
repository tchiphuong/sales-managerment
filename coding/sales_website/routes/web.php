<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

#Admin begin
Route::name('admin.')->group(function () {
    Route::get('/login', function () {
        return view('admin/login');
    });

    Route::get('/', function () {
        return view('admin/dashboard');
    });

    Route::get('/categories', function () {
        return view('admin/master/categories/categorySearch');
    });

    Route::get('/categories/add', function () {
        return view('admin/master/categories/categoryAdd');
    });
});
#Admin end


#Users begin
Route::get('/products', [ProductController::class, 'index']
);
#Users end
