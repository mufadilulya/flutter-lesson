import 'package:flutter/material.dart';

class TodolistProvider extends ChangeNotifier {
  List<String> todo = ['Hadil', 'Basuki'];

  void addData(String data) {
    todo.add(data);
    notifyListeners();
  }

  void removeData(int index) {
    todo.removeAt(index);
    notifyListeners();
  }
}
