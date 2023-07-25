import 'package:flutter/material.dart';
import 'package:pemandroid/page2.dart';
import 'package:pemandroid/TextField.dart';

class halaman1 extends StatefulWidget {
  @override
  State<halaman1> createState() => _halaman1State();
}

class _halaman1State extends State<halaman1> {
  String _string = "";
  String jenis = "";
  int total = 0;
  int JT = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white24,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.okezone.com/content/2017/07/14/196/1736250/tak-perlu-ke-laundry-buat-pakaian-tetap-putih-dengan-lemon-dan-garam-XqnResoj3i.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 160,
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 5.0, offset: Offset(0, 5))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Detail Alamat :",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green))),
                    ),
                    CostumeTextField(
                      onChanged: (String value) {
                        setState(() => _string = value);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 71,
              top: 330,
              child: Container(
                color: Colors.white,
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Express",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Cuci Kiloan dan Exspress hanya untuk pakaian yang bisa masuk ke dalam mesin cuci pengering.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            JT += 18000;
                            total = JT + 10000;
                            jenis = "Cuci Kering";
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cuci Kering",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Rp.18.000/kiloan",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              width: 45,
                              height: 50,
                              color: Colors.black54,
                              child: Column(
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                  Text(
                                    "Jam",
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            JT += 20000;
                            jenis = "Cuci Kering Setrika";
                            total = JT + 10000;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cuci Kering Setrika",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Rp.20.000/kiloan",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              width: 45,
                              height: 50,
                              color: Colors.black54,
                              child: Column(
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                  Text(
                                    "Jam",
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            JT += 8000;
                            jenis = "Setrika Ekspress";
                            total = JT + 10000;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Setrika Ekspress",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Rp.8.000/kiloan",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              width: 45,
                              height: 50,
                              color: Colors.black54,
                              child: Column(
                                children: [
                                  Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                  Text(
                                    "Jam",
                                    style: TextStyle(
                                        fontSize: 9, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              //top: 500,
              child: Container(
                width: double.maxFinite,
                height: 50,
                color: Colors.blueGrey,
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Laundry Bag",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Total : $total",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0, top: 0, bottom: 0),
                        child: ElevatedButton(
                            onPressed: () async {
                              final result = await Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => halaman2(
                                          alamat: _string,
                                          JT2: JT,
                                          total2: total,
                                          jenis2: jenis,
                                        )),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Pesan Sekarang",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
