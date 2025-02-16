import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List> getUsers() async {
    var response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/users'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load user data");
    }
  }
}
