class BarangModel {
  int? id;
  String? namaBarang;
  int? jumlah;
  int? harga;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  BarangModel(
      {this.id,
      this.namaBarang,
      this.jumlah,
      this.harga,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  BarangModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaBarang = json['nama_barang'];
    jumlah = json['jumlah'];
    harga = json['harga'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama_barang'] = namaBarang;
    data['jumlah'] = jumlah;
    data['harga'] = harga;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
