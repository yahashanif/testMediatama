<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tb_chart extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'id_barang','jumlah','total_harga'
    ];
}
