import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pemandroid/Agenda_Laundry/models/agenda_models.dart';
import 'package:pemandroid/Agenda_Laundry/services/agenda_service.dart';
import 'package:uuid/uuid.dart';

class tambahedit extends StatelessWidget {
  final agenda_models? agenda;
  const tambahedit({Key? key, this.agenda}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _tanggalcontroller = TextEditingController();
    TextEditingController _tempatcontroller = TextEditingController();
    TextEditingController _catatancontroller = TextEditingController();

    if (agenda != null) {
      _tanggalcontroller.text = agenda!.tanggal;
      _tempatcontroller.text = agenda!.tempat;
      _catatancontroller.text = agenda!.catatan_cucian;
    }

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
                    controller: _tanggalcontroller,
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
                    controller: _tempatcontroller,
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
                    controller: _catatancontroller,
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
                        onPressed: () {
                          if (agenda != null) {
                            Provider.of<AgendaProvider>(context, listen: false)
                                .update(
                              agenda_models(
                                  id: agenda!.id,
                                  tanggal: _tanggalcontroller.text,
                                  tempat: _tempatcontroller.text,
                                  catatan_cucian: _catatancontroller.text),
                            );
                          } else {
                            const uuid = Uuid();

                            Provider.of<AgendaProvider>(context, listen: false)
                                .tambah(agenda_models(
                                    id: uuid.v4(),
                                    tanggal: _tanggalcontroller.text,
                                    tempat: _tempatcontroller.text,
                                    catatan_cucian: _catatancontroller.text));
                          }
                          Navigator.pop(context);
                        },
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
