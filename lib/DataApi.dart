// To parse this JSON data, do
//
//     final dataApi = dataApiFromJson(jsonString);

import 'dart:convert';

DataApi dataApiFromJson(String str) => DataApi.fromJson(json.decode(str));

String dataApiToJson(DataApi data) => json.encode(data.toJson());

class DataApi {
  DataApi({
    required this.total,
    required this.messages,
    required this.data,
  });

  int total;
  String messages;
  List<Datum> data;

  factory DataApi.fromJson(Map<String, dynamic> json) => DataApi(
        total: json["total"],
        messages: json["messages"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "messages": messages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.suppliersId,
    required this.barang,
    required this.hargaDis,
    required this.hargaJual,
    required this.gambar,
    required this.ukuran,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int suppliersId;
  String barang;
  int hargaDis;
  int hargaJual;
  String gambar;
  String ukuran;
  int stock;
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        suppliersId: json["suppliers_id"],
        barang: json["barang"],
        hargaDis: json["Harga_dis"],
        hargaJual: json["Harga_jual"],
        gambar: json["gambar"],
        ukuran: json["Ukuran"],
        stock: json["Stock"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "suppliers_id": suppliersId,
        "barang": barang,
        "Harga_dis": hargaDis,
        "Harga_jual": hargaJual,
        "gambar": gambar,
        "Ukuran": ukuran,
        "Stock": stock,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
