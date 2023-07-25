import 'dart:ffi';

import 'package:flutter/material.dart';

class Jenis {
  String judul;
  String logo;

  Jenis({
    required this.judul,
    required this.logo,
  });
}

class Outlet {
  String nama;
  String alamat;
  String rating;
  String gambar;

  Outlet({
    required this.nama,
    required this.alamat,
    required this.rating,
    required this.gambar,
  });
}
