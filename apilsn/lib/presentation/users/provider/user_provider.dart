import 'package:apilsn/data/api_service.dart';
import 'package:flutter/widgets.dart';

class UserProvider extends ChangeNotifier {
  List data = [];
  bool isLoading = false;

  void getDataUser() async {
    isLoading = true;
    notifyListeners();

    data = await ApiService().getUsers();

    isLoading = false;
    notifyListeners();
  }
}
