class ChartModel {
  int? id;
  String? idBarang;
  int? jumlah;
  int? totalHarga;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;

  ChartModel(
      {this.id,
      this.idBarang,
      this.jumlah,
      this.totalHarga,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  ChartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idBarang = json['id_barang'];
    jumlah = json['jumlah'];
    totalHarga = json['total_harga'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['id_barang'] = idBarang;
    data['jumlah'] = jumlah;
    data['total_harga'] = totalHarga;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
