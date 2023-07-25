import 'package:flutter/material.dart';
import 'package:pemandroid/Page1.dart';
import 'package:pemandroid/ServiceApi.dart';

class tambahapi extends StatelessWidget {
  const tambahapi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _id = TextEditingController();
    TextEditingController _barang = TextEditingController();
    TextEditingController _hj = TextEditingController();
    TextEditingController _hd = TextEditingController();
    TextEditingController _gambar = TextEditingController();
    TextEditingController _stock = TextEditingController();
    TextEditingController _ukuran = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Padding(
          padding: EdgeInsets.all(15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Agenda Laundry",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _id,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Tanggal/Hari Agenda Laundry",
                        hintText: "Masukkan Tanggal/Hari"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _barang,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Tempat Laundry",
                        hintText: "Masukkan Tempat"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _hd,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Catatan Agenda",
                        hintText: "Masukkan Catatan"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: _stock,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Catatan Agenda",
                        hintText: "Masukkan Catatan"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5, top: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Kembali"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 10),
                      child: ElevatedButton(
                        onPressed: () async {},
                        child: Text("Simpan"),
                      ),
                    )
                  ],
                )
              ],
            )),
          )),
    );
  }
}
