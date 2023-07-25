import 'package:flutter/material.dart';
import 'package:pemandroid/Agenda_Laundry/models/agenda_models.dart';

class AgendaProvider with ChangeNotifier {
  List<agenda_models> _listagenda = [];

  List<agenda_models> get listagenda => _listagenda;

  void tambah(agenda_models agenda) {
    _listagenda.add(agenda);
    notifyListeners();
  }

  void hapus(agenda_models agenda) {
    _listagenda = _listagenda.where((data) => data.id != agenda.id).toList();
    notifyListeners();
  }

  void update(agenda_models agenda) {
    _listagenda[_listagenda.indexWhere((data) => data.id == agenda.id)] =
        agenda;
    notifyListeners();
  }
}
