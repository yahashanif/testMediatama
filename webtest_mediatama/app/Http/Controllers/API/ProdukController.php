<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Tb_barang;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function all()
    {
        $product = Tb_barang::all();
        return json_encode($product);
    }

    public function create(Request $request)
    {
        Tb_barang::create($request->all());
        $product = Tb_barang::all();
        return json_encode($product);
    }

    public function update(Request $request)
    {
        Tb_barang::whereId($request->id)->update([
            'nama_barang' => $request->nama_barang,
            'jumlah' => $request->jumlah,
            'harga' => $request->harga,
        ]);

        $product = Tb_barang::all();
        return json_encode($product);
    }

    public function delete(Request $request){
        $product = Tb_barang::find($request->id);
        $product->delete();
        $product = Tb_barang::all();
        return json_encode($product);
    }
}
