import 'package:flutter/widgets.dart';

class TriangleProvider extends ChangeNotifier {
  double result = 0;

  void calculate(double alas, tinggi) {
    result = 1 / 2 * alas * tinggi;
    notifyListeners();
  }
}
