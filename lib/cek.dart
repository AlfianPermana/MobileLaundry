// To parse this JSON data, do
//
//     final dataApi = dataApiFromJson(jsonString);

import 'dart:convert';

//DataApi dataApiFromJson(String str) => DataApi.fromJson(json.decode(str));

//String dataApiToJson(DataApi data) => json.encode(data.toJson());

class DataApi {
  DataApi({
    required this.data,
    required this.support,
  });

  Data data;
  Support support;

/*  factory DataApi.fromJson(Map<String, dynamic> json) => DataApi(
        data: Data.fromJson(json["data"]),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "support": support.toJson(),
      };*/
}

class Data {
  Data({
    required this.id,
    required this.email,
    required this.name,
  });

  int id;
  String email;
  String name;

  /* factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };*/
}

class Support {
  Support({
    required this.url,
    required this.text,
  });

  String url;
  String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
