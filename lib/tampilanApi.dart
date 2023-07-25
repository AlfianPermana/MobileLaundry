import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:pemandroid/DataApi.dart';
import 'package:pemandroid/ServiceApi.dart';
import 'package:pemandroid/ServiceApi2.dart';
import 'package:pemandroid/Agenda_Laundry/pages/tampilandata.dart';
import 'package:pemandroid/Agenda_Laundry/pages/tambahdataapi.dart';
import 'package:pemandroid/apipublic.dart';
import 'package:pemandroid/cek.dart';
import 'package:pemandroid/cobadata.dart';

class tampilanApi extends StatefulWidget {
  const tampilanApi({Key? key}) : super(key: key);

  @override
  State<tampilanApi> createState() => _tampilanApiState();
}

class _tampilanApiState extends State<tampilanApi> {
  Coba? data;
  Datum? datum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Order"),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.all(15), children: [
          data != null
              ? tampilan(person: data!)
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tidak Ada List Order"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tambahapi()),
                          );
                        },
                        child: (Text("Tambah")),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          Coba? hasil = await Services.getById();

                          if (hasil != null) {
                            setState(() {
                              data = hasil;
                            });
                          }
                        },
                        child: Text("Tampil Api"),
                      ),
                    ],
                  ),
                )
        ]));
  }
}
