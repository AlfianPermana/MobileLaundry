import 'package:flutter/material.dart';
import 'package:pemandroid/Agenda_Laundry/pages/agenda_tambah_edit.dart';
import 'package:provider/provider.dart';
import 'package:pemandroid/Agenda_Laundry/services/agenda_service.dart';

class List_Agenda extends StatelessWidget {
  const List_Agenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Laundry"),
        centerTitle: true,
      ),
      body:
          Consumer<AgendaProvider>(builder: ((context, agendaProvider, child) {
        return ListView(
            padding: EdgeInsets.all(15),
            children: agendaProvider.listagenda.isNotEmpty
                ? agendaProvider.listagenda.map((agenda) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: 400,
                        height: 300,
                        color: Colors.blue.shade400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 5,
                              ),
                              child: Text(
                                "Agenda Laundry",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Tanggal/Hari : " + agenda.tanggal,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Tempat Laundry : " + agenda.tempat,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Catatan : " + agenda.catatan_cucian,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: ElevatedButton(
                                    child: Text("Hapus"),
                                    onPressed: () {
                                      Provider.of<AgendaProvider>(context,
                                              listen: false)
                                          .hapus(agenda);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: ElevatedButton(
                                    child: Text("Update"),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => tambahedit(
                                                  agenda: agenda,
                                                )),
                                      );
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList()
                : [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Tidak Ada Agenda"),
                        ],
                      ),
                    )
                  ]);
      })),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => tambahedit()),
          );
        },
        child: Text("Tambah"),
      ),
    );
  }
}
