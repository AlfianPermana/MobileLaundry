// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Coba dataFromJson(String str) => Coba.fromJson(json.decode(str));

String dataToJson(Coba data) => json.encode(data.toJson());

class Coba {
  Coba({
    required this.message,
    required this.status,
  });

  String message;
  String status;

  factory Coba.fromJson(Map<String, dynamic> json) => Coba(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
