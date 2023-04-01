import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nauggets/models/user_model.dart';

class AuthRepository {
  final String _baseUrl = "https://reqres.in/";

  Future<UserModel> getUser() async {
    final response = await http.get(Uri.parse(_baseUrl));
    final body = response.body;
    final json = jsonDecode(body);
    if (response.statusCode == 200) {
          print("success");
      return UserModel.fromJson(json);
  
    } else {
      throw Exception("Failed ");
    }
  }
}
