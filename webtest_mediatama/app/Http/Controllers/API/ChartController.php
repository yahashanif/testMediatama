<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Tb_chart;
use Illuminate\Http\Request;

class ChartController extends Controller
{
    public function create(Request $request){
        $total_harga = $request->jumlah * $request->harga;
        $chart = Tb_chart::create([
            'id_barang'=>$request->id_barang,
            'jumlah'=>$request->jumlah,
            'total_harga'=>$total_harga
        ]);
        $chart = Tb_chart::all();
        return json_encode($chart);
    }
}
