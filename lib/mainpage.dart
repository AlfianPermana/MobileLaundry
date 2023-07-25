import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pemandroid/page1.dart';
import 'package:pemandroid/tampilanApi.dart';
import 'package:pemandroid/listdata.dart';
import 'package:pemandroid/Agenda_Laundry/pages/list_agenda.dart';

class page_utama extends StatefulWidget {
  page_utama({Key? key}) : super(key: key);

  @override
  State<page_utama> createState() => _page_utamaState();
}

class _page_utamaState extends State<page_utama> {
  List<Jenis> listatas = [
    Jenis(
        judul: "Baju",
        logo:
            "https://lh5.googleusercontent.com/proxy/KBqM60qiuJs8JgjFJjitGxZ21RdiO6uEeN-yhSNpbDXqd5vY4MFFvYeLvI2_Uy5CZs1gh4BfQyWABy9RlcmaCFDGq2dlxnI23EryiHKaDLba1YHIFLih=w1200-h630-p-k-no-nu"),
    Jenis(
        judul: "Bedder",
        logo: "http://cdn.onlinewebfonts.com/svg/img_271192.png"),
    Jenis(
        judul: "Sepatu",
        logo:
            "https://pngimage.net/wp-content/uploads/2018/06/gambar-sepatu-png-3.png"),
    Jenis(
        judul: "Sofa",
        logo: "http://cdn.onlinewebfonts.com/svg/img_409825.png"),
    Jenis(
        judul: "Karpet",
        logo:
            "https://cdn3.iconfinder.com/data/icons/camping-7/1814/Camping-hump-mat-carpet-camp-floormath-matting-512.png"),
    Jenis(
        judul: "Other Stuff",
        logo:
            "https://2.bp.blogspot.com/-jj7x8jxDuWI/WOZRSsVKtmI/AAAAAAAAAtg/Z9EI_1esQ3Ufqin2fYksLtT42bbqoCNzQCLcB/s1600/washing-machine.png")
  ];

  List<Outlet> listoutlet = [
    Outlet(
        nama: "Kliklink",
        alamat: "Triwung (Triwung), Probolinggo, Jawa Timur",
        rating: "4.6",
        gambar: "https://kliknklin.co/assets/images/brand-logo-white.png"),
    Outlet(
        nama: "Omah Wangi",
        alamat:
            "Jl. Gatot Subroto no. 87,Kec. Kanigaran, Kota Probolinggo,Jawa Timur",
        rating: "4.4",
        gambar:
            "https://www.omahwangi.com/wp-content/uploads/2020/06/logo-01-1.png"),
    Outlet(
        nama: "Harum Wangi and Dry Clean",
        alamat:
            "Perum Kopian Indah, Jalan Argopuro 18 kav. 4/5, Ketapang, Probolinggo, Jawa Timur",
        rating: "4.8",
        gambar:
            "https://www.harumlaundry.com/wp-content/uploads/2019/05/Logo-Harum-Laundry-Web.png"),
    Outlet(
        nama: "SimplyFresh",
        alamat: "Jl. HOS Cokroaminoto 48, Probolinggo, Jawa Timur, Indonesia",
        rating: "4.6",
        gambar:
            "https://www.simplyfreshlaundry.com/wp-content/uploads/SFL-3.png"),
    Outlet(
        nama: "DCS Wash",
        alamat: "Jl. HOS Cokroaminoto no.112, Kota Probolinggo, Jawa Timur",
        rating: "4.5",
        gambar: "https://clipartcraft.com/images/laundry-clipart-logo-2.png"),
    Outlet(
        nama: "Kenz Laundry",
        alamat:
            "Perum Kalirejo A29 (Dringu), Kabupaten Probolinggo, Jawa Timur",
        rating: "4.8",
        gambar:
            "https://lh3.googleusercontent.com/p/AF1QipMas-AcRrJH2OfOYVCz2vYLEs_n7nnv_zn7mWBD=w1080-h608-p-no-v0"),
    Outlet(
        nama: "Top Laundry",
        alamat: "Jalan Pakuniran (Pertelon Paiton), Probolinggo, Jawa Timur",
        rating: "4.7",
        gambar:
            "https://www.topcleanlaundry.com/wp-content/uploads/2021/04/Text-Top-Laundry-1.png"),
  ];

  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Laundry Online",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(65, 105, 225, 100)),
              child: Text(
                "Welcome ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house_outlined),
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => halaman1()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "Accounts",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notification_add_outlined),
              title: Text(
                "Notifications",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(
                "Order",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tampilanApi()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                "Agenda Laundry",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => List_Agenda()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(65, 105, 225, 100)),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listatas.length,
                itemBuilder: (context, index) {
                  Jenis jenis = listatas[index];
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Image(
                              image: NetworkImage(jenis.logo),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            jenis.judul,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Outlet Nearby : ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            )),
        Expanded(
            child: ListView.builder(
                itemCount: listoutlet.length,
                itemBuilder: (context, index) {
                  Outlet outlet = listoutlet[index];
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        height: 150,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(-4, -4),
                              )
                            ]),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    outlet.nama,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        outlet.rating,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 250,
                                height: 50,
                                child: Image(
                                  image: NetworkImage(outlet.gambar),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                outlet.alamat,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        )),
                  );
                }))
      ]),
    );
  }
}
