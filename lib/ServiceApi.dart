import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pemandroid/DataApi.dart';

Dio createDio(String baseUrl) {
  Dio dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 200000,
      sendTimeout: 20000,
      receiveTimeout: 20000,
      contentType: "application/json",
      followRedirects: false,
      receiveDataWhenStatusError: true,
      responseType: ResponseType.json));

  return dio;
}

class ApiPathConstants {
  static const getActivity = "/api/users";
  static const postActivity = "/api/v1/products";
}

class Service {
  final Dio _dio = createDio("https://dog.ceo/api/breeds/image/random");

  Future<Datum?> getActivity() async {
    Datum? datatampil;
    try {
      Response data = await _dio.get(ApiPathConstants.getActivity);
      print('user Info : ${data.data}');
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return datatampil;
  }

  Future<int> postActivity(
      {required int id,
      required String barang,
      required int Harga_jual,
      required int Harga_beli,
      required String gambar,
      required int stock,
      required String ukuran}) async {
    try {
      final res =
          await _dio.post(ApiPathConstants.postActivity, queryParameters: {
        "id": id,
        "barang": barang,
        "Harga_jaul": Harga_jual,
        "Harga_beli": Harga_beli,
        "gambar": gambar,
        "stock": stock,
        "ukuran": ukuran
      });

      return res.statusCode ?? 404;
    } on DioError {
      return 404;
    }
  }
}
