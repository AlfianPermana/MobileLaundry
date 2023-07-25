import 'package:flutter/material.dart';
import 'package:pemandroid/DataApi.dart';
import 'package:pemandroid/apipublic.dart';
import 'package:pemandroid/cek.dart';
import 'package:pemandroid/cobadata.dart';

class tampilan extends StatelessWidget {
  final Coba person;
  const tampilan({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.lightBlue[100]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                width: 220,
                child: Container(
                  width: 500,
                  height: 100,
                  child: Image(
                    image: NetworkImage(person.message),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person.status}'))
            ],
          ),
        ],
      ),
    );
  }
}
