import 'package:dio/dio.dart';

import 'package:pemandroid/DataApi.dart';
import 'package:pemandroid/apipublic.dart';
import 'package:pemandroid/cek.dart';
import 'package:pemandroid/cobadata.dart';

abstract class Services {
  static Future<Coba?> getById() async {
    try {
      //  http: //127.0.0.1:8000/api/v1/products
      var response = await Dio().get('https://dog.ceo/api/breeds/image/random');
      //kalau berhasil
      if (response.statusCode == 200) {
        print('user Info : ${response.data}');

        return Coba(
            message: response.data['message'], status: response.data['status']);
      }
      return null;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
